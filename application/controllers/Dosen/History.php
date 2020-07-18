<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class History extends CI_Controller {

	function __construct(){
		parent::__construct();
		if ($this->session->userdata('uname')==""){
			redirect('login');
		}else if ($this->session->userdata('userlevel')<>"DOSEN"){
			redirect('login');
		}

    }

    public function error(){
    	$this->load->view('index.html');
    }

    public function index(){
    	$data['jadwal'] = $this->db->get_where("tb_ujian",array('status'=>'non-aktif','id_dosen'=>$this->session->userdata('id_dosen')));
    	$data['content'] = 'dosen/history/history_v';
		$this->load->view('_layouts/main_v',$data);
    }
    
	public function nilai($id)
	{
		if(isset($id) && !empty($id)){
			$cek = $this->db->get_where("tb_nilai",array('id_ujian'=>$id));
			if($cek->num_rows()>0){
				//define variable
				$id_matauji = $cek->row()->id_matauji;
				$data['id_dosen'] = $cek->row()->id_dosen;  
				$data['matauji'] = $this->db->get_where("tb_matauji",array('id_matauji'=>$id_matauji))->row();
				$data['peserta'] = $this->db->get_where("tb_nilai",array('id_ujian'=>$id));
				$data['content'] = 'dosen/history/nilai';
				$this->load->view('_layouts/main_v',$data);
			}else{
				$this->session->set_flashdata("msg","error");
				header('location:'.base_url().'Dosen/History');
			}
		}else $this->error();
	}

}