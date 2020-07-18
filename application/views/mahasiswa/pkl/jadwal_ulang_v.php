<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary">
  <div class="box-header">
    <i class="fa fa-calendar fa-fw"></i>
    <h3 class="box-title">Jadwal Pembekalan Ulang</h3>
  </div>
  <div class="box-body">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#302b23; color:white;">
					<th width="5%">No.</th>
					<th>Tanggal</th>
					<th>Pukul</th>
					<th>Matauji</th>
					<th>Dosen</th>
					<th>Kuota</th>
					<th>Kuota Tersisa</th>
					<th width="5%">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($jadwal->result() as $r){
					$no++;
					$cek = $this->db->query("SELECT id_ujian_ulang FROM tb_ujian_pembekalanulangpkl WHERE id_jadwal_ulang='$r->id_jadwal_ulang' ");
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo nama_hari($r->tanggal).', '.tgl_indo($r->tanggal) ?></td>
					<td><?php echo date('H:i',strtotime($r->pukul)) ?></td>
					<td><?php echo $r->nama_matauji ?></td>
					<td><?php echo $r->nama_dosen ?></td>
					<td><?php echo $r->kuota ?></td>
					<td><?php echo $r->kuota-$cek->num_rows() ?></td>
					<td>
						<a href="<?=base_url()?>Mahasiswa/Jadwal_pembekalanpkl/ambil/<?=$r->id_jadwal_ulang?>/<?=$r->id_ujipembekalan?>" class="btn btn-primary btn-xs btn-flat"><i class="fa fa-check-square-o fa-fw" style="color:#ffffff;"></i>  <span style="color:#ffffff;">Ambil</span></a>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>


<div class="box box-primary">
  <div class="box-header">
    <i class="fa fa-check-square-o fa-fw"></i>
    <h3 class="box-title">Jadwal yang Diambil</h3>
  </div>
  <div class="box-body">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#f39c12; color:white;">
					<th width="5%">No.</th>
					<th>Tanggal</th>
					<th>Pukul</th>
					<th>Matauji</th>
					<th>Dosen</th>
					<th width="5%">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if($ambil->num_rows()>0){
				$no =0;
				foreach($ambil->result() as $s){
					$no++;
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo nama_hari($s->tanggal).', '.tgl_indo($s->tanggal) ?></td>
					<td><?php echo date('H:i',strtotime($s->pukul)) ?></td>
					<td><?php echo $s->nama_matauji ?></td>
					<td><?php echo $s->nama_dosen ?></td>
					<td>
						<a href="javascript:;" class="btn btn-danger btn-xs btn-flat hapus-data" data-toggle="modal" data-target="#konfirmasiHapus" data-id="<?=md5($s->id_ujian_ulang)?>"><i class="fa fa-close fa-fw" style="color:#ffffff;"></i>  <span style="color:#ffffff;">Batal</span></a>
					</td>
				</tr>
				<?php } 
				}else{
					echo "<tr><td colspan='6'>Data Tidak Ditemukan</td></tr>";
				}
				?>
			</tbody>
		</table>
	</div>
</div>


<div id="tempat-modal"></div>

<div class="modal fade" id="konfirmasiHapus" role="dialog">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="col-md-offset-1 col-md-10 col-md-offset-1 well">
        <h3 style="display:block; text-align:center;">Hapus Data Ini?</h3>
        <form method="post" action="<?=base_url()?>Mahasiswa/Jadwal_pembekalanpkl/batalkan">
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

	$('#pkl').addClass('active');
	$('#reg_ulang').addClass('active');

	//modal hapus
	$(document).on("click", ".hapus-data", function() {
		id = $(this).attr("data-id");
		$('#id_').val(id);
	})
</script>