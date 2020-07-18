<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Koordinator extends CI_Controller {

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
		$data['koordinator'] = $this->db->select("*")->from("tb_koordinator")->join("tb_dosen","tb_dosen.id_dosen=tb_koordinator.id_dosen")->get();
		$data['content'] = 'admin/koordinator/koordinator_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function add(){
		$data['dosen'] = $this->db->get("tb_dosen");
		echo show_my_modal("admin/koordinator/modal_add","md_add",$data);
	}

	public function store(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
					'id_dosen' => $this->input->post('dosen'),
					'status' => $this->input->post('status'),
				);
			$this->db->insert("tb_koordinator",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menambah Data Koordinator
			            </div>");
			header('location:'.base_url().'Administrator/Koordinator');
		}else $this->error();
	}

	public function update(){
		$data['dosen'] = $this->db->get("tb_dosen");
		$where['id_koordinator'] = $this->input->post('id');
		$data['koordinator'] = $this->db->get_where("tb_koordinator",$where)->row();
		echo show_my_modal("admin/koordinator/modal_update","md_updt",$data);
	}

	public function update_proses(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_koordinator'] = $this->input->post('id');
			$data = array(
					'id_dosen' => $this->input->post('dosen'),
					'status' => $this->input->post('status'),
				);
			$this->db->update("tb_koordinator",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Data Koordinator
			            </div>");
			header('location:'.base_url().'Administrator/Koordinator');
		}else $this->error();
	}

	public function hapus(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_koordinator'] = $this->input->post('id');
			$this->db->delete("tb_koordinator",$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Koordinator
			            </div>");
			header('location:'.base_url().'Administrator/Koordinator');
		}else $this->error();
	}
}
