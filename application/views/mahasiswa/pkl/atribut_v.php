<div class="box box-primary box-solid">
    <div class="box-header with-border">
    <i class="fa fa-check-square-o"></i>
      <h3 class="box-title">Atribut PKL</h3>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
					<th width="5%">No.</th>
					<th>Perusahaan</th>
					<th>Tgl Mulai PKL</th>
					<th>Tgl Selesai PKL</th>
					<th>Atribut PKL</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($pengajuan->result() as $r){
					$no++;

					if($r->atribut_pkl=='sudah'){
						$status = "<span class='label label-success'><i class='fa fa-check-circle'></i> Sudah Diambil</span>";
					}else{
						$status = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Belum Diambil</span>";
					}
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo $r->nama_perusahaan ?></td>
					<td><?php echo tgl_indo($r->tgl_mulai_pkl) ?></td>
					<td><?php echo tgl_indo($r->tgl_selesai_pkl) ?></td>
					<td><?php if($r->atribut_pkl=='sudah'){ echo $status.'<br><i>('.tgl_indo($r->atribut_tanggal).')</i>'; }else{ echo $status; } ?></td>
		
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('#pkl').addClass('active');
	$('#atributpkl').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	});
</script>