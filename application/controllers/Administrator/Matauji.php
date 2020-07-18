<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Matauji extends CI_Controller {

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
		$data['matauji'] = $this->db->get("tb_matauji");
		$data['content'] = 'admin/matauji/matauji_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function add(){
		echo show_my_modal("admin/matauji/modal_add","md_add");
	}

	public function store(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
					'nama_matauji' => $this->input->post('nama_matauji'),
					'harga' => $this->input->post('harga'),
					'grade_nilai' => $this->input->post('grade_nilai'),
				);
			$this->db->insert("tb_matauji",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menambah Data Matauji
			            </div>");
			header('location:'.base_url().'Administrator/Matauji');
		}else $this->error();
	}

	public function update(){
		$where['id_matauji'] = $this->input->post('id');
		$data['matauji'] = $this->db->get_where("tb_matauji",$where)->row();
		echo show_my_modal("admin/matauji/modal_update","md_updt",$data);
	}

	public function update_proses(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_matauji'] = $this->input->post('id');
			$data = array(
					'nama_matauji' => $this->input->post('nama_matauji'),
					'harga' => $this->input->post('harga'),
					'grade_nilai' => $this->input->post('grade_nilai'),
				);
			$this->db->update("tb_matauji",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Data Matauji
			            </div>");
			header('location:'.base_url().'Administrator/Matauji');
		}else $this->error();
	}

	public function hapus(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_matauji'] = $this->input->post('id');
			$this->db->delete("tb_matauji",$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Matauji
			            </div>");
			header('location:'.base_url().'Administrator/Matauji');
		}else $this->error();
	}
}
