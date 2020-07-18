<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Dosen extends CI_Controller {

	function __construct(){
		parent::__construct();
    	if ($this->session->userdata('uname')==""){
			redirect('Auth');
		}else if ($this->session->userdata('userlevel')<>"ADMIN"){
			redirect('Auth');
		}
    }

	public function error(){
    	$this->load->view('index.html');
    }

    public function index()
	{
		$data['dosen'] = $this->db->get("tb_dosen");
		$data['content'] = 'admin/dosen/data';
		$this->load->view('_layouts/main_v',$data);
	}


	public function resetpw_dosen(){
		$kode = rdmstr(8);
		$where['nik'] = $this->input->post('id');
		$data['kode'] = $kode;
		$simpan['password'] =md5($kode);
		$query = $this->db->get_where("tb_dosen",array("nik"=>$this->input->post('id')));
		//foreach($query->num_rows()>0){
			$data['dosen'] = $query->row();
		//}
		$this->db->update("tb_dosen",$simpan,$where);
		echo show_my_modal("admin/dosen/reset_pw","show-pw",$data);
	}

	public function add(){
		echo show_my_modal("admin/dosen/modal_add","md-add");
	}

    public function update(){
        $data['dosen'] = $this->db->get_where("tb_dosen",array('id_dosen'=>$this->input->post('id')))->row();
        echo show_my_modal("admin/dosen/modal_update","md-update",$data);
    }

	public function store(){
    	if(isset($_POST) && !empty($_POST)){
    		$data = $this->input->post();
        	$where['nik'] = $data['nik'];
        	$cek = $this->db->get_where("tb_dosen",$where);
        	if($cek->num_rows()>0){
            	$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
                	<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                	<h4><i class='icon fa fa-warning'></i> Failed!</h4>
               		NIK Sudah Ada!
            	</div>");
            }else{
            	$pw = md5($data['password']);
            	$nik = $data['nik'];
        		$this->db->insert("tb_dosen",$data);
            	$this->db->query("UPDATE tb_dosen SET password='$pw' WHERE nik='$nik' ");
            	$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                	<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                	<h4><i class='icon fa fa-check'></i> Success!</h4>
               		Data Mahasiswa Berhasil Disimpan
            	</div>");
            }
            header('location:'.base_url().'Administrator/Dosen');
        }else $this->error();

    }

    public function update_prosess(){
        if(isset($_POST) && !empty($_POST)){
            $data = array(
                'nik' => $this->input->post('nik'),
                'nama_dosen' => $this->input->post('nama_dosen'),
                'no_telp' => $this->input->post('no_telp'),
            );
            $this->db->update("tb_dosen",$data,array('id_dosen'=>$this->input->post('id')));
            $this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                <h4><i class='icon fa fa-check'></i> Success!</h4>
                Data Mahasiswa Berhasil Diubah
            </div>");
            header('location:'.base_url().'Administrator/Dosen');
        }else $this->error();

    }

	public function delete(){
    	if(isset($_POST) && !empty($_POST)){
        	$where['id_dosen'] = $this->input->post('id');
    		$this->db->delete("tb_dosen",$where);
        	$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                            <h4><i class='icon fa fa-check'></i> Success!</h4>
                            Berhasil Menghapus Data Dosen
                        </div>");
			header('location:'.base_url().'Administrator/Dosen');
        }else $this->error();
    }
}