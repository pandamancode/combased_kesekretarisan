<div class="box box-primary with-border">
  <div class="box-header">
    <i class="fa fa-list-alt fa-fw"></i>
    <h3 class="box-title">Data Nilai</h3>
  </div>
  <div class="box-body">
  		<div class="table-responsive">
		<table class="table table-hover" id="table">
			<thead class="table-header">
				<tr style="background-color:#747475; color:white;">
					<th width="5%">No.</th>
					<th>NPM</th>
					<th>Nama Mahasiswa</th>
					<th>Matauji</th>
					<th>Pengambilan</th>
					<th>Nilai</th>
					<th>Keterangan</th>
					<th>Option</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no =0;
				foreach($nilai->result() as $r){
					$no++;
					//$mhs = $this->db->get_where("tb_mahasiswa",array('npm'=>$r->npm))->row();
					$mhs = $this->db->select("*")->from("tb_mahasiswa")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_mahasiswa.npm",$r->npm)->order_by("tb_mahasiswa.npm","ASC")->get()->row();
					$matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji))->row();

					if($r->keterangan=='Lulus'){
						$ket = "<span class='label label-success'>Lulus</span>";
					}else if($r->keterangan=='Tidak Lulus'){
						$ket = "<span class='label label-danger'>Tidak Lulus</span>";
					}
				?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?=$mhs->npm?></td>
					<td><?=$mhs->nama_mhs?></td>
					<td><?php echo $matauji->nama_matauji ?></td>
					<td><?php echo $r->pengambilan ?></td>
					<td><?php echo $r->nilai ?></td>
					<td><?php echo $ket ?></td>
					<td><a href="javascript:;" data-id="<?=$r->id_nilai?>" class="btn btn-primary btn-xs btn-flat btn-update"><i class="fa fa-edit"></i> Ubah Nilai</a></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
  	</div>
  </div>
</div>

<div id="tempat-modal"></div>

<script type="text/javascript">
	$('#rekap_nilai').addClass('active');

	//get modal nilai
	$(document).on("click", ".btn-update", function() {
	  var id = $(this).attr("data-id");
	  
	  $.ajax({
	    method: "POST",
	    url: "<?php echo base_url('Administrator/rekap_nilai/mod_ubahnilai'); ?>",
	    data: "id=" +id
	  })
	  .done(function(data) {
	    $('#tempat-modal').html(data);        
	    $('#md_ubah').modal('show');
	  })
	})

	<?php if($this->session->flashdata('msg')=='success'){ ?>
	swal({
        title: "Done",
        text: "Berhasil Merubah Nilai!",
        timer: 1500,
        showConfirmButton: false,
        type: "success"
    });
	<?php } ?>
</script>