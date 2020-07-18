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
              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Surat Keterangan Kuliah</strong></div>
              <div class="panel-body">
                <ol>
                  <li>Saudara <strong>wajib</strong> memperhatikan ketentuan Pengajuan Surat Keterangan Kuliah.</li>
                  <li>Pengajuan Surat Keterangan Kuliah hanya dapat dilakukan oleh mahasiswa yang tidak dalam masa cuti. 
                  <li>Pastikan Saudara <strong>sudah</strong> membayar biaya perkuliahan semester yang aktif saat ini.</li>
                  <li>Untuk melihat/download Surat Keterangan Kuliah dapat dilakukan melalui<strong> detail &gt; Cetak Surat Keterangan Kuliah</strong></li>
                </ol>
    </div>
            </div>
            <!-- /.box-Filter -->
             <div class="col-sm-12"  style="text-align:right; margin-top:20px; margin-bottom:10px;">
            <button class="btn btn-primary Add-dataDaftarSuket" data-toggle="modal"  data-dismiss="modal"><i class="fa fa-plus"></i> <strong>Mengajukan Surat Keterangan Kuliah</strong></button>
         </div>
         <div class="col-sm-12 ">
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
                  <tr>
                    <th>(1)</th>
                    <th>(2)</th>
                    <th>(3)</th>
                    <th>(4)</th>
                    <th>(5)</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><strong>1.</strong></td>
                    <td>   Ganjil T.A. 2017/2018<span class="col-xs-12"><em></em></span></td>
                    <td>Sebagai Keterangan Masih Menjadi Tanggungan  Orang Tua </td>
                    <td><span class="label label-warning label-tag">Menunggu</span></td>
                    <td>
                      <a href="<?php echo site_url('Suket/DetailSuket/sdjsydu98yT3892') ?>" class="btn btn-xs btn-info"><i class="fa fa-pencil fa-fw"></i> &nbsp; Detail</a>
                     
                      <a title="Hapus Pengajuan Surat Keterangan Kuliah <?php //echo $dataPeriodeCuti->nama_semester." ".$dataPeriodeCuti->tahun_ajaran; ?> " href="#" class="btn btn-danger btn-xs konfirmasiHapus-PeriodeCuti" data-id="<?php //echo $dataPeriodeCuti->id_periodecuti; ?>" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i></a>
                    </td>
                  </tr>
                  <tr>
                    <td><strong>2.</strong></td>
                    <td>  Genap T.A. 2017/2018</td>
                    <td>Sebagai Keterangan Masih Menjadi Tanggungan  Orang Tua</td>
                    <td><span class="label label-success label-tag">Surat Sudah diambil</span></td>
                    <td><a href="<?php echo site_url('Cuti/DetailCuti/sdjsydu98yT3892') ?>" class="btn btn-xs btn-info"><i class="fa fa-pencil fa-fw"></i> &nbsp;Detail</a>
                      
                          <a title="Hapus Periode Cuti Semester <?php //echo $dataPeriodeCuti->nama_semester." ".$dataPeriodeCuti->tahun_ajaran; ?> " href="#" class="btn btn-danger btn-xs konfirmasiHapus-PeriodeCuti" data-id="<?php //echo $dataPeriodeCuti->id_periodecuti; ?>" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i></a></td>
                  </tr>
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

<?php show_my_confirm('konfirmasiHapus', 'hapus-dataProdi', 'Hapus Data Ini?', 'Ya, Hapus Data Ini'); ?>

<script type="text/javascript">
	window.onload = function() {
		tampilPeriodeCuti();
		<?php
			if ($this->session->flashdata('msg') != '') {
				echo "effect_msg();";
			}
		?>
	}

	function tampilPeriodeCuti() {
	  $.get('<?php echo base_url('Cuti/tampilPeriode_Cuti'); ?>', function(data) {
		  MyTable.fnDestroy();
		  $('#data-PeriodeCuti').html(data);
		  refresh();
	  });	  
	}

	$(document).ready(function() {
		$("#id_fakultas").change( function (){
			var id_fakultas=$("#id_fakultas").val();		
			$.ajax({
				type	:"POST",
				url: "<?php echo base_url('Prodi/select_prodi_by_fakultas'); ?>",
				data: "id_fakultas=" +id_fakultas,
			})
			.done(function(data) {	
				MyTable.fnDestroy();
				$('#data-Prodi').html(data);
				refresh();
			})			
			e.preventDefault();
		});    
	});

	$('#form-filter-prodi').submit(function(e) {
		var data = $(this).serialize();

		$.ajax({
			method: 'POST',
			url: '<?php echo base_url('Prodi/filterProdi'); ?>',
			data: data
		})
		.done(function(data) {
			MyTable.fnDestroy();
			$('#data-Prodi').html(data);
			refresh();
		})
		
		e.preventDefault();
	});
 
	
	var id_periode;
	$(document).on("click", ".konfirmasiHapus-Prodi", function() {
		id_periode = $(this).attr("data-id");
	})
	
	$(document).on("click", ".hapus-dataProdi", function() {
		var id = id_prodi;
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Prodi/deleteProdi'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#konfirmasiHapus').modal('hide');
			tampilprodi();
			$('.msg').html(data);
			effect_msg();
		})
		
		
	  e.preventDefault();
	})
	
	
	$(document).on("click", ".show-prodidiSetBiayaCuti", function() {
		var id = $(this).attr("data-id");
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/showprodi_diSetBiayaCuti'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#ShowProdi-diSetBiayaCuti').modal('show');
		})
	})
	
	$(document).on("click", ".update-dataPeriodeCuti", function() {
		var id = $(this).attr("data-id");
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/updatePeriodeCuti'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#update-PeriodeCuti').modal('show');
		})
	})
	
	
	$(document).on('submit', '#form-update-Prodi', function(e){
		var data = $(this).serialize();

		$.ajax({
			method: 'POST',
			url: '<?php echo base_url('Prodi/prosesUpdateProdi'); ?>',
			data: data
		})
		.done(function(data) {			
			var out = jQuery.parseJSON(data);
			tampilprodi();
			if (out.status == 'form') {
				$('.form-msg').html(out.msg);
				effect_msg_form();
			} else {
				document.getElementById("form-update-Prodi").reset();
				$('#update-Prodi').modal('hide');
				$('.msg').html(out.msg);
				effect_msg();
			}
		})
		
		e.preventDefault();
	});
	

	$(document).on("click", ".Add-dataDaftarSuket", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Suket/DaftarSuket'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);			
			$('#Add_SetBiayaCuti').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');
			$('.modal-dialog').attr('data-dismiss','modal'); 
			$('#Daftar_Suket').modal('show');
		})
	})

	
		
	$(document).on('submit', '#form-tambah-Prodi', function(e){
		var data = $(this).serialize();

		$.ajax({
			method: 'POST',
			url: '<?php echo base_url('Prodi/prosesTambahProdi'); ?>',
			data: data
		})
		.done(function(data) {	
			var out = jQuery.parseJSON(data);
			tampilrodi();
			if (out.status == 'form') {
				$('.form-msg').html(out.msg);
				effect_msg_form();
			} else {
				document.getElementById("form-tambah-Prodi").reset();
				$('#Add_Prodi').modal('hide');
				$('.msg').html(out.msg);
				effect_msg();
			}
		})
		
		e.preventDefault();
	});
	
	
	
	
	

</script>



 
