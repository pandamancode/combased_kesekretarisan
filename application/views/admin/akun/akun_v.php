<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary box-solid">
  <div class="box-header">
    <i class="fa fa-users fa-fw"></i>
    <h3 class="box-title">Data Akun Pengguna</h3>
  </div>
  <div class="box-body">
    <div style="text-align:right; margin-top:10px; margin-bottom: 10px;">
        <button class="btn btn-primary btn-add" ><i class="fa fa-plus-circle fa-fw"></i> Pengguna Baru</button>
    </div>
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr>
					<th width="5%">No.</th>
					<th>NIK</th>
					<th>Nama Lengkap</th>
					<th>Username</th>
					<th>Level</th>
					<th>Terakhir Login</th>
					<th width="15%">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($akun->result() as $r){
					$no++;
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo $r->nik ?></td>
					<td><?php echo $r->nama_staff ?></td>
					<td><?php echo $r->username ?></td>
					<td><?php echo $r->level ?></td>
					<td><?php echo $r->last_login ?></td>
					<td>
						<a href="javascript:;" title="Reset Password" class="btn btn-primary btn-xs btn-flat btn-update" data-id="<?php echo $r->id_user ?>"> <i class="fa fa-key fa-fw" style="color:#ffffff;"></i> <span style="color:#ffffff;"> Reset &nbsp;</span></a>
						<a href="javascript:;" title="Hapus" class="btn btn-danger btn-xs btn-flat hapus-data" data-toggle="modal" data-target="#konfirmasiHapus" data-id="<?php echo $r->id_user ?>"><i class="fa fa-trash fa-fw" style="color:#ffffff;"></i>  <span style="color:#ffffff;"> Hapus</span></a>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
  		</div>
	</div>
</div>


<div id="tempat-modal"></div>

<div class="modal fade" id="konfirmasiHapus" role="dialog">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="col-md-offset-1 col-md-10 col-md-offset-1 well">
        <h3 style="display:block; text-align:center;">Hapus Data Ini?</h3>
        <form method="post" action="<?php echo base_url() ?>Administrator/Akun/hapus">
          <input type="hidden" name="id" id="id_">
          <div class="col-md-6">
            <button type="submit" class="form-control btn btn-primary"> <i class="glyphicon glyphicon-ok-sign"></i> Ya, Hapus Data Ini</button>
          </div>
          <div class="col-md-6">
            <button class="form-control btn btn-danger" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Tidak</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
	setTimeout(function() {document.getElementById('respon1').innerHTML='';},5000);

	$('#hak_akses').addClass('active');
	$('#akun').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	});

	//modal add
	$(document).on("click", ".btn-add", function() {
	  var id = $(this).attr("data-id");
	  
	  $.ajax({
	    method: "POST",
	    url: "<?php echo base_url('Administrator/Akun/add'); ?>",
	    data: "id=" +id
	  })
	  .done(function(data) {
	    $('#tempat-modal').html(data);        
	    $('#md_add').modal('show');
	  })
	})

	//modal Edit
	$(document).on("click", ".btn-update", function() {
	  var id = $(this).attr("data-id");
	  
	  $.ajax({
	    method: "POST",
	    url: "<?php echo base_url('Administrator/Akun/update'); ?>",
	    data: "id=" +id
	  })
	  .done(function(data) {
	    $('#respon1').html(data);        
	    //$('#md_updt').modal('show');
	  })
	})

	//modal hapus
	$(document).on("click", ".hapus-data", function() {
		id = $(this).attr("data-id");
		$('#id_').val(id);
	})
</script>