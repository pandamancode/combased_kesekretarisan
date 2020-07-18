<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary with-border">
  <div class="box-header">
    <i class="fa fa-pencil fa-fw"></i>
    <h3 class="box-title">Entry Nilai</h3>
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
					<th>Pengawas</th>
					<th width="15%"><strong>Grade : <span style="font-size: 12pt;color:red;"><?=$matauji->grade_nilai?></span></strong></th>
				</tr>
			</thead>
			<form method="post" action="<?=base_url()?>Dosen/Jadwal/simpan_nilai">
			<tbody>
				<?php
				$no =0;
				foreach($peserta->result() as $r){
					$no++;
					//$mhs = $this->db->get_where("tb_mahasiswa",array('npm'=>$r->npm))->row();
					$mhs = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_mahasiswa.npm",$r->npm)->order_by("tb_mahasiswa.npm","ASC")->get()->row();
					$pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$id_dosen));
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?=$mhs->npm?></td>
					<td><?=$mhs->nama_mhs?></td>
					<td><?=$mhs->nama_prodi?></td>
					<td><?php echo $matauji->nama_matauji ?></td>
					<td><?php echo $pengawas->row()->nama_dosen ?></td>
					<td>
						<input type="hidden" name="npm[]" value="<?=$mhs->npm?>">
						<input type="hidden" name="id_ujian[]" value="<?=$r->id_ujian?>">
						<input type="hidden" name="id_matauji[]" value="<?=$matauji->id_matauji?>">
						<input type="hidden" name="grade[]" value="<?=$matauji->grade_nilai?>">
						<input type="hidden" name="id_dosen[]" value="<?=$pengawas->row()->id_dosen?>">
						<input type="number" name="nilai[]" class="form-control" placeholder="Nilai" required>
					</td>
					
				</tr>
				<?php } ?>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7">
						<button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i><i> Submit</i></button>
						<a href="<?=base_url()?>Dosen/Jadwal" class="btn btn-warning btn-sm"><i class="fa fa-reply"></i><i> Kembali</i></a>
					</td>
				</tr>
			</tfoot>
			</form>
		</table>
  	</div>
  </div>
</div>

<script type="text/javascript">
	$('#jadwal').addClass('active');
</script>