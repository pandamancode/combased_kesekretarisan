<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengaduan extends CI_Controller {

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
		$query = $this->db->select("*")->from("tb_pengaduan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pengaduan_layanan.id_kategori")->join("tb_jawaban_pengaduan_layanan","tb_jawaban_pengaduan_layanan.no_pengaduan=tb_pengaduan_layanan.no_pengaduan")->join("tb_staff","tb_staff.id_staff=tb_jawaban_pengaduan_layanan.id_staff")->where("tb_pengaduan_layanan.id_mhs",$this->session->userdata('idmhs'))->where("tb_pengaduan_layanan.status_pengaduan","1")->order_by("tb_pengaduan_layanan.tgl_pengaduan","DESC")->get();
		$config['base_url'] = base_url().'Mahasiswa/Layanan/pengaduan/inbox';
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

		$data['inbox'] = $this->db->select("*")->from("tb_pengaduan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pengaduan_layanan.id_kategori")->join("tb_jawaban_pengaduan_layanan","tb_jawaban_pengaduan_layanan.no_pengaduan=tb_pengaduan_layanan.no_pengaduan")->join("tb_staff","tb_staff.id_staff=tb_jawaban_pengaduan_layanan.id_staff")->where("tb_pengaduan_layanan.id_mhs",$this->session->userdata('idmhs'))->where("tb_pengaduan_layanan.status_pengaduan","1")->order_by("tb_pengaduan_layanan.tgl_pengaduan","DESC")->limit($config['per_page'],$from)->get();
		$data['content'] = 'mahasiswa/layanan/pengaduan/inbox_v';
		$this->load->view('_layouts/main_v',$data);

	}

	public function read_sent($id){
		if(isset($id) && !empty($id)){
			$where['no_pengaduan'] = $id;
			$data['read'] = $this->db->get_where("tb_pengaduan_layanan",$where)->row();
			$data['content'] = 'mahasiswa/layanan/pengaduan/read';
			$this->load->view('_layouts/main_v',$data);
		}else $this->inbox();
	}

	public function mod_reply(){
		$where['no_pengaduan'] = $this->input->post('id');
		$data['pengaduan'] = $this->db->get("tb_pengaduan_layanan",$where)->row();
		echo show_my_modal("mahasiswa/layanan/pengaduan/modal_reply","md_reply",$data);
	}

	public function reply(){
		if(isset($_POST) && !empty($_POST)){
			$where['no_pengaduan'] = $this->input->post('id');
			$data = array(
					'no_pengaduan' => $this->input->post('id'),
					'jawaban' => $this->input->post('deskripsi'),
					'id_staff' => $this->session->userdata('id_staff'),
				);
			$this->db->update("tb_pengaduan_layanan",array('status_pengaduan'=>'1'),$where);
			$this->db->insert("tb_jawaban_pengaduan_layanan",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Membalas Pesan Pengaduan
			            </div>");
			header('location:'.base_url().'Mahasiswa/Layanan/pengaduan/inbox');
		}else $this->error();
	}

	public function sent(){
		$this->load->library('pagination');
		$query =  $this->db->select("*")->from("tb_pengaduan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pengaduan_layanan.id_kategori")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pengaduan_layanan.id_mhs")->where("tb_pengaduan_layanan.id_mhs",$this->session->userdata('idmhs'))->order_by("tb_pengaduan_layanan.tgl_pengaduan","DESC")->get();
		$config['base_url'] = base_url().'Mahasiswa/Layanan/pengaduan/sent';
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

		$data['sent'] = $this->db->select("*")->from("tb_pengaduan_layanan")->join("tb_kategori_layanan","tb_kategori_layanan.id_kategori=tb_pengaduan_layanan.id_kategori")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pengaduan_layanan.id_mhs")->where("tb_pengaduan_layanan.id_mhs",$this->session->userdata('idmhs'))->order_by("tb_pengaduan_layanan.tgl_pengaduan","DESC")->limit($config['per_page'],$from)->get();
		$data['content'] = 'mahasiswa/layanan/pengaduan/sent_v';
		$this->load->view('_layouts/main_v',$data);
	}

	public function read($id){
		if(isset($id) && !empty($id)){
			$where['no_pengaduan'] = $id;
			$this->db->update("tb_jawaban_pengaduan_layanan",array('status_baca'=>'sudah'),$where);
			$data['read'] = $this->db->get_where("tb_pengaduan_layanan",$where)->row();
			$data['reply'] = $this->db->get_where("tb_jawaban_pengaduan_layanan",$where)->row();
			$data['content'] = 'mahasiswa/layanan/pengaduan/read_sent';
			$this->load->view('_layouts/main_v',$data);
		}else $this->inbox();
	}

	public function mod_compose(){
		$data['kategori'] = $this->db->get("tb_kategori_layanan");
		echo show_my_modal("mahasiswa/layanan/pengaduan/modal_compose","md_compose",$data);
	}

	public function compose(){
		if(isset($_POST) && !empty($_POST)){
			$data = array(
				'no_pengaduan' => date('YmdHis'),
				'id_mhs' => $this->session->userdata('idmhs'),
				'id_kategori' => $this->input->post('kategori'),
				'judul_pengaduan' => $this->input->post('subject'),
				'deskripsi_pengaduan' => $this->input->post('deskripsi'),
			);
			$this->db->insert("tb_pengaduan_layanan",$data);
			$this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
			                <h4><i class='icon fa fa-check'></i> Success!</h4>
			                Berhasil Mengirim Pesan Pengaduan
			            </div>");
			header('location:'.base_url().'Mahasiswa/Layanan/pengaduan/sent');
		}else $this->error();
	}

}