<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai_pembekalan extends CI_Controller {

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
        $dosen = $this->session->userdata('id_dosen');
    	$where = "tb_periode_pkl.status_pkl='Aktif' AND tb_jadwal_pembekalanpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanpkl.status_jadwal='true' ";
        $data['nilai'] = $this->db->query("SELECT * FROM tb_jadwal_pembekalanpkl, tb_kelompok_pembekalanpkl, tb_matauji_pembekalan_pkl, tb_periode_pkl, tb_ruangan WHERE tb_kelompok_pembekalanpkl.id_kelompok=tb_jadwal_pembekalanpkl.id_kelompok AND tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanpkl.id_ujipembekalan AND tb_periode_pkl.id_periode=tb_kelompok_pembekalanpkl.id_periode AND tb_ruangan.id_ruangan=tb_jadwal_pembekalanpkl.id_ruangan AND tb_jadwal_pembekalanpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanpkl.status_jadwal='true' GROUP BY tb_kelompok_pembekalanpkl.id_kelompok, tb_matauji_pembekalan_pkl.id_ujipembekalan ");
    	$data['content'] = 'dosen/pkl/nilai_pembekalan/nilai_pembekalan_v';
		$this->load->view('_layouts/main_v',$data);
    }

    public function get_peserta($id_kelompok, $id_uji, $idjadwal){
        $data['id_jadwal'] = $idjadwal;
        $where = "md5(id_kelompok)='$id_kelompok' ";
        $where_= "md5(id_ujipembekalan)='$id_uji' ";
        //$data['peserta'] = $this->db->get_where("tb_kelompok_pembekalanpkl_detail",$where);
        $data['peserta'] = $this->db->select("*")->from("tb_kelompok_pembekalanpkl_detail")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_kelompok_pembekalanpkl_detail.id_mhs")->where($where)->get();
        $data['matauji'] = $this->db->get_where("tb_matauji_pembekalan_pkl",$where_)->row();
        $data['content'] = 'dosen/pkl/nilai_pembekalan/input_nilai';
        $this->load->view('_layouts/main_v',$data);
    }

    public function input_nilai_pembekalanpkl(){
        if(isset($_POST) && !empty($_POST)){
            $grade = $this->input->post('grade');
            $idjadwal = $this->input->post('idjadwal');
            $cekperiode = $this->db->query("SELECT id_periode FROM tb_periode_pkl WHERE status_pkl='Aktif' ");
            if($cekperiode->num_rows()>0){
                $periode = $cekperiode->row()->id_periode;
            }else{
                $periode = NULL;
            }

            foreach ($_POST['idmhs'] as $tag=>$val) {
                $iduji = $_POST['iduji'][$tag];
                $idmhs = $_POST['idmhs'][$tag];
                $nilai = $_POST['nilai'][$tag];
                $kel = $_POST['kelompok'][$tag];

                if($nilai>=$grade){
                    $ket = "LULUS";
                }else{
                    $ket = "TIDAK LULUS";
                }
                $this->db->query("INSERT INTO tb_ujian_pembekalanpkl VALUES(NULL,'$iduji','$kel','$idmhs','$nilai','$ket','UJIAN AWAL',NULL,'$periode') ");
            }

            $this->db->query("UPDATE tb_jadwal_pembekalanpkl SET status_jadwal='false' WHERE id_jadwal='$idjadwal' ");
            $this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                    <h4><i class='icon fa fa-check'></i> Success!</h4>
                    Berhasil Menginputkan Nilai Pembekalan PKL
                </div>");
            header('location:'.base_url().'Dosen/Nilai_pembekalan');
        }else $this->error();
    }


    //ULANG
    public function ulang(){
        $dosen = $this->session->userdata('id_dosen');
        $where = "tb_periode_pkl.status_pkl='Aktif' AND tb_jadwal_pembekalanpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanpkl.status_jadwal='true' ";
        $data['nilai'] = $this->db->query("SELECT * FROM tb_jadwal_pembekalanulangpkl, tb_matauji_pembekalan_pkl, tb_ruangan, tb_prodi WHERE tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanulangpkl.id_ujipembekalan AND tb_ruangan.id_ruangan=tb_jadwal_pembekalanulangpkl.id_ruangan AND tb_prodi.id_prodi=tb_matauji_pembekalan_pkl.id_prodi AND tb_jadwal_pembekalanulangpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanulangpkl.aktif='true' ");
        $data['content'] = 'dosen/pkl/nilai_pembekalan/nilai_pembekalanulang_v';
        $this->load->view('_layouts/main_v',$data);
    }

    public function get_peserta_ulang($idjadwal){
        $data['id_jadwal'] = $idjadwal;
        $where = "tb_jadwal_pembekalanulangpkl.id_jadwal_ulang='$idjadwal' ";
        $data['peserta'] = $this->db->select("*")->from("tb_ujian_pembekalanulangpkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_ujian_pembekalanulangpkl.id_mhs")->join("tb_jadwal_pembekalanulangpkl","tb_jadwal_pembekalanulangpkl.id_jadwal_ulang=tb_ujian_pembekalanulangpkl.id_jadwal_ulang")->join("tb_matauji_pembekalan_pkl","tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanulangpkl.id_ujipembekalan")->where($where)->get();
        $data['act'] ='YES';
        //$data['matauji'] = $this->db->get_where("tb_matauji_pembekalan_pkl",$where_)->row();
        $data['content'] = 'dosen/pkl/nilai_pembekalan/input_nilaiulang';
        $this->load->view('_layouts/main_v',$data);
    }


    public function input_nilai_pembekalanpkl_ulang(){
        if(isset($_POST) && !empty($_POST)){
            $grade = $this->input->post('grade');
            $idjadwal = $this->input->post('idjadwal');
            $cekperiode = $this->db->query("SELECT id_periode FROM tb_periode_pkl WHERE status_pkl='Aktif' ");
            if($cekperiode->num_rows()>0){
                $periode = $cekperiode->row()->id_periode;
            }else{
                $periode = NULL;
            }

            foreach ($_POST['idmhs'] as $tag=>$val) {
                $iduji = $_POST['iduji'][$tag];
                $idmhs = $_POST['idmhs'][$tag];
                $nilai = $_POST['nilai'][$tag];
                $kel = $_POST['kelompok'][$tag];

                if($nilai>=$grade){
                    $ket = "LULUS";
                }else{
                    $ket = "TIDAK LULUS";
                }
                $this->db->query("INSERT INTO tb_ujian_pembekalanpkl VALUES(NULL,'$iduji','$kel','$idmhs','$nilai','$ket','UJIAN ULANG',NULL,'$periode') ");

                $this->db->query("UPDATE tb_ujian_pembekalanulangpkl SET status_ujian_ulang='sudah terlaksana' WHERE id_jadwal_ulang='$idjadwal' AND id_mhs='$idmhs' ");
            }
            $this->db->query("UPDATE tb_jadwal_pembekalanulangpkl SET aktif='false' WHERE id_jadwal_ulang='$idjadwal' ");

            $this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                    <h4><i class='icon fa fa-check'></i> Success!</h4>
                    Berhasil Menginputkan Nilai Pembekalan PKL
                </div>");
            header('location:'.base_url().'Dosen/Nilai_pembekalan');
        }else $this->error();
    }

}