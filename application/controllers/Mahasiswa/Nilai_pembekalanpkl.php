<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai_pembekalanpkl extends CI_Controller {

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
		$data['nilai'] = $this->db->select("*")->from("tb_ujian_pembekalanpkl")->join("tb_matauji_pembekalan_pkl","tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_ujian_pembekalanpkl.id_ujipembekalan")->where("tb_ujian_pembekalanpkl.id_mhs",$this->session->userdata('idmhs'))->get();
		$data['content'] = 'mahasiswa/pkl/nilaipembekalan_v';
		$this->load->view('_layouts/main_v',$data);
	}
}