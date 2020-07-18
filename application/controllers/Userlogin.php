<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Userlogin extends CI_Controller {

	public function index()
	{
    	$this->load->helper('captcha');
		$path = './assets/captcha/';
		$files = glob( $path . '*', GLOB_MARK );
	    foreach( $files as $file ) unlink( $file );

	    //hapus folder tiap pembuatan captcha baru
	    //if (is_dir($path)) rmdir( $path );

		//membuat folder apabila folder captcha tidak ada
		/*if ( !file_exists($path) )
		{
			$create = mkdir($path, 0777);
			if ( !$create)
			return;
		}*/

		//Menampilkan huruf acak untuk dijadikan captcha
		$word1 = rand(0,9);
		$word2 = rand(0,9);
		$str  = $word1 .' + '.$word2;

		//Menyimpan huruf acak tersebut kedalam session
		$data_ses = array('captcha_str1' => $word1, 'captcha_str2' => $word2 	);
		$this->session->set_userdata($data_ses);

		//array untuk menampilkan gambar captcha
		$vals = array(
		    'word'	=> $str, //huruf acak yang telah dibuat diatas
		    'img_path'	=> $path, //path untuk menyimpan gambar captcha
		    'img_url'	=> base_url().'assets/captcha/', //url untuk menampilkan gambar captcha
		    'img_width'	=> '120', //lebar gambar captcha
		    'img_height' => 32, //tinggi gambar captcha
		    'expiration' => 7200 //expired time per captcha
		);
		$cap = create_captcha($vals);
    	$data['captcha_image'] = $vals['word'];
		//$data['captcha_image'] = $cap['image']; //variable array untuk menampilkan captcha pada view
		$this->load->view('login',$data);
	}

	public function auth_log(){
		$jml= intval($this->session->userdata('captcha_str1')) +  intval($this->session->userdata('captcha_str2'));

		if($this->input->post('captcha_code') != $jml){
			$this->session->set_flashdata("msg","<div class='alert alert-warning alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Penjumlahan Angka Captcha Salah !
			            </div>");
		   	redirect('login');
		}

		$data = array(
				'npm' => addslashes($this->input->post('user')),
				'password' => md5($this->input->post('password')),
			);

		$data_ = array(
				'nik' => addslashes($this->input->post('user')),
				'password' => md5($this->input->post('password')),
			);

		$cek = $this->db->get_where("tb_mahasiswa",$data);
		$cek_dosen = $this->db->get_where("tb_dosen",$data_);

		if($cek->num_rows()>0){
			$uname = $this->input->post('user');
			$this->db->query("UPDATE tb_mahasiswa SET last_login=NOW() WHERE npm='$uname' ");
			$sess_data = array(
					'idmhs' => $cek->row()->id_mhs,
					'userlevel' => 'MAHASISWA',
					'uname' => $cek->row()->npm,
					'logged_in' => true,
					'last_login'=> $cek->row()->last_login,
					'name'=> $cek->row()->nama_mhs,
					'id_prodi' => $cek->row()->id_prodi,
					'mhs_id'=>$cek->row()->mhs_id
				);
			$this->session->set_userdata($sess_data);
			redirect('Mahasiswa/Home');
		}else if($cek_dosen->num_rows()>0){
			$uname = $this->input->post('user');
			$this->db->query("UPDATE tb_dosen SET last_login=NOW() WHERE nik='$uname' ");
			$sess_data = array(
					'id_dosen' => $cek_dosen->row()->id_dosen,
					'userlevel' => 'DOSEN',
					'uname' => $cek_dosen->row()->nik,
					'logged_in' => true,
					'last_login'=> $cek_dosen->row()->last_login,
					'name'=> $cek_dosen->row()->nama_dosen,
				);
			$this->session->set_userdata($sess_data);
			redirect('Dosen/Home');
		}else{
			$this->session->set_flashdata("msg","<div class='alert alert-warning alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Username atau Password Salah !
			            </div>");
		   	redirect('login');
		}

	}
	public function pkl()
	{
		$mhs_id=$this->session->userdata('mhs_id');
		//$mhs_id='10934';
		$json = file_get_contents("http://192.168.11.5:8000/eyanx/jason/conn_finansi.php?username=$mhs_id");
		$data = array();
		$data=json_decode($json);
		//print_r($data);
		foreach ($data as $key) {
			$sess_data = array(
					'jenisPembayaranNama' => $key->jenisPembayaranNama,
					'pembyrnTotalBayar' => $key->pembyrnTotalBayar,
					'pembyrnStatusPembyrn' => $key->pembyrnStatusPembyrn,
				);
		}$this->session->set_userdata($sess_data);
	}

}