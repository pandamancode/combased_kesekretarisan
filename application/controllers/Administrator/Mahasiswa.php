<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Mahasiswa extends CI_Controller {

	function __construct(){
		parent::__construct();
    	if ($this->session->userdata('uname')==""){
			redirect('Auth');
		}else if ($this->session->userdata('userlevel')<>"ADMIN"){
			redirect('Auth');
		}
    }

	public function error(){
    	$this->load->view('index.html');
    }
    
	public function index()
	{
		$data['prodi'] = $this->db->get("tb_prodi");
		$data['content'] = 'admin/mahasiswa/filter';
		$this->load->view('_layouts/main_v',$data);
	}

	public function filter_mhs(){
		$prodi = $this->input->post('prodi');
		$angkatan = $this->input->post('angkatan');
        $angt = substr($angkatan,2,2);
        //var_dump($angt);
		$cek = $this->db->query("SELECT nama_prodi,jenjang FROM tb_prodi WHERE id_prodi='$prodi' ")->row();
		$sess['prodi_name'] =  $cek->jenjang.' - '.$cek->nama_prodi;
		$sess['prodi_id'] = $prodi;
		$sess['jenjang'] = $cek->jenjang;
    	$sess['angkatan'] = $angkatan;
		$this->session->set_userdata($sess);

		$where = "tb_prodi.id_prodi='$prodi' AND LEFT(tb_mahasiswa.npm,2)='$angt' ";
		$data['mahasiswa'] = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->join("tb_fakultas","tb_fakultas.id_fakultas=tb_prodi.id_fakultas")->where($where)->get();
		$this->load->view('admin/mahasiswa/data',$data);
	}

	public function resetpw_mhs(){
		$kode = substr(str_shuffle($this->input->post('id')), 0, 8);
		$where['npm'] = $this->input->post('id');
		$data['kode'] = $kode;
		$simpan['password'] =md5($kode);
		$query = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_mahasiswa.npm",$this->input->post('id'))->get();
		foreach($query->result() as $i){
			$data['npm'] = $i->npm;
			$data['nama'] = $i->nama_mhs;
			$data['jurusan'] = $i->nama_prodi;
		}
		$this->db->update("tb_mahasiswa",$simpan,$where);
		echo show_my_modal("admin/mahasiswa/reset_pw","show-pw",$data);
	}

	public function modal_importmhs(){
		echo show_my_modal("admin/mahasiswa/import_mhs","md-import");
	}

	public function import_mhs()
    {
    	$cek = $this->db->query("SELECT id_periode FROM tb_periode WHERE status='aktif' ")->row();
    	$this->load->model('Excel_model');
        $a=$_FILES['file_upload']['name'];
        //echo "$a";exit();
        $file=$_FILES['file_upload']['name'];
        $config['upload_path'] = './asset/excel/';
        $config['allowed_types'] = '*';
        $config['max_size'] = '10000';
        $config['overwrite'] = TRUE;
        $config['encrypt_name'] = FALSE;
        $config['remove_spaces'] = TRUE;
        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if ( ! $this->upload->do_upload('file_upload')){
        $error = array('error' => $this->upload->display_errors());
            var_dump($error);
        }
        else{
            $data = $this->upload->data();

            error_reporting(E_ALL);
            date_default_timezone_set('Asia/Jakarta');

            include './asset/phpexcel/Classes/PHPExcel/IOFactory.php';

            $inputFileName = './asset/excel/' .$file;
            $objPHPExcel = PHPExcel_IOFactory::load($inputFileName);
            $sheetData = $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);

            //$objPHPExcel=$objReader->load(FCPATH.'uploads/excel/'.$file_name);
            $totalrows=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow();   //Count Numbe of rows avalable in excel
            $objWorksheet=$objPHPExcel->setActiveSheetIndex(0);

            //loop from first data untill last data
            for($i=2;$i<=$totalrows;$i++)
            {
                    $npm= $objWorksheet->getCellByColumnAndRow(1,$i)->getValue();   
                    $nama= $objWorksheet->getCellByColumnAndRow(2,$i)->getValue(); 
                    $nilai= $objWorksheet->getCellByColumnAndRow(3,$i)->getValue(); 
                    $ipk=$objWorksheet->getCellByColumnAndRow(4,$i)->getValue(); 
                    $pw = md5($objWorksheet->getCellByColumnAndRow(1,$i)->getValue());
                    $mk= $objWorksheet->getCellByColumnAndRow(5,$i)->getValue(); 

            if(!empty($npm)){

	            $resultData=array(
	                'npm'=>$npm,
	                'password'=>$pw,
	                'nama_mhs'=>$nama,
	                'id_prodi'=>$this->input->post('id_prodi'),
	                'nilai_ta'=>$nilai,
	                'ipk' => substr($ipk, 0, 3),
	                'periode' =>$cek->id_periode,
	                'masa_mukim' =>$mk,
	            );


	            $result = $this->Excel_model->import_nilai($resultData);
        	}
            //echo json_encode($resultData);
            }
            $this->session->set_flashdata("msg","<div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                <h4><i class='icon fa fa-check'></i> Success!</h4>
                Proses Import Data Mahasiswa Berhasil
            </div>");
           redirect('Master/mahasiswa');

        }
    }

	public function add(){
    	$data['fakultas'] = $this->db->select()->from("tb_fakultas")->join("tb_prodi","tb_prodi.id_fakultas=tb_fakultas.id_fakultas")->where("tb_prodi.id_prodi",$this->session->userdata('prodi_id'))->get()->row();
		echo show_my_modal("admin/mahasiswa/modal_add","md-add",$data);
	}

	public function store(){
    	if(isset($_POST) && !empty($_POST)){
        	$npm = $this->input->post('npm');
        	$where['npm'] = $npm;
        	$cek = $this->db->get_where("tb_mahasiswa",$where);
        	if($cek->num_rows()>0){
            	echo "<div class='alert alert-danger alert-dismissible'>
                	<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                	<h4><i class='icon fa fa-warning'></i> Failed!</h4>
               		NPM Sudah Ada!
            	</div>";
            }else{
           		$data = array(
                        'npm'=>$npm,
                        'id_prodi'=>$this->session->userdata('prodi_id'),
                        'jk'=>$this->input->post('jk'),
                        'status_aktif'=>'Aktif',
                        'nama_mhs'=>$this->input->post('nama_mhs'),
                        'angkatan'=>$this->input->post('angkatan'),
                        'tempatlahir_mhs'=>$this->input->post('tempatlahir'),
                        'tgllahir_mhs'=>$this->input->post('tgllahir'),
                        'agama'=>$this->input->post('agama'),
                        'password'=>md5($this->input->post('password')),
                    	);
            	$this->db->insert("tb_mahasiswa",$data);
            	echo "<div class='alert alert-success alert-dismissible'>
                	<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                	<h4><i class='icon fa fa-check'></i> Success!</h4>
               		Data Mahasiswa Berhasil Disimpan
            	</div>";
            }
        }else $this->error();
    }

    public function hapus(){
        if(isset($_POST) && !empty($_POST)){
            $where['npm'] = $this->input->post('id');
            $this->db->delete("tb_mahasiswa",$where);
            echo "<div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                <h4><i class='icon fa fa-check'></i> Success!</h4>
                Data Mahasiswa Berhasil Dihapus
            </div>";
            
        }else $this->error();
    }
}
