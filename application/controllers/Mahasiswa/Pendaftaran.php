<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller {

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
		$data['jadwal'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_dosen","tb_dosen.id_dosen=tb_ujian.id_dosen")->where("tb_ujian.status","aktif")->get();
		$data['ambil'] = $this->db->select("*")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_peserta_ujian","tb_peserta_ujian.id_ujian=tb_ujian.id_ujian")->where("tb_peserta_ujian.validate","false")->get();
		$data['content'] = 'mahasiswa/pendaftaran_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function ambiluji(){
		if(isset($_POST) && !empty($_POST)){
			$npm=$this->session->userdata('uname');
	    	$jumlah=$this->encryption->decrypt($this->input->post('jumlah'));
			$kuota=$this->encryption->decrypt($this->input->post('kuota'));
			$id_ujian = $this->encryption->decrypt($this->input->post('id_ujian'));
			$id_matauji = $this->encryption->decrypt($this->input->post('id_matauji'));

			//validasi
			$cek = $this->db->get_where("tb_peserta_ujian",array('npm'=>$npm, 'id_ujian'=>$id_ujian));
			if($cek->num_rows()>0){
				$this->session->set_flashdata("msg","sudah");
			}else{
				$cek_nilai =$this->db->get_where("tb_nilai",array('id_matauji'=>$id_matauji, 'npm'=>$this->session->userdata('uname'), 'keterangan'=>'Lulus'));
				if($cek_nilai->num_rows()>0){
					$this->session->set_flashdata("msg","nilai");
				}else if($jumlah>=$kuota || $kuota<=$jumlah){
					$this->session->set_flashdata("msg","kuota");
				}else{
					
					$tgl=date("Y-m-d");
					$wawa=date("H:i:s");
					/*$te="09:00:00";
					if($te<$wawa){
						$this->db->query("INSERT INTO tb_peserta_ujian(npm,id_ujian,tgl_daftar,timer) VALUES ('$npm','$id_ujian','$tgl' + INTERVAL 1 DAY,'$te')");
					}else{*/
		             	$this->db->query("INSERT INTO tb_peserta_ujian(npm,id_ujian,tgl_daftar,timer) VALUES ('$npm','$id_ujian','$tgl',DATE_ADD(now(), INTERVAL 1 HOUR))");
					//}
					$this->session->set_flashdata("msg","sukses");
				}
			}
			header('location:'.base_url().'Mahasiswa/Pendaftaran');
		}else $this->error();
	}

	public function batalkan($id){
		if(isset($id) && !empty($id)){
	    	$this->db->query("DELETE FROM tb_peserta_ujian WHERE md5(id_peserta)='$id' ");
	    	$this->session->set_flashdata("msg","delete");
	    	header('location:'.base_url().'Mahasiswa/Pendaftaran');
	    }else $this->error();
	}

}
