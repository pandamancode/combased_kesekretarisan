<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
  <div class="col-md-12">
    <div class="box box-info box-solid">
  
      	<div class="box-header with-border">
          <i class="fa fa-calendar fa-fw"></i>
      			<h3 class="box-title">Pendaftaran Surat Keterangan Kuliah Semester Ganjil T.A. 2017/2018</h3>
       			 <div class="box-tools pull-right">
          			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i> </button>
        		</div>
      </div>
        <!-- /.box-tools -->
        <div class="box-body">
        	
          <div class="alert alert-info pull-right hidden-xs">
              <span class="btn btn-rounded btn-success"> </span> Tahapan sudah selesai <br>
              <span class="btn btn-rounded btn-warning"> </span> Tahapan belum selesai <br>
              <span class="btn btn-rounded btn-danger"> </span> Tahapan belum dapat dilakukan <br>
          </div>
          <!-- The time line -->
          <ul class="timeline">
            <!-- timeline time label -->
            <li class="time-label" style="width:10%; text-align:center; "> <span class="bg-red" style="border:#AAAAAA solid 4px;">
            <div class="tl-header now " style="margin-bottom:0px">Proses Pengajuan Surat Keterangan Kuliah</div> </span> </li>
            <!-- /.timeline-label -->
            <!-- timeline item -->
            <li> <i class="fa  bg-green bold"  ><strong>1</strong></i>
              <div class="timeline-item" style="border:#CACACA solid 1px;"> <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>
                <h3 class="timeline-header" ><a href="#">Pengisian Data Pengajuan Surat Keterangan Kuliah</a></h3>
                <div class="timeline-body"> Pengajuan Surat Keterangan Kuliah Semester Ganjil 2017/2018  <br/> 
                <strong>Keperluan</strong> : Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua</div>
                
              </div>
            </li>
            <!-- END timeline item -->
            <!-- timeline item -->
            <li> <i class="fa  bg-yellow"><strong>2</strong></i>
              <div class="timeline-item" style="border:#CACACA solid 1px;"> <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>
                <h3 class="timeline-header"><a href="#"  title="Klik Untuk Upload Dokumen">Status</a></h3>
                <div class="timeline-body">Pengajuan Surat Keterangan Kuliah anda sedang diproses. Silahkan menunggu informasi status Pengajuan Surat Keterangan Kuliah anda selanjutnya!
                </div>
              </div>
            </li>
            <!-- END timeline item -->
    
            <!-- timeline item -->
            <li> <i class="fa bg-red">3</i>
              <div class="timeline-item" style="border:#CACACA solid 1px;"> <span class="time"><i class="fa fa-clock-o"></i> 5 days ago</span>
                <h3 class="timeline-header"><a href="#">Download Surat Keterangan Kuliah</a>(Surat Belum Diambil) <a href="#" class="btn btn-xs bg-green"><i class="fa fa-cloud-download"></i> &nbsp; Download Surat</a>  </h3>
                <div class="timeline-body">
                  
                </div>
              </div>
            </li>
            <!-- END timeline item -->
            <li> <i class="fa fa-clock-o bg-gray"></i> </li>
          </ul>
      </div>
      
      
      </div>
    </div>
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
	
	$(document).on("click", ".UploadDokSyaratCuti", function() {
		var id = $(this).attr("data-id");
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/UploadDokSyaratCuti'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#UploadDokSyaratCuti').modal('show');
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
	

	$(document).on("click", ".Add-dataDaftarCuti", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/DaftarCuti'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);			
			$('#Add_SetBiayaCuti').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');
			$('.modal-dialog').attr('data-dismiss','modal'); 
			$('#Daftar_Cuti').modal('show');
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



 
