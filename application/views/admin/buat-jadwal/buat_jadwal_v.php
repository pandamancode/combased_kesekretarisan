<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary box-solid">
  <div class="box-header">
    <i class="fa fa-calendar fa-fw"></i>
    <h3 class="box-title">Data Jadwal</h3>
  </div>
  <div class="box-body">
    <div style="text-align:right; margin-top:10px; margin-bottom: 10px;">
        <button class="btn btn-primary btn-add" ><i class="fa fa-plus-circle fa-fw"></i> Jadwal Baru</button>
    </div>
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
	                <th class="text-center" width="5%">No</th>
	                <th class="text-center">Option</th>
	                <th class="text-center">Mata Uji</th>
	                <th class="text-center">Kelompok</th>
	                <th class="text-center">Tanggal</th>
	                <th class="text-center">Pukul</th>
	                <th class="text-center">Ruang</th>
	                <th class="text-center">Pengawas</th>
	                <th class="text-center">Kuota</th>
                
              	</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r){
					$no++;
					//cek matauji
					$matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji));
					//cek pengawas
					$pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$r->id_dosen));

					$peserta = $this->db->get_where("tb_peserta_ujian",array('id_ujian'=>$r->id_ujian));

					$kuota= $peserta->num_rows().' dari '.$r->kuota;
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td>
						<a title="Ubah" href="javascript:;" class="btn btn-primary btn-xs btn-update btn-flat xtooltip" data-id="<?php echo $r->id_ujian ?>"> <i class="fa fa-edit fa-fw" style="color:#ffffff;"></i> <span style="color:#ffffff;"></span></a>
						<a title="Hapus" href="javascript:;" class="btn btn-danger btn-xs hapus-data btn-flat xtooltip" data-toggle="modal" data-target="#konfirmasiHapus" data-id="<?php echo $r->id_ujian ?>"><i class="fa fa-trash fa-fw" style="color:#ffffff;"></i>  <span style="color:#ffffff;"></span></a>
					</td>
					<td><?php echo $matauji->row()->nama_matauji ?></td>
					<td><?=$r->kelompok?></td>
					<td><?=tgl_indo($r->tgl_ujian)?></td>
					<td><?=$r->pukul?></td>
					<td><?=$r->ruang?></td>
					<td><?=$pengawas->row()->nama_dosen?></td>
					<td><?=$kuota?></td>
					
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
        <form method="post" action="<?php echo base_url() ?>Administrator/Buat_jadwal/hapus">
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
	setTimeout(function() {document.getElementById('respon1').innerHTML='';},3000);

	$('#created').addClass('active');

	$(function () {
	    $("#table").dataTable({
	      "iDisplayLength": 10,
	    });
	    $('.xtooltip').tooltip(); 
	});

	//modal add
	$(document).on("click", ".btn-add", function() {
	  var id = $(this).attr("data-id");
	  
	  $.ajax({
	    method: "POST",
	    url: "<?php echo base_url('Administrator/Buat_jadwal/add'); ?>",
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
	    url: "<?php echo base_url('Administrator/Buat_jadwal/update'); ?>",
	    data: "id=" +id
	  })
	  .done(function(data) {
	    $('#tempat-modal').html(data);        
	    $('#md_updt').modal('show');
	  })
	})

	//modal hapus
	$(document).on("click", ".hapus-data", function() {
		id = $(this).attr("data-id");
		$('#id_').val(id);
	})
</script>