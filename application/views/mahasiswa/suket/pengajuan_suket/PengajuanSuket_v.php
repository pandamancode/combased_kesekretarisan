<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">
  <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-calendar fa-fw"></i>
            <h3 class="box-title">Pengajuan Surat Keterangan Kuliah </h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <div class="panel panel-danger panel-dark">
              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Surat Keterangan (Su-Ket) Kuliah</strong></div>
              <div class="panel-body">
                <ol>
                  <li>Saudara <strong>wajib</strong> memperhatikan ketentuan Pengajuan Surat Keterangan Kuliah.</li>
                  <li>Pengajuan Surat Keterangan Kuliah hanya dapat dilakukan oleh mahasiswa yang tidak dalam masa cuti.
                  <li>Pastikan Saudara <strong>sudah</strong> membayar biaya perkuliahan semester yang aktif saat ini.</li>
                  <li>Surat yang di setujui dan telah selesai di buat <strong style="color:red;">WAJIB</strong> untuk diambil di BAAKU, jika surat tidak diambil, maka permohonan selanjutnya tidak akan di layani (Ditolak oleh sistem secara Otomatis).</li>
                  <li>Permohonan Surat Keterangan Kuliah hanya dapat dilakukan <strong style="color:red; font-size:16px;">sekali</strong> di setiap semester <strong style="color:red; font-size:16px;"> untuk keperluan yang sama </strong>.</li>
                  <li>Untuk melihat/download Surat Keterangan Kuliah dapat dilakukan melalui kolom <strong> Action &gt; Download Suket Kuliah</strong></li>
                </ol>
    </div>
            </div>
            <!-- /.box-Filter -->
             <div class="col-sm-12"  style="text-align:right; margin-top:20px; margin-bottom:10px;">
            <button class="btn btn-danger Add-dataDaftarSuket" data-toggle="modal"  data-dismiss="modal"><i class="fa fa-plus"></i> <strong>Buat  Su-Ket Kuliah Semester <?php echo $semester; ?></strong></button>
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
        		<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Riwayat Pengajuan Surat Keterangan Kuliah</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th class="col-xs-1">No.</th>
                    <th class="col-xs-3">Semester</th>
                    <th class="col-xs-4">Keperluan</th>
                    <th class="col-xs-2">Status</th>
                    <th class="col-xs-5">Action</th>
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
				 if($jmlpengajuan>0){
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
				?>
                  <tr>
                    <td style="text-align:left;"><strong><?php echo $nomor; ?></strong></td>
                    <td>   <?php  echo $semester; ?><br/>
                      <strong>Pengajuan</strong> <br>
                      <em>
					  	<?php
							$tglpengajuan  = $suket['tgl_pengajuan'];

							echo nama_hari(date('Y-m-d',strtotime($tglpengajuan))).', '.tgl_indo(date('Y-m-d',strtotime($tglpengajuan)));
						?>
                      </em> </td>
                    <td><?php
							echo $suket['keperluan'].' ( '.$suket['keterangan_pengajuan'].' )<br/>';
							echo '<b> Info  Ortu :</b> '.$suket['nama_ortu'].'-'.$suket['pekerjaan_ortu'].' di '.$suket['instansi'];


						?>
                     </td>
                    <td>
                      <?php
					  		if($suket['status']=='0'){
								echo '<span class="label label-warning label-tag"><i class="fa fa-spinner fa-fw"></i>  Permohonan Ditolak </span> <br/> <strong>Note </strong>: <br/>
                      '.$suket['alasan_tolak'].', Klik tombol <span class="label label-info label-tag"><i class="fa fa-pencil fa-fw"></i> Edit</span> untuk memperbaikinya';
					  			$btnact='<a href="#" data-id="'.encrypt_url($suket['id_suket_kuliah']).'" class="btn btn-xs btn-info edit-permohonan"  data-toggle="modal"  data-dismiss="modal"><i class="fa fa-pencil fa-fw"></i> Edit</a>

                          			<a title="Hapus/Batalkan Pengajuan Surat Keterangan Kuliah'.$semester.'" href="#" class="btn btn-danger btn-xs konfirmasiHapus-Suket" data-id="'.encrypt_url($suket['id_suket_kuliah']).'" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i> Hapus</a>';

							}elseif($suket['status']=='1'){
								 echo '<span class="label label-info label-tag"><i class="fa fa-thumb-tack fa-fw"></i> Menunggu di Proses</span>';
								 $btnact='<a title="Hapus/Batalkan Pengajuan Surat Keterangan Kuliah'.$semester.'" href="javascript:;" class="btn btn-danger btn-xs konfirmasiHapus-Suket" data-id="'.encrypt_url($suket['id_suket_kuliah']).'" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-remove fa-fw"></i>Batalkan Permohonan </a>';
							}elseif($suket['status']=='2'){
								echo '<span class="label label-primary label-tag">  <i class="fa fa-repeat fa-fw"></i>   Sedang di Proses</span><br/> Ket : <br/> Proses Pembuatan Surat <b style="color:blue;"> 2 hari Kerja </b>';
								$btnact='';
							}elseif($suket['status']=='3'){
								 echo '<span class="label label-info label-tag" title="Surat Wajib di ambil di BAAKU"><i class="fa fa-check-square-o fa-fw"></i> Surat Sudah Selesai di Cetak</span>  <br/> <strong>Note </strong>: <br/>
                      <span style="color:red;">Surat Wajib diambil di BAAKU</span>';
					  			if($suket['file_surat_kuliah']!=''){
								 $btnact='<a href="'.base_url('assets/files/suket/'.$suket['file_surat_kuliah']).'" title="Klik Untuk Download Surat Keterangan Kuliah" class="btn btn-xs btn-info" target="_blank"><i class="fa fa-paperclip fa-fw"></i> Download Suket Kuliah</a>'; } else {$btnact='';}
							}elseif($suket['status']=='4'){
								echo '<span class="label label-success label-tag"><i class="fa fa-check-square-o fa-fw"></i> Surat Sudah diambil</span> <br/> Oleh : '.$suket['ambil'].' <br/>'.nama_hari(date('Y-m-d',strtotime($suket['tgl_ambil']))).', '.tgl_indo(date('Y-m-d',strtotime($suket['tgl_ambil'])));

								if($suket['file_surat_kuliah']!=''){
								$btnact='<a href="'.base_url('Mahasiswa/Suket/get_suketkuliah_file/'.$suket['id_suket_kuliah']).'" title="Klik Untuk Download Surat Keterangan Kuliah" class="btn btn-xs btn-success"><i class="fa fa-paperclip fa-fw"></i> Download Suket Kuliah</a>'; }else {$btnact='';}

							}

					  ?>


                    </td>
                    <td><?php  echo $btnact;
							if($suket['status']>='3')
							     echo '<br/> Selesai Pada :<br/>'.nama_hari(date('Y-m-d',strtotime($suket['tgl_selesai']))).', '.tgl_indo(date('Y-m-d',strtotime($suket['tgl_selesai'])));?></td>
                  </tr>


             <?php
				  endforeach;
				 }
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

<?php show_my_confirm('konfirmasiHapus', 'hapus-Suket', 'Batalkan Permohonan Pembuatan Surat Keterangan Kuliah Ini?', 'Ya, Hapus Data Ini'); ?>

<script type="text/javascript">

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
	 /e.preventDefault();
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
			url: "<?php echo base_url('Mahasiswa/Suket/updateSuketKuliah'); ?>",
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
