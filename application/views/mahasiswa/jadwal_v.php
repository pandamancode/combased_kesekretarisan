<div class="box box-primary box-solid">
    <div class="box-header with-border">
    <i class="fa fa-calendar "></i>
      <h3 class="box-title">Jadwal Combased Kesekretarisan</h3>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
					<th width="5%">No.</th>
					<th>Mata Uji</th>
                    <th>Kelompok</th>
                    <th>Tanggal Ujian</th>
                    <th>Ruangan</th>
                    <th>Pukul</th>
                    <th>Pengawas</th>
                    <th>Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r1){
					$no++;
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo $r1->nama_matauji ?></td>
                    <td><?php echo $r1->kelompok ?></td>    
                    <td><?php echo nama_hari($r1->tgl_ujian).', '.tgl_indo($r1->tgl_ujian)  ?></td>          
                    <td><?php echo $r1->ruang ?></td>
                    <td><?php echo $r1->pukul ?></td>
                    <td><?php echo $r1->nama_dosen ?></td>
                    <td><a target="_blank" href="<?php echo base_url();?>Mahasiswa/Jadwal/cetak_jadwal/<?=md5($r1->id_ujian)?>" class="btn btn-primary btn-xs"><i class="fa fa-print"></i> Cetak Kartu Peserta</a></td>
		
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('#jadwal').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	});
</script>