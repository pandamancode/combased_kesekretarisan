<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Auth extends CI_Controller {

	public function index()
	{
		$path = './assets/captcha/';
		$files = glob( $path . '*', GLOB_MARK );
	    foreach( $files as $file ) unlink( $file );

	    //hapus folder tiap pembuatan captcha baru
	    if (is_dir($path)) rmdir( $path );

		//membuat folder apabila folder captcha tidak ada
		if ( !file_exists($path) )
		{
			$create = mkdir($path, 0777);
			if ( !$create)
			return;
		}

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
		//var_dump($vals['word']);
		$cap = create_captcha($vals);
		$data['captcha_image'] = $cap['image']; //variable array untuk menampilkan captcha pada view
		$this->load->view('adminlogin',$data);
	}

	public function login(){
		$jml= intval($this->session->userdata('captcha_str1')) +  intval($this->session->userdata('captcha_str2'));

		if($this->input->post('captcha_code') != $jml){
			$this->session->set_flashdata("msg","<div class='alert alert-warning alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Penjumlahan Angka Captcha Salah !
			            </div>");
		   	redirect('login');
		}

		$data = array(
				'username' => addslashes($this->input->post('user')),
				'password' => md5($this->input->post('password')),
			);
    
		$cek = $this->db->get_where("tb_users",$data);
    	
		if($cek->num_rows()>0){
			$uname = $this->input->post('user');
			$nama = $cek->row()->nama;
        	

			$this->db->query("UPDATE tb_users SET last_login=NOW() WHERE username='$uname' ");
			$sess_data = array(
					'id_user' => $cek->row()->id_user,
					'name' => $cek->row()->nama,
					'userlevel' => 'ADMIN',
					'hak_akses' => $cek->row()->hak_akses,
					'uname' => $cek->row()->username,
					'logged_in' => true,
					'last_login'=> $cek->row()->last_login,
				);
			$this->session->set_userdata($sess_data);
			redirect('Administrator/Home');
			
		}else{
			$this->session->set_flashdata("msg","<div class='alert alert-warning alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Username atau Password Salah !
			            </div>");
		   	redirect('Auth');
		}
	}

}