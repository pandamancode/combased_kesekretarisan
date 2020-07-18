<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_jadwal extends CI_Controller {

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
		$data['jadwal'] = $this->db->get_where("tb_ujian",array('status'=>'aktif'));
		$data['content'] = 'admin/buat-jadwal/buat_jadwal_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function add(){
		$data['dosen'] = $this->db->get('tb_dosen');
		$data['matauji'] = $this->db->get('tb_matauji');
		echo show_my_modal("admin/buat-jadwal/modal_add","md_add",$data);
	}

	public function store(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
					'id_matauji' => $this->input->post('id_matauji'),
					'kelompok' => $this->input->post('kelompok'),
					'id_dosen' => $this->input->post('id_dosen'),
					'tgl_ujian' => date('Y-m-d',strtotime($this->input->post('tgl_ujian'))),
					'pukul' => $this->input->post('pukul'),
					'ruang' => $this->input->post('ruang'),
					'kuota' => $this->input->post('kuota'),
				);
			$this->db->insert("tb_ujian",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menambah Data Jadwal
			            </div>");
			header('location:'.base_url().'Administrator/Buat_jadwal');
		}else $this->error();
	}

	public function update(){
		$data['jadwal'] = $this->db->get_where("tb_ujian",array('id_ujian'=>$this->input->post('id')))->row();
		$data['dosen'] = $this->db->get('tb_dosen');
		$data['matauji'] = $this->db->get('tb_matauji');
		echo show_my_modal("admin/buat-jadwal/modal_update","md_updt",$data);
	}

	public function update_proses(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_ujian'] = $this->input->post('id'); 
			$data = array(
					'id_matauji' => $this->input->post('id_matauji'),
					'kelompok' => $this->input->post('kelompok'),
					'id_dosen' => $this->input->post('id_dosen'),
					'tgl_ujian' => date('Y-m-d',strtotime($this->input->post('tgl_ujian'))),
					'pukul' => $this->input->post('pukul'),
					'ruang' => $this->input->post('ruang'),
					'kuota' => $this->input->post('kuota'),
				);
			$this->db->update("tb_ujian",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Merubah Data Jadwal
			            </div>");
			header('location:'.base_url().'Administrator/Buat_jadwal');
		}else $this->error();
	}

	public function hapus(){
		if(isset($_POST) && !empty($_POST)){
			$this->db->delete("tb_ujian",array('id_ujian'=>$this->input->post('id')));
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Menghapus Data Jadwal
			            </div>");
			header('location:'.base_url().'Administrator/Buat_jadwal');
		}else $this->error();	
	}
}