<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();

		if ($this->session->userdata('uname')==""){
			redirect('login');
		}else if ($this->session->userdata('userlevel')<>"MAHASISWA"){
			redirect('login');
		}
    }

    public function error(){
    	$this->load->view('index.html');
    }
    
	public function index()
	{
		$where['id_mhs'] = $this->session->userdata('idmhs');
		$data['mhs'] = $this->db->get_where("tb_mahasiswa",$where)->row();
		$data['content'] = 'mahasiswa/home';
		$this->load->view('_layouts/main_v',$data);
	}

	public function save_bio(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_mhs'] = $this->session->userdata('idmhs');
			$data = array(
					'nama_mhs' => $this->input->post('nama'),
					'tempatlahir_mhs' => $this->input->post('tempat'),
					'tgl_lahir' => $this->input->post('tgl'),
            		'jk' => $this->input->post('jk'),
                    'no_telp' => $this->input->post('telp'),
                    'email' => $this->input->post('email'),
				);
			$this->db->update("tb_mahasiswa",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Biodata
			            </div>");
			header('location:'.base_url().'Mahasiswa/Home');
		}else $this->error();
	}

	public function ubah_password()
	{
		$data['content'] = 'mahasiswa/ubah_pw';
		$this->load->view('_layouts/main_v',$data);
	}

	public function save_pw(){
    	if(isset($_POST) && !empty($_POST)){
            $idmhs = $this->session->userdata('idmhs');
            $oldpw = $this->input->post('old_pass');
            $newpas = $this->input->post('new_pass');
            $confirm = $this->input->post('confirm_new_pass');
            $cek = $this->db->query("SELECT * FROM tb_mahasiswa WHERE id_mhs='$idmhs' ");
            foreach($cek->result() as $old){
                $pwlama = $old->password;
            }

            if(md5($oldpw)<>$pwlama){
            	$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                        <h4><i class='icon fa fa-warning'></i> Failed!</h4>
                        Password Lama Salah !
                    </div>");
            	header('location:'.base_url().'Mahasiswa/Home/ubah_password');
            }else{
                if($newpas<>$confirm){
                	$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                            <h4><i class='icon fa fa-warning'></i> Failed!</h4>
                            Password Baru Dan Konfirmasi Password Baru Tidak Sama !
                        </div>");
                	header('location:'.base_url().'Mahasiswa/Home/ubah_password');
                }else{
                    $where['id_mhs'] = $idmhs;
                    $data['password'] = md5($newpas);
                    $this->db->update('tb_mahasiswa',$data,$where);
                	$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                            <h4><i class='icon fa fa-check'></i> Success!</h4>
                            Password Anda Berhasil Diubah
                        </div>");
                	header('location:'.base_url().'Mahasiswa/Home/ubah_password');
                }
            }
        }else $this->error();
    }
}
