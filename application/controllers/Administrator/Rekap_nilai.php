<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekap_nilai extends CI_Controller {

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
		$data['content'] = 'admin/rekap-nilai/filter';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter(){
		if(isset($_POST) && !empty($_POST)){
			$thn = $this->input->post('tahun');
			$where = "YEAR(tgl_ujian)='$thn' ";
			$data['jadwal'] = $this->db->get_where("tb_ujian",$where);
			$this->load->view('admin/rekap-nilai/data',$data);
		}else $this->error();
	}

	public function get_schedule($id){
		if(isset($id) && !empty($id)){
			$sess['id_sess_schedule'] = $id;
			$this->session->set_userdata($sess);
			$data['nilai'] = $this->db->get_where("tb_nilai",array('id_ujian'=>$id));
			$data['content'] = 'admin/rekap-nilai/nilai';
			$this->load->view('_layouts/main_v',$data);
		}
	}

	public function mod_ubahnilai(){
		$data['nilai'] = $this->db->get_where("tb_nilai",array('id_nilai'=>$this->input->post('id')))->row();
		echo show_my_modal("admin/rekap-nilai/modal_nilai","md_ubah",$data);
	}

	public function ubah_nilai(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_nilai'] = $this->input->post('id');
			$nilai = $this->input->post('nilai');
			$grade = $this->input->post('grade');
			if($nilai>=$grade){
	    		$hm="A";
	    		$ket="Lulus";
	    	}else{
	    		$hm="TL";
	    		$ket="Tidak Lulus";
	    	}

	    	$data = array(
	    		'nilai' => $nilai,
	    		'huruf_mutu' => $hm,
	    		'keterangan' => $ket,
	    		'last_update' => $this->session->userdata('name').'['.date('Y-m-d').']',
	    	);
	    	$this->db->update("tb_nilai",$data,$where);
	    	$this->session->set_flashdata("msg","success");
			header('location:'.base_url().'Administrator/Rekap_nilai/get_schedule/'.$this->session->userdata('id_sess_schedule'));
    	}else $this->error();
	}

}