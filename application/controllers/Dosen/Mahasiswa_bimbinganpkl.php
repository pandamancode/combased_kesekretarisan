<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa_bimbinganpkl extends CI_Controller {

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
	public function batalkan(){
    	$where['id_pkl']= $this->uri->segment(4);
    	$data['kd_perusahaan']="";
    	$data['validasi_pj']="tolak";
    	$data['alasan']="DIBATALKAN";
    	$this->db->update("tb_pkl",$data,$where);
    	redirect("Dosen/Mahasiswa_bimbinganpkl");
    }
    
	public function index()
	{
		$data['bimbingan'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->where("tb_pkl.id_dosenpembimbing",$this->session->userdata('id_dosen'))->group_by(['tb_pkl.kd_perusahaan', 'tb_mahasiswa.id_prodi', 'tb_pkl.id_periode'])->get();
		$data['lapangan'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->where("tb_pkl.id_pembimbinglapangan",$this->session->userdata('id_dosen'))->group_by(['tb_pkl.kd_perusahaan', 'tb_mahasiswa.id_prodi', 'tb_pkl.id_periode'])->get();

        	 $data['koordinator'] = $this->db->select("*")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->group_by(['tb_pkl.kd_perusahaan', 'tb_mahasiswa.id_prodi', 'tb_pkl.id_periode'])->get();


		$data['content'] = 'dosen/pkl/bimbingan/mhs_bimbingan_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function upload_foto()
	{
		$nmfile=$this->input->post('id_pkl');
		$config['upload_path']          = './public';
        $config['allowed_types']        = '*';
        $config['overwrite'] 			  = TRUE;
  		$config['max_size']             = 2024;
  		$config['max_width']            = 2000;
  		$config['max_height']           = 2000;
  		$config['file_name'] =$nmfile;
  		$getfile=$nmfile.'.jpg';
        $this->load->library('upload', $config);
    	$this->upload->initialize($config);

        if ( ! $this->upload->do_upload('foto'))
        {
            $error = array('error' => $this->upload->display_errors());
            //var_dump($error);
            $this->session->set_flashdata('msg','<div class="alert alert-danger fade in">
				<button class="close" data-dismiss="alert">
					×
				</button>
				<i class="fa-fw fa fa-check"></i>
				<strong>Gagal</strong> upload data.
			</div>');
			redirect('Dosen/Mahasiswa_bimbinganpkl');
        }
        else
        {
        	$where['id_pkl']=$this->input->post('id_pkl');
        	$upd['foto']=$getfile;
        	$this->db->update('tb_pkl',$upd,$where);
        	$this->session->set_flashdata('msg','<div class="alert alert-success fade in">
				<button class="close" data-dismiss="alert">
					×
				</button>
				<i class="fa-fw fa fa-check"></i>
				<strong>Berhasil</strong> upload data.
			</div>');
        	redirect('Dosen/Mahasiswa_bimbinganpkl');
        }
	}
}