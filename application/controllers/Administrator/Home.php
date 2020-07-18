<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();

		if ($this->session->userdata('uname')==""){
			redirect('Auth');
		}else if ($this->session->userdata('userlevel')<>"ADMIN"){
			redirect('Auth');
		}
    }

	public function index()
	{
		$data['jadwal'] = $this->db->get_where("tb_ujian", array('status'=>'aktif'))->num_rows();
        $data['bayar'] = $this->db->get_where("tb_peserta_ujian", array('validate'=>'false'))->num_rows();
        $data['nilai'] = $this->db->select("tb_ujian.id_ujian")->from("tb_ujian")->join("tb_nilai","tb_nilai.id_ujian=tb_ujian.id_ujian")->where("tb_nilai.status","false")->group_by("tb_ujian.id_ujian")->get()->num_rows();
		$data['content'] = 'admin/home';
		$this->load->view('_layouts/main_v',$data);
	}

	public function ubah_password()
	{
		$data['content'] = 'admin/ubah_pw';
		$this->load->view('_layouts/main_v',$data);
	}

	public function save_pw(){
    	if(isset($_POST) && !empty($_POST)){
            $id = $this->session->userdata('id_user');
            $oldpw = $this->input->post('old_pass');
            $newpas = $this->input->post('new_pass');
            $confirm = $this->input->post('confirm_new_pass');
            $cek = $this->db->query("SELECT * FROM tb_users WHERE id_user='$id' ");
            foreach($cek->result() as $old){
                $pwlama = $old->password;
            }

            if(md5($oldpw)<>$pwlama){
            	$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                        <h4><i class='icon fa fa-warning'></i> Failed!</h4>
                        Password Lama Salah !
                    </div>");
            	header('location:'.base_url().'Administrator/Home/ubah_password');
            }else{
                if($newpas<>$confirm){
                	$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                            <h4><i class='icon fa fa-warning'></i> Failed!</h4>
                            Password Baru Dan Konfirmasi Password Baru Tidak Sama !
                        </div>");
                	header('location:'.base_url().'Administrator/Home/ubah_password');
                }else{
                    $where['id_user'] = $id;
                    $data['password'] = md5($newpas);
                    $this->db->update('tb_users',$data,$where);
                	$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                            <h4><i class='icon fa fa-check'></i> Success!</h4>
                            Password Anda Berhasil Diubah
                        </div>");
                	header('location:'.base_url().'Administrator/Home/ubah_password');
                }
            }
        }else $this->error();
    }
}
