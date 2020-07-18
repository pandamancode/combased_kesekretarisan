<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {

	function __construct(){
		parent::__construct();

		if ($this->session->userdata('logged_in')==false){
			redirect('login');
		}
	}

	public function index()
	{
		if($this->session->userdata('userlevel')=='MAHASISWA' || $this->session->userdata('userlevel')=='DOSEN' ){
			$this->session->unset_userdata('uname');
		    $this->session->unset_userdata('userlevel');
		    session_destroy();
		    redirect('login');
		}else{
			$this->session->unset_userdata('uname');
		    $this->session->unset_userdata('userlevel');
		    session_destroy();
		    redirect('Auth');
		}
	}
}