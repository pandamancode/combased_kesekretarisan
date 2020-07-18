<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class History extends CI_Controller {

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
		$data['nilai'] = $this->db->get_where("tb_nilai",array('status'=>'true', 'npm'=>$this->session->userdata('uname')));
		$data['content'] = 'mahasiswa/history_v';
		$this->load->view('_layouts/main_v',$data);
	}

}