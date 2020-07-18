<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal extends CI_Controller {

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
		$data['jadwal'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_dosen","tb_dosen.id_dosen=tb_ujian.id_dosen")->where("tb_peserta_ujian.validate","true")->where("tb_ujian.status","aktif")->get();
		$data['content'] = 'mahasiswa/jadwal_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function cetak_jadwal($id){
		if(isset($id) && !empty($id)){
			$a=$this->session->userdata('uname');
			$cek = $this->db->query("SELECT * FROM tb_peserta_ujian where npm='$a' AND md5(id_ujian)='$id' ");
			if($cek->num_rows()>0){
				$tahun= date("Y");
				$dt['title'] = 'UNIVERSITAS TEKNOKRAT INDONESIA '.$tahun;
				$dt['jadwal'] = $cek;
				$dt['mhs'] = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_mahasiswa.npm",$a)->get();
				$this->load->view('mahasiswa/kartu_peserta',$dt);
			}else{
				redirect('Jadwal');
			}
		}else $this->error();
	}

}