<div class="box box-primary box-solid">
  <div class="box-header">
    <i class="fa fa-pencil fa-fw"></i>
    <h3 class="box-title">Entry Nilai &amp; Daftar Hadir</h3>
  </div>
  <div class="box-body">
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
					<th width="5%">No.</th>
					<th width="10%">Option</th>
					<th>Nama Matauji</th>
					<th>Kelompok</th>
					<th>Waktu</th>
					<th>Ruang</th>
					<th>Pengawas</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r){
					$no++;

					$matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji));
					//cek pengawas
					$pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$r->id_dosen));
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td>
						<a title="Entry Nilai" href="<?=base_url()?>Administrator/Nilai/entry/<?=$r->id_ujian?>" class="btn btn-primary btn-xs btn-flat xtooltip"><i class="fa fa-pencil fa-fw" style="color:#ffffff;"></i> <span style="color:#ffffff;"></span></a>
						<a title="Cetak Daftar Hadir" href="<?=base_url()?>Administrator/Nilai/kehadiran/<?=$r->id_ujian?>" target="_blank" class="btn btn-danger btn-xs btn-flat xtooltip"><i class="fa fa-print fa-fw" style="color:#ffffff;"></i>  <span style="color:#ffffff;"></span></a>
					</td>
					<td><?php echo $matauji->row()->nama_matauji ?></td>
					<td><?=$r->kelompok?></td>
					<td><?=tgl_indo($r->tgl_ujian)?> Pukul <?=$r->pukul?></td>
					<td><?=$r->ruang?></td>
					<td><?=$pengawas->row()->nama_dosen?></td>
					
				</tr>
				<?php } ?>
			</tbody>
		</table>
  	</div>
  </div>
</div>

<script type="text/javascript">
	setTimeout(function() {document.getElementById('respon1').innerHTML='';},3000);

	$('#nilai').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	    $('.xtooltip').tooltip(); 
	});
	<?php if ($this->session->flashdata('msg')=='error'){ ?>
	swal({
        title: "Failed",
        text: "Data Peserta Tidak ditemukan!",
        timer: 1500,
        showConfirmButton: false,
        type: "error"
    });
	<?php }else if($this->session->flashdata('msg')=='success'){ ?>
	swal({
        title: "Done",
        text: "Berhasil Minginputkan Nilai!",
        timer: 1500,
        showConfirmButton: false,
        type: "success"
    });
	<?php } ?>
</script>