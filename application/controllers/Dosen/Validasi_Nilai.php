<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Validasi_Nilai extends CI_Controller {

	function __construct(){
		parent::__construct();
		if ($this->session->userdata('uname')==""){
			redirect('login');
		}else if ($this->session->userdata('userlevel')<>"DOSEN"){
			redirect('login');
		}else if(is_koordinator($this->session->userdata('id_dosen'))<>'TRUE'){
			redirect('Dosen/Home');
		}

    }

    public function error(){
    	$this->load->view('index.html');
    }

    public function index(){
    	$data['jadwal'] = $this->db->select("*")->from("tb_ujian")->join("tb_nilai","tb_nilai.id_ujian=tb_ujian.id_ujian")->where("tb_nilai.status","false")->group_by("tb_ujian.id_ujian")->get();
    	//$data['jadwal'] = $this->db->get_where("tb_ujian",array('status'=>'non-aktif','id_dosen'=>$this->session->userdata('id_dosen')));
    	$data['content'] = 'dosen/validasi-nilai/history_v';
		$this->load->view('_layouts/main_v',$data);
    }
    
	public function nilai($id)
	{
		if(isset($id) && !empty($id)){
			$cek = $this->db->get_where("tb_nilai",array('id_ujian'=>$id));
			if($cek->num_rows()>0){
				//define variable
				$data['id_ujian'] = $id;
				$id_matauji = $cek->row()->id_matauji;
				$data['id_dosen'] = $cek->row()->id_dosen;  
				$data['matauji'] = $this->db->get_where("tb_matauji",array('id_matauji'=>$id_matauji))->row();
				$data['peserta'] = $this->db->get_where("tb_nilai",array('id_ujian'=>$id));
				$data['content'] = 'dosen/validasi-nilai/nilai';
				$this->load->view('_layouts/main_v',$data);
			}else{
				$this->session->set_flashdata("msg","error");
				header('location:'.base_url().'Dosen/Validasi_Nilai');
			}
		}else $this->error();
	}

	public function validasi($id)
	{
		if(isset($id) && !empty($id)){
			$where['id_ujian'] = $id;
			$data['status'] = 'true';
			$this->db->update("tb_nilai",$data,$where);
			$this->session->set_flashdata("msg","success");
			header('location:'.base_url().'Dosen/Validasi_Nilai');
		}else $this->error();
	}

}