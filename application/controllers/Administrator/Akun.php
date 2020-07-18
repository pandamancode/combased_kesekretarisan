<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller {

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
		$data['akun'] = $this->db->select("*")->from("tb_staff")->join("tb_users","tb_users.id_staff=tb_staff.id_staff")->join("tb_role","tb_role.id_role=tb_users.id_role")->get();
		$data['content'] = 'admin/akun/akun_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function add(){
		$data['staff'] = $this->db->get("tb_staff");
		$data['role'] = $this->db->get("tb_role");
		echo show_my_modal("admin/akun/modal_add","md_add",$data);
	}

	public function store(){
		if(isset($_POST) && !empty($_POST)){
			//Cek Akun
			$where['id_staff'] = $this->input->post('staff');
			$cek = $this->db->get_where("tb_users",$where);
			if($cek->num_rows()>0){
				$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
				                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
				                Akun Sudah Ada!
				            </div>");
			}else{
				//Cek Username
				$where_uname['username'] = $this->input->post('username');
				$cek_uname = $this->db->get_where("tb_users",$where_uname);
				if($cek_uname->num_rows()>0){
					$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
					                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
					                Username Telah Digunakan Pengguna Lain!
					            </div>");
				}else{
					$data = array(
							'id_staff' => $this->input->post('staff'),
							'username' => $this->input->post('username'),
							'password' => md5($this->input->post('password')),
							'id_role' => $this->input->post('level'),
						);
					$this->db->insert("tb_users",$data);
					$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
					                <h4><i class='icon fa fa-check'></i> Success!</h4>
					                Berhasil Menambah Akun Pengguna
					            </div>");
				}
			}
			header('location:'.base_url().'Administrator/Akun');
		}else $this->error();
	}

	public function update(){
		$where['id_user'] = $this->input->post('id');
		$data['password'] = md5('123');
		$this->db->update("tb_users",$data,$where);
		echo "<div class='alert alert-success alert-dismissible'>
                <h4><i class='icon fa fa-check'></i> Success!</h4>
                Password sudah direset ke default <b style='color:red;font-size:14pt;'>123</b>
            </div>";
	}

	public function hapus(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_user'] = $this->input->post('id');
			$this->db->delete("tb_users",$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Akun Pengguna
			            </div>");
			header('location:'.base_url().'Administrator/Akun');
		}else $this->error();
	}
}
