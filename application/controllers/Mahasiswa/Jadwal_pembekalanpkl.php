<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal_pembekalanpkl extends CI_Controller {

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
		$data['jadwal'] = $this->db->select("*")->from("tb_jadwal_pembekalanpkl")->join("tb_matauji_pembekalan_pkl","tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanpkl.id_ujipembekalan")->join("tb_kelompok_pembekalanpkl","tb_kelompok_pembekalanpkl.id_kelompok=tb_jadwal_pembekalanpkl.id_kelompok")->join("tb_dosen","tb_dosen.id_dosen=tb_jadwal_pembekalanpkl.id_dosen")->join("tb_periode_pkl","tb_periode_pkl.id_periode=tb_kelompok_pembekalanpkl.id_periode")->join("tb_kelompok_pembekalanpkl_detail","tb_kelompok_pembekalanpkl_detail.id_kelompok=tb_kelompok_pembekalanpkl.id_kelompok")->where("tb_periode_pkl.status_pkl","Aktif")->where("tb_kelompok_pembekalanpkl_detail.id_mhs",$this->session->userdata('idmhs'))->get();
		$data['content'] = 'mahasiswa/pkl/jadwal_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function ulang()
	{
		$data['jadwal'] = $this->db->select("*")->from("tb_jadwal_pembekalanulangpkl")->join("tb_matauji_pembekalan_pkl","tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanulangpkl.id_ujipembekalan")->join("tb_dosen","tb_dosen.id_dosen=tb_jadwal_pembekalanulangpkl.id_dosen")->join("tb_periode_pkl","tb_periode_pkl.id_periode=tb_jadwal_pembekalanulangpkl.id_periode")->where("tb_periode_pkl.status_pkl","Aktif")->where("tb_jadwal_pembekalanulangpkl.aktif","true")->where("tb_matauji_pembekalan_pkl.id_prodi",$this->session->userdata('id_prodi'))->get();

		$data['ambil'] = $this->db->select("*")->from("tb_ujian_pembekalanulangpkl")->join("tb_jadwal_pembekalanulangpkl","tb_jadwal_pembekalanulangpkl.id_jadwal_ulang=tb_ujian_pembekalanulangpkl.id_jadwal_ulang")->join("tb_matauji_pembekalan_pkl","tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanulangpkl.id_ujipembekalan")->join("tb_dosen","tb_dosen.id_dosen=tb_jadwal_pembekalanulangpkl.id_dosen")->where("tb_jadwal_pembekalanulangpkl.aktif","true")->where("tb_ujian_pembekalanulangpkl.id_mhs",$this->session->userdata('idmhs'))->where("tb_ujian_pembekalanulangpkl.status_ujian_ulang","belum terlaksana")->get();

		$data['content'] = 'mahasiswa/pkl/jadwal_ulang_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function ambil($idj,$idm){
		$idmhs = $this->session->userdata('idmhs');
		$cek = $this->db->query("SELECT * FROM tb_ujian_pembekalanulangpkl WHERE id_jadwal_ulang='$idj' AND id_mhs='$idmhs' ");
		if($cek->num_rows()>0){
			$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Anda Sudah Mengambil Matauji ini !
			            </div>");
			redirect('Mahasiswa/Jadwal_pembekalanpkl/ulang');
		}else{
			$where = "id_ujipembekalan='$idm' AND id_mhs='$idmhs' ";
			$cek_nilai = $this->db->get_where("tb_ujian_pembekalanpkl",$where);
			if($cek_nilai->num_rows()>0){
				if($cek_nilai->row()->keterangan=='LULUS'){
					$this->session->set_flashdata("msg","<div class='alert alert-danger alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Anda Sudah Lulus !
			            </div>");
					redirect('Mahasiswa/Jadwal_pembekalanpkl/ulang');
				}else{
					$this->db->query("INSERT INTO tb_ujian_pembekalanulangpkl (id_jadwal_ulang,id_mhs) VALUES ('$idj','$idmhs') ");
					$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Mengambil Matauji Susulan !
			            </div>");
					redirect('Mahasiswa/Jadwal_pembekalanpkl/ulang');
				}

			}else{
				$this->db->query("INSERT INTO tb_ujian_pembekalanulangpkl (id_jadwal_ulang,id_mhs) VALUES ('$idj','$idmhs') ");
				$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
		                <h4><i class='icon fa fa-check'></i> Success!</h4>
		                Berhasil Mengambil Matauji Susulan !
		            </div>");
				redirect('Mahasiswa/Jadwal_pembekalanpkl/ulang');
			}
		}
	}

	public function batalkan(){
		if(isset($_POST) && !empty($_POST)){
			$id = $this->input->post('id');
			$this->db->query("DELETE FROM tb_ujian_pembekalanulangpkl WHERE md5(id_ujian_ulang)='$id' ");
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
		                <h4><i class='icon fa fa-check'></i> Success!</h4>
		                Berhasil Menghapus Data !
		            </div>");
			redirect('Mahasiswa/Jadwal_pembekalanpkl/ulang');
		}else $this->error();
	}

	public function lihat_nilai(){
		
	}
}