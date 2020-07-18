<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function show_my_modal($content='', $id='', $data='', $size='md') {
	$_ci = &get_instance();

	if ($content != '') {
		$view_content = $_ci->load->view($content, $data, TRUE);

		return '<div class="modal fade" id="' .$id .'" role="dialog" data-backdrop="static" data-keyboard="false">
				  <div class="modal-dialog modal-' .$size .'" role="document">
				    <div class="modal-content">
				        ' .$view_content .'
				    </div>
				  </div>
				</div>';
	}
}

function format_rp($angka)
{
	$rupiah=number_format($angka,0,',','.');
	return $rupiah;
}

if ( ! function_exists('rdmstr'))
{
	function rdmstr($length=16){
		$chars ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";//length:36
		$final_rand='';
		for($i=0;$i<$length; $i++)
		{
			$final_rand .= $chars[ rand(0,strlen($chars)-1)];
	 
		}
		return $final_rand;
	}
}

if ( ! function_exists('is_koordinator'))
{
	function is_koordinator($id){
		$_gembel = &get_instance();

		//cek penanggung jawab pkl
		$var = $_gembel->db->get_where("tb_koordinator",array('status'=>'aktif', 'id_dosen'=>$id));
		if($var->num_rows()>0){
			return "TRUE";
		}else{
			return "FALSE";
		}
	}
}