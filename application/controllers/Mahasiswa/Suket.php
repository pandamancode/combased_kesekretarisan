<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");
class Suket extends CI_Controller {

	var $API ="";
	public function __construct() {
		parent::__construct();
		// $this->API="http://silab.teknokrat.ac.id/index.php";
		// $this->load->library('curl');
		// $akses = $this->session->userdata('f_level');
		// if ($akses!="mahasiswa") {
		// 	redirect('Auth/logout');
		// }
    
    	if ($this->session->userdata('uname')==""){
			redirect('login');
		}else if ($this->session->userdata('userlevel')<>"MAHASISWA"){
			redirect('login');
		}
	}
	public function get_suketkuliah_file($id){
    	$this->load->helper('download');
    	$data_post['id_suket'] = $id;
    	$json = $this->curl->simple_post($this->API.'/api/Api_SuketMhs/get_suketkuliah_file', $data_post, array(CURLOPT_BUFFERSIZE => 10));
    	$path = json_decode($json);
    	$x=file_get_contents('http://silab.teknokrat.ac.id/assets/files/suket/suket_kuliah/'.$path);
    	force_download($path, $x);
    	redirect('Mahasiswa/Suket');
    }

	public function index() {
		$id_user=$this->session->userdata('uname');
		$id_mhs = $this->session->userdata('idmhs');
		$where['aktif'] = 'Aktif';
    	$cek = $this->db->get_where("tb_semester",$where);
    	if($cek->num_rows()>0){
        	$_semester = $cek->row()->semester;
        }else{
        	$_semester = NULL;
        }
    	if($_semester!=''){
			$thn=substr($_semester,0,4);
			$smt=substr($_semester,4,1);
			if($smt=='1') $data['semester'] = 'Ganjil T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='2') $data['semester'] = 'Genap T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='3') $data['semester'] = 'SP Ganjil T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='4') $data['semester'] = 'SP Genap T.A. '.$thn.'/'.($thn+1);
		}
		$data['pengajuan'] = $this->db->select("*")->from("tb_suket")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_suket.id_mhs")->join("tb_semester","tb_semester.semester=tb_suket.semester")->where("tb_mahasiswa.id_mhs",$id_mhs)->get()->result_array();
		// views
    	$data['content'] = 'mahasiswa/suket/suket/PengajuanSuket_v';
		$this->load->view('_layouts/main_v',$data);

	}


	public function DaftarSuket() {
    	//get session data "update thonie"
		$id_user=$this->session->userdata('uname');
		$id_mhs = $this->session->userdata('idmhs');
    	
    	//get data mahasiswa "update thonie"
    	$data['result_data'] = $this->db->select("*")->from("tb_mahasiswa")->where("tb_mahasiswa.id_mhs",$id_mhs)->get()->result();
    	
    	//get semester aktif
    	$where['aktif'] = 'Aktif';
    	$cek = $this->db->get_where("tb_semester",$where);
    	if($cek->num_rows()>0){
        	$_semester = $cek->row()->semester;
        }else{
        	$_semester = NULL;
        }
    
    
        if($_semester!=''){
            $thn=substr($_semester,0,4);
            $smt=substr($_semester,4,1);
            if($smt=='1') $data['semester'] = 'Ganjil T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='2') $data['semester'] = 'Genap T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='3') $data['semester'] = 'SP Ganjil T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='4') $data['semester'] = 'SP Genap T.A. '.$thn.'/'.($thn+1);
        }
		echo show_my_modal('mahasiswa/suket/suket/modal_DaftarSuket', 'Daftar_Suket', $data);
	}

	public function Ajukansuket() {
		if(isset($_POST) && !empty($_POST)){
        	//get semester aktif
       		$where_['aktif'] = 'Aktif';
        	$cek = $this->db->get_where("tb_semester",$where_);
        	if($cek->num_rows()>0){
            	$_semester = $cek->row()->semester;
        	}else{
            	$_semester = NULL;
        	}
			
            $data = array(
                    'id_mhs' => $this->session->userdata('idmhs'),
                    'semester' => $_semester,
                    'keperluan' => $this->input->post('keperluan'),
                    'jenis_surat' => $this->input->post('jenis_surat'),
                    'tgl_pengajuan' => date('Y-m-d'),
                    'kepada' => $this->input->post('kepada'),
                    'alamat' => $this->input->post('alamat'),
                    'judul' => $this->input->post('judul'),
                    'nama_ortu' => $this->input->post('nama_ortu'),
                    'pekerjaan' => $this->input->post('pekerjaan'),
                    'instansi' => $this->input->post('instansi'),
                    'smt' => $this->input->post('smt'),
                    'tempat' => $this->input->post('tempat'),
                    'agama_su' => $this->input->post('agama'),
                    'js' => $this->input->post('js'),
                    'tgl_lulus' => $this->input->post('tgl_lulus'),
                    'gelar' => $this->input->post('gelar'),
            	);
            $this->db->insert("tb_suket",$data);
            $this->session->set_flashdata("msg","
                <div class='alert alert-success fade in'>
                    <a href='#' class='close' data-dismiss='alert'>&times;</a>
                    <strong>Sukses!</strong> Anda Berhasil Mengajukan Surat Keterangan ".$this->input->post('jenis_surat')." !
                </div>");
			redirect('Mahasiswa/Suket/');
        }else $this->error();
	}

	public function error(){
    	$this->load->view('index.html');
    }

	public function deleteSuket($id)
	{
		if(isset($id) && !empty($id)){
			$this->db->query("DELETE FROM tb_suket WHERE md5(id_suket)='$id' ");
        	$this->session->set_flashdata("msg","
                <div class='alert alert-success fade in'>
                    <a href='#' class='close' data-dismiss='alert'>&times;</a>
                    <strong>Sukses!</strong> Anda Berhasil Membatalkan Pengajuan Pembuatan Surat Keterangan !
                </div>");
        	redirect(base_url('Mahasiswa/Suket/'));
        }else $this->error();
	}

	public function updateSuketmodal() {
    	$id = $this->input->post('id');
		$data['result_data'] = $this->db->select("*")->from("tb_suket")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_suket.id_mhs")->where("tb_suket.id_suket",$id)->get()->row();
    	//$data = $this->db->query("SELECT * FROM tb_suket, tb_mahasiswa WHERE tb_suket.id_mhs=tb_mahasiswa.id_mhs AND tb_suket.id_suket='$id' ")->result();
    	//print_r($data);exit();
    
    	//$res = json_decode($json);
    	//print_r($res);//exit();
		//$data['result_data']=json_decode($json);
    
        if($this->session->userdata('f_idsemester')!=''){
            $thn=substr($this->session->userdata('f_idsemester'),0,4);
            $smt=substr($this->session->userdata('f_idsemester'),4,1);
            if($smt=='1') $data['semester'] = 'Ganjil T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='2') $data['semester'] = 'Genap T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='3') $data['semester'] = 'SP Ganjil T.A. '.$thn.'/'.($thn+1);
            elseif($smt=='4') $data['semester'] = 'SP Genap T.A. '.$thn.'/'.($thn+1);
        }

		echo show_my_modal('mahasiswa/suket/suket/modal_EditSuket', 'edit_permohonan', $data);
	}

	public function UpdateSuket(){
		if(isset($_POST) && !empty($_POST)){
			$where['id_suket'] = $this->input->post('id');
            $data = array(
            		'id_mhs' => $this->session->userdata('f_idmhs'),
            		'semester' => $this->session->userdata('f_idsemester'),
            		'keperluan' => $this->input->post('keperluan'),
            		'jenis_surat' => $this->input->post('jenis_surat'),
            		'tgl_pengajuan' => date('Y-m-d'),
                	'kepada' => $this->input->post('kepada'),
                	'alamat' => $this->input->post('alamat'),
                	'judul' => $this->input->post('judul'),
                    'nama_ortu' => $this->input->post('nama_ortu'),
                    'pekerjaan' => $this->input->post('pekerjaan'),
                    'instansi' => $this->input->post('instansi'),
                    'smt' => $this->input->post('smt'),
                    'tempat' => $this->input->post('tempat'),
                    'agama_su' => $this->input->post('agama'),
                	'js' => $this->input->post('js'),
                	'tgl_lulus' => $this->input->post('tgl_lulus'),
                	'gelar' => $this->input->post('gelar'),
            		'status_pengajuan' => '1',
            	);
        	$this->db->update("tb_suket",$data,$where);
            $this->session->set_flashdata("msg","
                <div class='alert alert-success fade in'>
                    <a href='#' class='close' data-dismiss='alert'>&times;</a>
                    <strong>Sukses!</strong> Anda Berhasil Mengajukan Kembali Surat Keterangan ".$this->input->post('jenis_surat')." !
                </div>");
			redirect('Mahasiswa/Suket');
        }else $this->error();
	}
}
