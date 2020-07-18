<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reg_seminarpkl extends CI_Controller {

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

    public function index(){
    	$data['seminar'] = $this->db->select("*")->from("tb_pengajuan_seminar")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pengajuan_seminar.id_mhs")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pengajuan_seminar.kd_perusahaan")->join("tb_ruangan","tb_ruangan.id_ruangan=tb_pengajuan_seminar.id_ruangan")->where("tb_mahasiswa.id_mhs",$this->session->userdata('idmhs'))->get();
		$data['content'] = 'mahasiswa/pkl/seminar_reg_v';
		$this->load->view('_layouts/main_v',$data);
    }

    public function reg_add(){
		$data['ruang'] = $this->db->get("tb_ruangan");
		$data['gedung'] = $this->db->get("tb_gedung");
		$where['id_mhs'] = $this->session->userdata('idmhs');
		$cek = $this->db->get_where("tb_pkl",$where);
		if($cek->num_rows()>0){
		//cek kelompok
			$kdp = $cek->row()->kd_perusahaan;
			$idp = $cek->row()->id_periode;
			$data['kelompok'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->where("tb_mahasiswa.id_prodi",$this->session->userdata('id_prodi'))->where("tb_pkl.kd_perusahaan",$kdp)->where("tb_pkl.id_periode",$idp)->get();
			echo show_my_modal("mahasiswa/pkl/modal_seminar","md_add",$data);
		}
    }

    public function Ajukanpendaftaran(){
    	if(isset($_POST) && !empty($_POST)){
    		$where['id_mhs'] = $this->session->userdata('idmhs');
			$cek = $this->db->get_where("tb_pengajuan_seminar",$where);    		
    		if($cek->num_rows()>0){
    			$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
		                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
		                Anda Sudah Pernah Mengajukan Seminar PKL
		            </div>");
    		}else{
	    		$kelompok = date('YmdHis');
	    		foreach($_POST['id_mhs'] as $tag => $val){
	    			$id_mhs = $_POST['id_mhs'][$tag];

	    			$data = array(
		    			'id_mhs' => $id_mhs,
		    			'tanggal_seminar' => $this->input->post('tanggal'),
		    			'tanggal_pengajuan' => date('Y-m-d'),
		    			'kd_perusahaan' => $this->input->post('kd_perusahaan'),
		    			'status' => 'diajukan',
		    			'pukul_seminar' => $this->input->post('pukul'),
		    			'id_ruangan' => $this->input->post('ruang'),
		    			'gen_kelompok' => $kelompok,
		    		);
		    		$this->db->insert("tb_pengajuan_seminar",$data);
	    		}
	    		
	    		$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
		                <h4><i class='icon fa fa-check'></i> Success!</h4>
		                Berhasil Mengajukan Seminar PKL
		            </div>");
    		}
    		redirect('Mahasiswa/Reg_seminarpkl');
    	}else $this->error();
    }


}