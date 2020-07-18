<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengambilan_atributpkl extends CI_Controller {

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
    
	public function index()
	{
		$data['pengajuan'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_periode_pkl","tb_periode_pkl.id_periode=tb_pkl.id_periode")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->where("tb_mahasiswa.id_mhs",$this->session->userdata('idmhs'))->get();
		$data['content'] = 'mahasiswa/pkl/atribut_v';
		$this->load->view('_layouts/main_v',$data);
	}

}