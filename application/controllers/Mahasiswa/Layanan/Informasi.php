<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informasi extends CI_Controller {

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
		$data['info'] = $this->db->select("*")->from("tb_informasi_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_informasi_layanan.id_kategori")->get();
		$data['content'] = 'mahasiswa/layanan/informasi/informasi_v';
		$this->load->view('_layouts/main_v',$data);
	}

}