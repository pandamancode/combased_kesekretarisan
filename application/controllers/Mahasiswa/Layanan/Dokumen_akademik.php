<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokumen_akademik extends CI_Controller {

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
		$data['dokumen'] = $this->db->get("tb_dokumen_layanan");
		$data['content'] = 'mahasiswa/layanan/dokumen/dokumen_v';
		$this->load->view('_layouts/main_v',$data);
	}

}