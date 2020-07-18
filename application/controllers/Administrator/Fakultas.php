<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fakultas extends CI_Controller {

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
		$data['fakultas'] = $this->db->get("tb_fakultas");
		$data['content'] = 'admin/fakultas/fakultas_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function fakultas_add(){
		echo show_my_modal("admin/fakultas/modal_add","md_add");
	}

	public function store_fakultas(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
					'nama_fakultas' => $this->input->post('nama'),
					'namafak_English' => $this->input->post('eng'),
					'singkatan' => $this->input->post('singkat'),
				);
			$this->db->insert("tb_fakultas",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menambah Data Fakultas
			            </div>");
			header('location:'.base_url().'Administrator/Fakultas');
		}else $this->error();
	}

	public function fakultas_update(){
		$where['id_fakultas'] = $this->input->post('id');
		$data['fakultas'] = $this->db->get_where("tb_fakultas",$where)->row();
		echo show_my_modal("admin/fakultas/modal_update","md_updt",$data);
	}

	public function update_fakultas(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_fakultas'] = $this->input->post('idfak');
			$data = array(
					'nama_fakultas' => $this->input->post('nama'),
					'namafak_English' => $this->input->post('eng'),
					'singkatan' => $this->input->post('singkat'),
				);
			$this->db->update("tb_fakultas",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Data Fakultas
			            </div>");
			header('location:'.base_url().'Administrator/Fakultas');
		}else $this->error();
	}

	public function fakultas_hapus(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_fakultas'] = $this->input->post('id');
			$this->db->delete("tb_fakultas",$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Fakultas
			            </div>");
			header('location:'.base_url().'Administrator/Fakultas');
		}else $this->error();
	}
}
