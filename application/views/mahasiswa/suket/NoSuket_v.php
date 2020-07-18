<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
  <div class="col-md-12">
    <div class="box box-info box-solid">
  
      	<div class="box-header with-border">
          <i class="fa fa-calendar fa-fw"></i>
      			<h3 class="box-title">Pengajuan Surat Keterangan Kuliah Semester Ganjil T.A. 2017/2018</h3>
       			 <div class="box-tools pull-right">
          			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i> </button>
        		</div>
      </div>
        <!-- /.box-tools -->
        <div class="box-body">
<form id="form-tambah-PeriodeCuti" method="POST"> 
            <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
              <div class="col-sm-12">
                <div class="panel panel-default">
                  <div class="panel-heading">Silahkan anda isi kelengkapan pengajuan Surat Keterangan Kuliah berikut ini</div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-xs-12">
                        
                      </div>
                    </div>
                    <div class="row">
                      
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Nama Mahasiswa </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="nama" value="Arief Setia Budi" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">NPM </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="npm" value="14312130" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Tempat Lahir </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="lahir" value="Bandar Lampung" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Tanggal Lahir </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="tgl_lahir" value="11 Juli 1998" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Fakultas</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="fakultas" value="Teknik dan Ilmu Komputer" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Program Studi</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="prodi" value="Informatika" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Tingkat/Semester</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="tingkat" value="IV/VIII" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Tahun Akademik</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="akademik" value="2017/2018" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Nama Orang Tua/Wali</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="orangtua" value="Rizik Shihab" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Pekerjaan</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="pekerjaan" value="Pegawai Negeri Sipil (PNS)" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Instansi</label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="instansi" value="Dinas Pendidikan Kota Bandar Lampung" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Keperluan </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="akademik" value="Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua" readonly></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Nomor Surat </label>
                        <div class="col-xs-9"><input type="text" class="form-control" name="akademik" placeholder="Nomor Surat Keterangan Mahasiswa"></div>
                      </div>
                      <br>
                      <div class="form-group">
                        <label class="col-xs-3 control-label">Pejabat Penandatangan</label>
                        <div class="col-xs-9">
                        <select class="form-control">
                          <option value="Yeni Agus Nurhuda">Yeni Agus Nurhuda</option>
                          <option value="Faruq Ulum">Faruq Ulum</option>
                          <option value="Yusra Fernando">Yusra Fernando</option>
                        	
                        </select></div>
                      </div>
                      <br>
                    </div>
                    <div class="row">
                      <div class="col-xs-12"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><i class="fa fa-pencil-square-o fa-fw"></i> Simpan</button>  
              <button type="button" class="btn btn-danger " data-dismiss="modal" onClick="javascript:history.back()"> <i class="fa fa-close fa-fw"></i>Kembali</button>
            </div>
           </form>
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



 
