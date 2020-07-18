<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jdata extends CI_Controller {

	public function register()
	{

		 $json = file_get_contents("http://siaregistrasi.teknokrat.ac.id/ws_eyx/conn_registrasi.php?angkatan=2018");
		 $data = array();
		 $data=json_decode($json);
		 //var_dump(count($data));exit();
    	
		foreach ($data as $key) {
			$cheking=$this->db->get_where('tb_mahasiswa',array('npm'=> $key->mhsNiu));
			if (count($cheking->result())>0) {
        	//if($cheking->num_rows()>0){
				echo "ada $key->mhsNiu $key->mhsId<br>";
            	$where['npm']=$key->mhsNiu;
				
				$inss['mhs_id']=$key->mhsId;
                $this->db->update('tb_mahasiswa',$inss,$where);
			}else{
				echo "gak ada $key->mhsNiu <br>";
				$cheking_prodi=$this->db->get_where('tb_prodi',array('kd_prodi'=> $key->prodiLabelNim));
				$agama=$key->agmrNama;
				$cheking_agama=$this->db->query("SELECT * FROM data_agama WHERE nm_agama LIKE '%$agama%'");
				$ins['angkatan']=$key->mhsNamaAngkatan;
				$ins['npm']=$key->mhsNiu;
				$ins['nama_mhs']=$key->mhsNama;
				$ins['tempatlahir_mhs']=$key->mhsTempatLahir;
				$ins['tgllahir_mhs']=$key->mhsTanggalLahir;
				$ins['jk']=$key->mhsJenisKelamin;
				$ins['mhs_id']=$key->mhsId;
				foreach ($cheking_prodi->result() as $key_prodi) {
					$ins['id_prodi']=$key_prodi->id_prodi;
				}
				foreach ($cheking_agama->result() as $key_agama) {
					$ins['agama']=$key_agama->id_agama;
				}
				//var_dump($data);
				if ($key->mhsNiu!=NULL) {
					$this->db->insert('tb_mahasiswa',$ins);
                	echo "insert";
				}
				
			}
			
		}
		
	}

	public function register1()
	{

		 $json = file_get_contents("http://192.168.11.5:8000/eyanx/jason/conn_registrasi.php?angkatan=2017");
		 $data = array();
		 $data=json_decode($json);
		 //var_dump($data);exit();
		foreach ($data as $key) {
			$cheking=$this->db->get_where('tb_mahasiswa',array('npm'=> $key->mhsNiu));
			if (count($cheking->result())>0) {
        	//if($cheking->num_rows()>0){
				echo "ada $key->mhsNiu $key->mhsId<br>";
            	$where['npm']=$key->mhsNiu;
				
				$inss['mhs_id']=$key->mhsId;
                $this->db->update('tb_mahasiswa',$inss,$where);
			}else{
				// echo "gak ada $key->mhsNiu <br>";
				// $cheking_prodi=$this->db->get_where('tb_prodi',array('kd_prodi'=> $key->prodiLabelNim));
				// $agama=$key->agmrNama;
				// $cheking_agama=$this->db->query("SELECT * FROM data_agama WHERE nm_agama LIKE '%$agama%'");
				// $ins['angkatan']=$key->mhsNamaAngkatan;
				// $ins['npm']=$key->mhsNiu;
				// $ins['nama_mhs']=$key->mhsNama;
				// $ins['tempatlahir_mhs']=$key->mhsTempatLahir;
				// $ins['tgllahir_mhs']=$key->mhsTanggalLahir;
				// $ins['jk']=$key->mhsJenisKelamin;
				// $ins['mhs_id']=$key->mhsId;
				// foreach ($cheking_prodi->result() as $key_prodi) {
				// 	$ins['id_prodi']=$key_prodi->id_prodi;
				// }
				// foreach ($cheking_agama->result() as $key_agama) {
				// 	$ins['agama']=$key_agama->id_agama;
				// }
				// //var_dump($data);
				// if ($key->mhsNiu!=NULL) {
				// 	//$this->db->insert('tb_mahasiswa',$ins);
				// echo "insert";
				// }
				
			}
			
		}
		
	}



	public function pkl()
	{
		$mhs_id=$this->session->userdata('mhs_id');
    //$mhs_id='24421';
		$json = file_get_contents("http://siaregistrasi.teknokrat.ac.id/ws_eyx/conn_finansi.php?username=$mhs_id");
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
	public function pass()
	{
		$json = file_get_contents("https://siakad.teknokrat.ac.id/ws_eyx/conn_portal.php?angkatan=16");
		$data = array();
		$data=json_decode($json);
		//print_r($data);exit();
		foreach ($data as $key) {
			$cheking=$this->db->get_where('tb_mahasiswa',array('npm'=> $key->tusrNama));
			if (count($cheking->result())>0) {
				$where['npm']=$key->tusrNama;
				$ins['password']=$key->tusrPassword;
				$this->db->update('tb_mahasiswa',$ins,$where);
            	/*$where['username']=$key->tusrNama;
            	$password['psw_md5'] = $key->tusrPassword;
            	$this->db->update('b_users',$password,$where2);*/
            echo "update $key->tusrNama <br>";
			}else{
			echo "tidak update".$key->tusrNama;
			}
		}
	}
	public function login()
	{


		$data = array(
				'npm' => addslashes($this->input->post('username')),
				'password' => md5($this->input->post('password')),
			);

		$cek = $this->db->get_where("tb_mahasiswa",$data);

		if($cek->num_rows()>0){
			$uname = $this->input->post('user');
			$this->db->query("UPDATE tb_mahasiswa SET last_login=NOW() WHERE npm='$uname' ");
			$sess_data = array(
					'mhs_id' => $cek->row()->mhs_id,
					'idmhs' => $cek->row()->id_mhs,
					'userlevel' => 'MAHASISWA',
					'uname' => $cek->row()->npm,
					'logged_in' => true,
					'last_login'=> $cek->row()->last_login,
					'name'=> $cek->row()->nama_mhs,
					'id_prodi' => $cek->row()->id_prodi,
				);
			$this->session->set_userdata($sess_data);
			$this->pkl();
			redirect('Mahasiswa/Home');
		}else{
			$this->session->set_flashdata("msg","<div class='alert alert-warning alert-dismissible'>
			                <h4><i class='icon fa fa-warning'></i> Failed!</h4>
			                Hubungi Admin untuk Sinkronisasi akun anda !
			            </div>");
		   	redirect('login');
		}
	}

}