<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekap_mengawas extends CI_Controller {

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
		$data['content'] = 'admin/rekap-mengawas/filter';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter(){
		if(isset($_POST) && !empty($_POST)){
			$tgl1 = $this->input->post('tgl1');
			$tgl2 = $this->input->post('tgl2');
			$data['tgl1'] = $tgl1;
			$data['tgl2'] = $tgl2;
			$where = "tgl_penilaian BETWEEN '$tgl1' AND '$tgl2' GROUP BY id_dosen";
			
			$data['pengawas'] = $this->db->get_where("tb_nilai",$where);
			
			$this->load->view('admin/rekap-mengawas/data',$data);
		}else $this->error();
	}

	public function cetak(){
		if(isset($_POST) && !empty($_POST)){
			$data['title'] = "REKAP JUMLAH MENGAWAS KESEKRETARISAN";
			$tgl1 = $this->input->post('tgl1');
			$tgl2 = $this->input->post('tgl2');
			$data['tgl1'] = $tgl1;
			$data['tgl2'] = $tgl2;
			$where = "tb_nilai.tgl_penilaian BETWEEN '$tgl1' AND '$tgl2' GROUP BY tb_nilai.id_dosen";
			$data['result'] = $this->db->select("*")->from("tb_nilai")->join("tb_ujian","tb_ujian.id_ujian=tb_nilai.id_ujian")->where($where)->order_by("tb_nilai.id_dosen","ASC")->get();
			
			$this->load->view('admin/rekap-mengawas/print',$data);
		}else $this->error();
	}

}