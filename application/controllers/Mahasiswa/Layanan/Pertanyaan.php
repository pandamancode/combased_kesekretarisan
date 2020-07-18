<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pertanyaan extends CI_Controller {

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
		$this->inbox();
	}

	public function inbox(){
		$this->load->library('pagination');
		$query = $this->db->select("*")->from("tb_pertanyaan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pertanyaan_layanan.id_kategori")->join("tb_jawaban_pertanyaan_layanan","tb_jawaban_pertanyaan_layanan.no_pertanyaan=tb_pertanyaan_layanan.no_pertanyaan")->join("tb_staff","tb_staff.id_staff=tb_jawaban_pertanyaan_layanan.id_staff")->where("tb_pertanyaan_layanan.id_mhs",$this->session->userdata('idmhs'))->where("tb_pertanyaan_layanan.status_pertanyaan","1")->order_by("tb_pertanyaan_layanan.tgl_pertanyaan","DESC")->get();
		$config['base_url'] = base_url().'Mahasiswa/Layanan/pertanyaan/inbox';
		$config['total_rows'] = $query->num_rows();
		$config['per_page'] = 10;

		$config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] ="</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
 
        $config['first_link']='< Pertama ';
        $config['last_link']='Terakhir > ';
        $config['next_link']='> ';
        $config['prev_link']='< ';

        $from = $this->uri->segment(5);
		$this->pagination->initialize($config);		
		//$data['user'] = $this->M_data->data($config['per_page'],$from);
		//$this->db->get('tb_mhs',$number,$offset)

		$data['inbox'] = $this->db->select("*")->from("tb_pertanyaan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pertanyaan_layanan.id_kategori")->join("tb_jawaban_pertanyaan_layanan","tb_jawaban_pertanyaan_layanan.no_pertanyaan=tb_pertanyaan_layanan.no_pertanyaan")->join("tb_staff","tb_staff.id_staff=tb_jawaban_pertanyaan_layanan.id_staff")->where("tb_pertanyaan_layanan.id_mhs",$this->session->userdata('idmhs'))->where("tb_pertanyaan_layanan.status_pertanyaan","1")->order_by("tb_pertanyaan_layanan.tgl_pertanyaan","DESC")->limit($config['per_page'],$from)->get();
		$data['content'] = 'mahasiswa/layanan/pertanyaan/inbox_v';
		$this->load->view('_layouts/main_v',$data);

	}

	public function read_sent($id){
		if(isset($id) && !empty($id)){
			$where['no_pertanyaan'] = $id;
			$data['read'] = $this->db->get_where("tb_pertanyaan_layanan",$where)->row();
			$data['content'] = 'mahasiswa/layanan/pertanyaan/read';
			$this->load->view('_layouts/main_v',$data);
		}else $this->inbox();
	}

	public function mod_reply(){
		$where['no_pertanyaan'] = $this->input->post('id');
		$data['pengaduan'] = $this->db->get("tb_pertanyaan_layanan",$where)->row();
		echo show_my_modal("mahasiswa/layanan/pertanyaan/modal_reply","md_reply",$data);
	}

	public function reply(){
		if(isset($_POST) && !empty($_POST)){
			$where['no_pertanyaan'] = $this->input->post('id');
			$data = array(
					'no_pertanyaan' => $this->input->post('id'),
					'jawaban' => $this->input->post('deskripsi'),
					'id_staff' => $this->session->userdata('id_staff'),
				);
			$this->db->update("tb_pertanyaan_layanan",array('status_pengaduan'=>'1'),$where);
			$this->db->insert("tb_jawaban_pertanyaan_layanan",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Membalas Pesan Pengaduan
			            </div>");
			header('location:'.base_url().'Mahasiswa/Layanan/pertanyaan/inbox');
		}else $this->error();
	}

	public function sent(){
		$this->load->library('pagination');
		$query =  $this->db->select("*")->from("tb_pertanyaan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pertanyaan_layanan.id_kategori")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pertanyaan_layanan.id_mhs")->where("tb_pertanyaan_layanan.id_mhs",$this->session->userdata('idmhs'))->order_by("tb_pertanyaan_layanan.tgl_pertanyaan","DESC")->get();
		$config['base_url'] = base_url().'Mahasiswa/Layanan/pertanyaan/sent';
		$config['total_rows'] = $query->num_rows();
		$config['per_page'] = 10;

		$config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] ="</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
 
        $config['first_link']='< Pertama ';
        $config['last_link']='Terakhir > ';
        $config['next_link']='> ';
        $config['prev_link']='< ';

        $from = $this->uri->segment(5);
		$this->pagination->initialize($config);		

		$data['sent'] = $this->db->select("*")->from("tb_pertanyaan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pertanyaan_layanan.id_kategori")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pertanyaan_layanan.id_mhs")->where("tb_pertanyaan_layanan.id_mhs",$this->session->userdata('idmhs'))->order_by("tb_pertanyaan_layanan.tgl_pertanyaan","DESC")->limit($config['per_page'],$from)->get();
		$data['content'] = 'mahasiswa/layanan/pertanyaan/sent_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function read($id){
		if(isset($id) && !empty($id)){
			$where['no_pertanyaan'] = $id;
			$this->db->update("tb_jawaban_pertanyaan_layanan",array('status_baca'=>'sudah'),$where);
			$data['read'] = $this->db->get_where("tb_pertanyaan_layanan",$where)->row();
			$data['reply'] = $this->db->get_where("tb_jawaban_pertanyaan_layanan",$where)->row();
			$data['content'] = 'mahasiswa/layanan/pertanyaan/read_sent';
			$this->load->view('_layouts/main_v',$data);
		}else $this->inbox();
	}

	public function mod_compose(){
		$data['kategori'] = $this->db->get("tb_kategori_layanan");
		echo show_my_modal("mahasiswa/layanan/pertanyaan/modal_compose","md_compose",$data);
	}

	public function compose(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
				'no_pertanyaan' => date('YmdHis'),
				'id_mhs' => $this->session->userdata('idmhs'),
				'id_kategori' => $this->input->post('kategori'),
				'judul_pertanyaan' => $this->input->post('subject'),
				'deskripsi_pertanyaan' => $this->input->post('deskripsi'),
			);
			$this->db->insert("tb_pertanyaan_layanan",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Mengirim Pesan Pertanyaan
			            </div>");
			header('location:'.base_url().'Mahasiswa/Layanan/pertanyaan/sent');
		}else $this->error();
	}

}