<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal extends CI_Controller {

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

    public function index(){
    	$data['jadwal'] = $this->db->get_where("tb_ujian",array('status'=>'aktif','id_dosen'=>$this->session->userdata('id_dosen')));
    	$data['content'] = 'dosen/jadwal/jadwal_v';
		$this->load->view('_layouts/main_v',$data);
    }
    
	public function entry_nilai($id)
	{
		if(isset($id) && !empty($id)){
			$cek = $this->db->get_where("tb_peserta_ujian",array('id_ujian'=>$id,'validate'=>'true'));
			if($cek->num_rows()>0){
				$cek_ujian = $this->db->get_where("tb_ujian",array('id_ujian'=>$id));
				//define variable
				$id_matauji = $cek_ujian->row()->id_matauji;
				$data['id_dosen'] = $cek_ujian->row()->id_dosen;  
				$data['matauji'] = $this->db->get_where("tb_matauji",array('id_matauji'=>$id_matauji))->row();
				$data['peserta'] = $this->db->get_where("tb_peserta_ujian",array('id_ujian'=>$id));
				$data['content'] = 'dosen/jadwal/entry_nilai';
				$this->load->view('_layouts/main_v',$data);
			}else{
				$this->session->set_flashdata("msg","error");
				header('location:'.base_url().'Dosen/Jadwal');
			}
		}else $this->error();
	}

	public function simpan_nilai(){
		if(isset($_POST) && !empty($_POST)){
			foreach ($_POST['npm'] as $tag=>$val) {
		    	$id_ujian=$_POST['id_ujian'][$tag];
		    	$npm=$_POST['npm'][$tag];
		    	$id_matauji=$_POST['id_matauji'][$tag];
		    	$nilai=$_POST['nilai'][$tag];
		    	$grade=$_POST['grade'][$tag];
		    	$id_dosen=$_POST['id_dosen'][$tag];

		    	//kondisi nilai sesuai grade
		    	if($nilai>=$grade){
		    		$hm="A";
		    		$ket="Lulus";
		    	}else{
		    		$hm="TL";
		    		$ket="Tidak Lulus";
		    	}

		    	//cek jumlah pengambilan
		    	$cek_pengambilan = $this->db->get_where("tb_nilai",array('npm'=>$npm,'id_matauji'=>$id_matauji));
		    	$pengambilan = $cek_pengambilan->num_rows() + 1;

		    	//query insert into tb_nilai
		    	$data = array(
		    		'id_ujian' => $id_ujian,
		    		'id_matauji' => $id_matauji,
		    		'npm' => $npm,
		    		'id_dosen' => $id_dosen,
		    		'nilai' => $nilai,
		    		'huruf_mutu' => $hm,
		    		'keterangan' => $ket,
		    		'tgl_penilaian' => date('Y-m-d'),
		    		'pengambilan' => $pengambilan,
		    		'status' => 'false',
		    		'last_update' => $this->session->userdata('name').'['.date('Y-m-d').']',
		    	);
		    	$this->db->insert("tb_nilai",$data);
		    	$this->db->query("update tb_ujian set status='non-aktif' WHERE id_ujian='$id_ujian'");
		    	//$this->db->query("INSERT INTO tb_nilai (id_ujian, id_matauji, npm, id_dosen, nilai, huruf_mutu, )")
		    }
		    $this->session->set_flashdata("msg","success");
			header('location:'.base_url().'Dosen/Jadwal');
		}else $this->error();
	}
	

}