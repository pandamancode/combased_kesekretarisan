<div class="box box-primary box-solid">
    <div class="box-header with-border">
    <i class="fa fa-file"></i>
      <h3 class="box-title">Nilai Pembekalan PKL</h3>
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
					<th>Matauji</th>
					<th>Nilai</th>
					<th>Keterangan</th>
					<th>Status Ujian</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($nilai->result() as $r){
					$no++;
					if($r->keterangan=='LULUS'){
						$status = "<span class='label label-success'>Lulus</span>";
					}else{
						$status = "<span class='label label-warning'>Tidak Lulus</span>";
					}
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo nama_hari(date('Y-m-d',strtotime($r->tanggal_penilaian))).', '.tgl_indo(date('Y-m-d',strtotime($r->tanggal_penilaian))) ?></td>
					<td><?php echo $r->nama_matauji ?></td>
					<td><?php echo $r->nilai ?></td>
					<td><?php echo $status ?></td>
					<td><strong><?php echo $r->status_ujian ?></strong></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('#pkl').addClass('active');
	$('#nilai').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	});
</script>