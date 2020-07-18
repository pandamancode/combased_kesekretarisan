<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Validasi_pendaftaran extends CI_Controller {

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
    
	public function index()
	{
		if(pj_bagian($this->session->userdata('id_dosen'))=='PRODI'){
			$cek = $this->db->select("tb_pejabatpkl.id_prodi")->from("tb_pejabatpkl")->join("tb_dosen","tb_dosen.id_dosen=tb_pejabatpkl.id_dosen")->where("tb_dosen.id_dosen",$this->session->userdata('id_dosen'))->where("tb_pejabatpkl.status","Aktif")->get();
			$idprodi = $cek->row()->id_prodi;
			$where = "tb_pkl.validasi_syarat IS NOT NULL AND tb_pkl.validasi_pj='menunggu' AND tb_periode_pkl.status_pkl='Aktif' AND tb_mahasiswa.id_prodi='$idprodi' ";
			$data['pengajuan'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_periode_pkl","tb_periode_pkl.id_periode=tb_pkl.id_periode")->where($where)->get();
			$data['content'] = 'dosen/pkl/validasi/validasi_v';
			$this->load->view('_layouts/main_v',$data);
		}else if(pj_bagian($this->session->userdata('id_dosen'))=='KOORDINATOR'){
			$where = "tb_pkl.validasi_syarat IS NOT NULL AND tb_pkl.validasi_pj='menunggu' AND tb_periode_pkl.status_pkl='Aktif' ";
			$data['pengajuan'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_periode_pkl","tb_periode_pkl.id_periode=tb_pkl.id_periode")->where($where)->get();
			$data['content'] = 'dosen/pkl/validasi/validasi_v';
			$this->load->view('_layouts/main_v',$data);
		}
	}

	public function validate_detail(){
		$data['pkl'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->where("tb_pkl.id_pkl",$this->input->post('id'))->get()->row();
		echo show_my_modal("dosen/pkl/validasi/modal_detail","md_detail",$data);
	}

	public function validate_perusahaan(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_pkl'] = $this->input->post('id');
			if($this->input->post('status')=='tolak'){
				$data = array(
					'id_pkl' => $this->input->post('id'),
					'validasi_pj' => $this->input->post('status'),
					'alasan' => $this->input->post('alasan'),
				);
			}else{
				$data = array(
					'id_pkl' => $this->input->post('id'),
					'validasi_pj' => $this->input->post('status'),
					'surat_pengantar' => 'belum jadi',
				);
			}
			$this->db->update("tb_pkl",$data,$where);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Validasi Pendaftaran PKL
			            </div>");
			header('location:'.base_url().'Dosen/Validasi_pendaftaran');
		}else $this->error();
	}
}