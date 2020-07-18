<!-- <div class="msg" style="display:none;"> -->
  <?php echo @$this->session->flashdata('msg'); ?>
<!-- </div> -->
<div class="row">
  <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-envelope fa-fw"></i>
            <h3 class="box-title">Pengajuan Surat Keterangan </h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <div class="panel panel-danger panel-dark">
              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Surat Keterangan (Su-Ket) </strong></div>
              <div class="panel-body">
                <ol>
                  <li>Saudara <strong>wajib</strong> memperhatikan ketentuan Pengajuan Surat Keterangan.</li>
                  <li>Pengajuan Surat Keterangan hanya dapat dilakukan oleh mahasiswa yang tidak dalam masa cuti.
                  <li>Pastikan Saudara <strong>sudah</strong> membayar biaya perkuliahan semester yang aktif saat ini.</li>
                  <li>Surat yang di setujui dan telah selesai di buat <strong style="color:red;">WAJIB</strong> untuk diambil di BAAKU, jika surat tidak diambil, maka permohonan selanjutnya tidak akan di layani (Ditolak oleh sistem secara Otomatis).</li>
                  <li>Untuk Permohonan Surat Keterangan Kuliah hanya dapat dilakukan <strong style="color:red; font-size:16px;">sekali</strong> di setiap semester <strong style="color:red; font-size:16px;"> untuk keperluan yang sama </strong>.</li>
                  <li>Untuk Permohonan Surat Keterangan Lulus hanya dapat dilakukan jika <strong style="color:red; font-size:16px;">sudah lulus</strong>.</li>
                  <li>Untuk melihat/download Surat Keterangan Kuliah dapat dilakukan melalui kolom <strong> Action &gt; Download Suket</strong></li>
                </ol>
    </div>
            </div>
            <!-- /.box-Filter -->
             <div class="col-sm-12"  style="text-align:right; margin-top:20px; margin-bottom:10px;">
            <button class="btn btn-danger Add-dataDaftarSuket" data-toggle="modal"  data-dismiss="modal"><i class="fa fa-plus"></i> <strong>Buat Su-Ket</strong></button>
         </div>
         <div class="col-sm-12 ">
         	<?php if ($this->session->userdata('Statussuket')=="Success"){ ?>
                <div class="alert alert-success alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h4><i class="icon fa fa-check"></i> Proses Sukses!</h4>
                   <?php echo $this->session->userdata('msgsuket'); ?>
                </div>
              <?php  }elseif($this->session->userdata('Statussuket')=="Failed"){ ?>
              	<div class="alert alert-warning alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h4><i class="icon fa fa-ban"></i> Proses Gagal!</h4>
                  <?php echo $this->session->userdata('msgsuket'); ?>
                </div>
              <?php
			  		}
					$msg = array('Statussuket' => '','msgsuket' => '');
            		$this->session->set_userdata($msg);
			   ?>
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-history fa-fw"></i><strong> &nbsp; Riwayat Pengajuan Surat Keterangan</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th width="5%">No.</th>
                    <th>Semester</th>
                  	<th>Jenis Su-Ket</th>
<!--                     <th>Keperluan</th> -->
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                 <!-- <tr>
                    <th>(1)</th>
                    <th>(2)</th>
                    <th>(3)</th>
                    <th>(4)</th>
                    <th>(5)</th>
                  </tr> -->
                </thead>
                <tbody id="data-suket" >
                <?php
				 //if($jmlpengajuan>0){
					$nomor=0;
					foreach($pengajuan as $suket):
						$nomor ++;
						$ta= substr($suket['semester'],0,4).'/'.(substr($suket['semester'],0,4)+1);
						//0. Ditolak,
						//1. Menunggu di proses,
						//2. Surat Sedang diproses,
						//3. Surat Sudah Selesai,
						//4. Surat sdh diambil,
						//5. Proses Seslasi
						$semester= $suket['nama_semester'].' T.A. '.$ta;
                
                		if($suket['status_pengajuan']=='0'){
                        	$status = "<span class='label label-danger'><i class='fa fa-close'></i> Ditolak</span>";
                        }else if($suket['status_pengajuan']=='1'){
                        	$status = "<span class='label label-warning'><i class='fa fa-refresh fa-spin'></i> Menunggu diproses</span>";
                        }else if($suket['status_pengajuan']=='2'){
                        	$status = "<span class='label label-success'><i class='fa fa-refresh fa-spin'></i> Surat Sedang dibuat</span>";
                        }else if($suket['status_pengajuan']=='3'){
                        	$status = "<span class='label label-info'><i class='fa fa-check'></i> Surat Sudah Selesai</span>";
                        }else if($suket['status_pengajuan']=='4'){
                        	$status = "<span class='label label-primary'><i class='fa fa-check-square-o'></i> Surat Sudah Diambil</span>";
                        }
				?>
                  <tr>
                    <td style="text-align:left;"><strong><?php echo $nomor; ?></strong></td>
                    <td><?php  echo $semester; ?> <br>
                      <strong>Pengajuan</strong> <br>
                      <em>
					  	<?php
							$tglpengajuan  = $suket['tgl_pengajuan'];

							echo nama_hari(date('Y-m-d',strtotime($tglpengajuan))).', '.tgl_indo(date('Y-m-d',strtotime($tglpengajuan)));
						?>
                      </em>
                    </td>
                    <td>Surat Keterangan <?php echo $suket['jenis_surat']; ?></td>
<!--                   	<td><?php //echo $suket['keperluan']; ?></td> -->
                    <td>
                    	<?php echo $status ?>
                    	<?php if($suket['status_pengajuan']=='0'){ ?>
                    	<p>(<?php echo $suket['alasan_tolak']; ?>)</p>
                    	<?php } ?>
                  	</td>
                    <td>
                    	<?php
                  		if($suket['status_pengajuan']=='0'){ ?>
                        	<a href='javascript:;' class='btn btn-primary btn-xs edit-permohonan' data-id="<?=$suket['id_suket']?>"><i class='fa fa-send'></i> Ajukan</a>
                        <?php }else if($suket['status_pengajuan']=='1'){ ?>
                        	<a href="<?php echo base_url('Mahasiswa/Suket/deleteSuket/'.md5($suket['id_suket'])) ?>" onclick="return confirm('Anda Yakin Ingin membatalkan Permohonan ini?');" class='btn btn-danger btn-xs'><i class='fa fa-close'></i> Batalkan</a>
                        <?php }else if($suket['status_pengajuan']=='2'){
                        	//$btn = "";
                        }else if($suket['status_pengajuan']=='3'){ ?>
                        	<a href="<?=base_url()?>" target="_blank" class="btn btn-success"><i class="fa fa-cloud-upload"></i>Download</a>
                  <?php }else if($suket['status_pengajuan']=='4'){
                        	//$btn = "";
                        }
                    	//echo $btn;
                    	?>
                  	</td>
                  </tr>


             <?php
				  endforeach;
				 //}
			 ?>

                </tbody>
              </table>
            </div>
          </div>
       </div>  <!-- /.box-tabel cuti -->
  </div>
    <!-- /.box-body -->
</div>
  <!-- /.box -->
</div>

<!-- End  Data Periode ---------------------------------------->
</div>





<div id="tempat-modal" class="bs-example-modal-lg"></div>

<?php //show_my_confirm('konfirmasiHapus', 'hapus-Suket', 'Batalkan Permohonan Pembuatan Surat Keterangan Kuliah Ini?', 'Ya, Hapus Data Ini'); ?>

<script type="text/javascript">
	//alert notification showing
	$(document).ready(function(){setTimeout(function(){$(".alert").fadeIn('slow');}, 500);});
    setTimeout(function(){$(".alert").fadeOut('slow');}, 3000);
	
	//mengaktifkan menu sidebar
	$("#mn_suket").addClass('active');

	
	//hapus script
    var idskt;
	$(document).on("click", ".konfirmasiHapus-Suket", function() {
		idskt = $(this).attr("data-id");
	})

	
	$(document).on("click", ".hapus-Suket", function() {
		var id = idskt;

		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Mahasiswa/Suket/deleteSuket'); ?>",
			data: "id=" +id
        	
		})
		.done(function(data) {
			$('#konfirmasiHapus').modal('hide');
      		location.reload();
		})
	 e.preventDefault();
	})



	$(document).on("click", ".Add-dataDaftarSuket", function() {
		var id = "";

		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Mahasiswa/Suket/DaftarSuket'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#Daftar_Suket').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');

			$('#Daftar_Suket').modal('show');
		})
	})


	$(document).on("click", ".edit-permohonan", function() {
		var id = $(this).attr("data-id");

		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Mahasiswa/Suket/updateSuketmodal'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#tempat-modal').html(data);

			$('#edit_permohonan').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');
			$('#edit_permohonan').modal('show');
		})
	})



</script>
