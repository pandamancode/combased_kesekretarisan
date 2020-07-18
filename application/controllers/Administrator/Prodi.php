<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prodi extends CI_Controller {

	function __construct(){
		parent::__construct();
    	if ($this->session->userdata('uname')==""){
			redirect('Auth');
		}else if ($this->session->userdata('userlevel')<>"ADMIN"){
			redirect('Auth');
		}
    }

	public function index(){
		$data['prodi'] = $this->db->select("*")->from("tb_prodi")->join("tb_fakultas","tb_fakultas.id_fakultas=tb_prodi.id_fakultas")->get();
		$data['content'] = 'admin/prodi/prodi_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function prodi_add(){
		$data['fakultas'] = $this->db->get("tb_fakultas");
		echo show_my_modal("admin/prodi/modal_add","md_add",$data);
	}

	public function store_prodi(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
					'id_prodi' => $this->input->post('kode'),
					'nama_prodi' => $this->input->post('nama'),
					'nama_prodi_Eng' => $this->input->post('eng'),
					'id_fakultas' => $this->input->post('fakultas'),
					'jenjang' => $this->input->post('jenjang'),
				);
			$this->db->insert("tb_prodi",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menambah Data Program Studi
			            </div>");
			header('location:'.base_url().'Administrator/Prodi');
		}else $this->error();
	}

	public function prodi_update(){
		$data['fakultas'] = $this->db->get("tb_fakultas");
		$where['id_prodi'] = $this->input->post('id');
		$data['prodi'] = $this->db->get_where("tb_prodi",$where)->row();
		echo show_my_modal("admin/prodi/modal_update","md_updt",$data);
	}

	public function update_prodi(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_prodi'] = $this->input->post('kode');
			$data = array(
					'nama_prodi' => $this->input->post('nama'),
					'nama_prodi_Eng' => $this->input->post('eng'),
					'id_fakultas' => $this->input->post('fakultas'),
					'jenjang' => $this->input->post('jenjang'),
				);
			$this->db->update("tb_prodi",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Data Program Studi
			            </div>");
			header('location:'.base_url().'Administrator/Prodi');
		}else $this->error();
	}

	public function prodi_hapus(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_prodi'] = $this->input->post('id');
			$this->db->delete("tb_prodi",$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Program Studi
			            </div>");
			header('location:'.base_url().'Administrator/Prodi');
		}else $this->error();
	}
}