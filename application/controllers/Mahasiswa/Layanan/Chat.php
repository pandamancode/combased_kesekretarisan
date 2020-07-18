<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends CI_Controller {

	function __construct(){
		parent::__construct();
    	if ($this->session->userdata('uname')==""){
			redirect('login');
		}else if ($this->session->userdata('userlevel')<>"MAHASISWA"){
			redirect('login');
		}
    }

	public function index()
	{
		/*$id = $this->session->userdata('idmhs');
		$data['chat'] = $this->db->select("*")->from("tb_chat")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_chat.id_mhs")->where("tb_mahasiswa.id_mhs",$id)->get();
		$this->db->query("UPDATE tb_chat SET status='0' WHERE id_mhs='$id' AND id_staff IS NOT NULL ");*/
		$data['content'] = 'mahasiswa/layanan/chat/chat';
		$this->load->view('_layouts/main_v',$data);
	}

	public function send_message(){
        if(isset($_POST['message']) && !empty($_POST['message'])){
            $msg = $this->input->post('message');
            $idmhs = $this->session->userdata('idmhs');
            $data = array(
            	'id_mhs' => $idmhs,
            	'pesan' => $msg,
            	'user_chat' => $idmhs,
            );
            $this->db->insert("tb_chat",$data);
            //redirect('Mahasiswa/Layanan/chat');
            echo "sukses";
        }else $this->error();
    }

    public function auto(){
    	$id = $this->session->userdata('idmhs');
		$data['chat'] = $this->db->select("*")->from("tb_chat")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_chat.id_mhs")->where("tb_mahasiswa.id_mhs",$id)->get();
		$this->db->query("UPDATE tb_chat SET status='0' WHERE id_mhs='$id' AND id_staff IS NOT NULL ");
		$this->load->view('mahasiswa/layanan/chat/chat_data',$data);
    }

}