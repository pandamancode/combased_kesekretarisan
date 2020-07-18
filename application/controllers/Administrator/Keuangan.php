<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Keuangan extends CI_Controller {

	function __construct(){
		parent::__construct();

		if ($this->session->userdata('uname')==""){
			redirect('Auth');
		}else if ($this->session->userdata('userlevel')<>"ADMIN"){
			redirect('Auth');
		}
    }
    public function error(){
    	$this->load->view('index.html');
    }

	public function index()
	{
		$data['content'] = 'admin/keuangan/filter_validasi';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter_validasi(){
		if(isset($_POST) && !empty($_POST)){
			$data['mhs'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_mahasiswa","tb_mahasiswa.npm=tb_peserta_ujian.npm")->where("tb_mahasiswa.npm",$this->input->post('npm'))->where("tb_peserta_ujian.validate","false")->get();
			$this->load->view('admin/keuangan/data_validasi',$data);
		}else $this->error();
	}

	public function validate(){
		if(isset($_POST) && !empty($_POST)){
			//cek biaya
			$where['id_peserta'] = $this->input->post('id');
			$data['validate'] = 'true';
			$data['tgl_bayar'] = date('Y-m-d');
			$data['biaya'] = $this->input->post('harga');
			$this->db->update("tb_peserta_ujian",$data,$where);
			echo "success";
		}else $this->error();
	}

	public function telah_validasi(){
		$data['fakultas'] = $this->db->get("tb_fakultas");
		$data['prodi'] = $this->db->get("tb_prodi");
		$data['content'] = 'admin/keuangan/filter_telahvalidasi';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter_telahvalidasi(){
		if(isset($_POST) && !empty($_POST)){
			$data['mhs'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_mahasiswa","tb_mahasiswa.npm=tb_peserta_ujian.npm")->where("tb_mahasiswa.id_prodi",$this->input->post('prodi'))->where("tb_peserta_ujian.validate","true")->get();
			$this->load->view('admin/keuangan/data_telahvalidasi',$data);
		}else $this->error();
	}

	public function rekap_pembayaran(){
		$data['content'] = 'admin/keuangan/filter_rekap';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter_pembayaran(){
		if(isset($_POST) && !empty($_POST)){
			$tgl1 = $this->input->post('tgl1');
			$tgl2 = $this->input->post('tgl2');
			$where = "tb_peserta_ujian.tgl_bayar BETWEEN '$tgl1' AND '$tgl2' ";
			$data['mhs'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_mahasiswa","tb_mahasiswa.npm=tb_peserta_ujian.npm")->where($where)->where("tb_peserta_ujian.validate","true")->get();
			$this->load->view('admin/keuangan/data_rekap',$data);
		}else $this->error();
	}

	public function cetak(){
		if(isset($_POST) && !empty($_POST)){
			$tgl1 = $this->input->post('tgl1');
			$tgl2 = $this->input->post('tgl2');
			$data['caption'] = date('d-m-Y',strtotime($this->input->post('tgl1'))).' sd '.date('d-m-Y',strtotime($this->input->post("tgl2")));
			$select = "SUM(tb_peserta_ujian.biaya) as biaya_total";
			$where = "tb_peserta_ujian.tgl_bayar BETWEEN '$tgl1' AND '$tgl2' ";
			$data['result'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_mahasiswa","tb_mahasiswa.npm=tb_peserta_ujian.npm")->where($where)->where("tb_peserta_ujian.validate","true")->get();
			
			$data['result_total'] = $this->db->select($select)->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->join("tb_mahasiswa","tb_mahasiswa.npm=tb_peserta_ujian.npm")->where($where)->where("tb_peserta_ujian.validate","true")->get();
			$this->load->view('admin/keuangan/rekap_pdf',$data);
		}else $this->error();
	}

}