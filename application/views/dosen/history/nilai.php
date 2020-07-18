<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary with-border">
  <div class="box-header">
    <i class="fa fa-list-alt fa-fw"></i>
    <h3 class="box-title">Detail Nilai</h3>
  </div>
  <div class="box-body">
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#747475; color:white;">
					<th width="5%">No.</th>
					<th>NPM</th>
					<th>Nama Mahasiswa</th>
					<th>Program Studi</th>
					<th>Matauji</th>
					<th>Nilai</th>
					<th>Keterangan</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($peserta->result() as $r){
					$no++;
					//$mhs = $this->db->get_where("tb_mahasiswa",array('npm'=>$r->npm))->row();
					$mhs = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_mahasiswa.npm",$r->npm)->order_by("tb_mahasiswa.npm","ASC")->get()->row();
					$pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$id_dosen));

					if($r->status=='true'){
						$st = "<span class='label label-success'><i class='fa fa-check'></i> Sudah disetujui</span>";
					}else{
						$st = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Belum disetujui</span>";
					}
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?=$mhs->npm?></td>
					<td><?=$mhs->nama_mhs?></td>
					<td><?=$mhs->nama_prodi?></td>
					<td><?php echo $matauji->nama_matauji ?></td>
					<td><?php echo $r->nilai ?></td>
					<td><?php echo $r->keterangan ?></td>
					<td><?=$st?></td>
				</tr>
				<?php } ?>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8">
						<a href="<?=base_url()?>Dosen/History" class="btn btn-warning btn-sm"><i class="fa fa-reply"></i><i> Kembali</i></a>
					</td>
				</tr>
			</tfoot>
		</table>
  	</div>
  </div>
</div>

<script type="text/javascript">
	$('#history').addClass('active');
</script>