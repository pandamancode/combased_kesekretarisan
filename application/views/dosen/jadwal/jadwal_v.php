<div class="box box-primary box-solid">
  <div class="box-header">
    <i class="fa fa-calendar fa-fw"></i>
    <h3 class="box-title">Data Jadwal</h3>
  </div>
  <div class="box-body">
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
	                <th width="5%">No</th>
	                <th>Option</th>
	                <th>Mata Uji</th>
	                <th>Kelompok</th>
	                <th>Tanggal</th>
	                <th>Pukul</th>
	                <th>Ruang</th>
	                <th>Peserta</th>
                
              	</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r){
					$no++;
					//cek matauji
					$matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji));

					$peserta = $this->db->get_where("tb_peserta_ujian",array('id_ujian'=>$r->id_ujian));

				?>
				<tr>
					<td><?php echo $no ?></td>
					<td>
						<a href="<?=base_url()?>Dosen/Jadwal/entry_nilai/<?=$r->id_ujian?>" class="btn btn-primary btn-xs btn-flat xtooltip"> <i class="fa fa-edit fa-fw" style="color:#ffffff;"></i> <span style="color:#ffffff;"> Entry Nilai</span></a>
					</td>
					<td><?php echo $matauji->row()->nama_matauji ?></td>
					<td><?=$r->kelompok?></td>
					<td><?=tgl_indo($r->tgl_ujian)?></td>
					<td><?=$r->pukul?></td>
					<td><?=$r->ruang?></td>
					<td><?=$peserta->num_rows()?></td>
					
				</tr>
				<?php } ?>
			</tbody>
		</table>
  </div>
	</div>
</div>

<script type="text/javascript">
	$('#jadwal').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	    $('.xtooltip').tooltip(); 
	});

	<?php if ($this->session->flashdata('msg')=='error'){ ?>
	swal({
        title: "Failed",
        text: "Data Tidak ditemukan!",
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