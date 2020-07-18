<div class="box box-primary box-solid">
    <div class="box-header with-border">
    <i class="fa fa-calendar "></i>
      <h3 class="box-title">Jadwal Pembekalan PKL</h3>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
					<th width="5%">No.</th>
					<th>Tanggal</th>
					<th>Pukul</th>
					<th>Matauji</th>
					<th>Kelompok</th>
					<th>Dosen</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r){
					$no++;
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo nama_hari($r->tanggal).', '.tgl_indo($r->tanggal) ?></td>
					<td><?php echo date('H:i',strtotime($r->pukul)) ?></td>
					<td><?php echo $r->nama_matauji ?></td>
					<td><?php echo $r->nama_kelompok ?></td>
					<td><?php echo $r->nama_dosen ?></td>
		
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('#pkl').addClass('active');
	$('#jadwalpkl').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	});
</script>