<div class="box box-primary box-solid">
    <div class="box-header with-border">
    <i class="fa fa-history"></i>
      <h3 class="box-title">History Nilai</h3>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body">
		<table class="table table-hover">
			<thead class="table-header">
				<tr style="background-color:#3c8dbc; color:white;">
					<th width="5%">No.</th>
					<th>Mata Uji</th>
                    <th>Kelompok</th>
                    <th>Tanggal Ujian</th>
                    <th>Pengambilan</th>
                    <th>Nilai</th>
                    <th>Keterangan</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if($nilai->num_rows()>0){
				$no =0;
				foreach($nilai->result() as $r1){
					$no++;

					if($r1->keterangan=='Lulus'){
						$ket = "<span class='label label-success'><i class='fa fa-check'></i> Lulus</span>";
					}else{
						$ket = "<span class='label label-danger'><i class='fa fa-close'></i> Tidak Lulus</span>";
					}
					//matauji
					$matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r1->id_matauji))->row();
					//ujian
					$ujian = $this->db->get_where("tb_ujian",array('id_ujian'=>$r1->id_ujian))->row();

				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo $matauji->nama_matauji ?></td>
                    <td><?php echo $ujian->kelompok ?></td>    
                    <td><?php echo tgl_indo($ujian->tgl_ujian) ?></td>
                    <td><?php echo $r1->pengambilan ?></td>
                    <td><?php echo $r1->nilai ?></td>
                    <td><?php echo $ket ?></td>
				</tr>
				<?php } }else echo "<tr><td colspan='7'>Tidak Ada Data</td></tr>"; ?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('#history').addClass('active');
</script>