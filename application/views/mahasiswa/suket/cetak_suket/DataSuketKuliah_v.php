<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
<!-- /.col -->
<div class="col-md-12">
  <div class="box box-success box-solid">
    <div class="box-header with-border">
    <i class="fa fa-print "></i>
    <h5 class="box-title"> Cetak Permohonan Surat Keterangan Kuliah</h5>
    <div class="box-tools pull-right">
    <button type="button" class="btn btn-box-tool" data-widget="collapse">
    <i class="fa fa-minus"></i>
    </div>
    <!-- /.box-tools -->
    </div>
    <!-- /.box-header -->
    <div class="box-body">
    <div class="box-header with-border">
    <form   action="<?php //echo base_url('Dikbang/Periode')?>" method="POST" enctype="multipart/form-data" id="form-filter-periodedikbang" >
      <div class="box-body">
        <div class="col-sm-4 form-group">
          <label>Fakultas </label>
          <select class="form-control" name="kategori" id="id_kategori">
            <option value="All">Semua Fakultas</option>
            <option value="All">FTIK - Fakultas Teknik & Ilmu Komputer</option>
            <option value="All">FSIP - Fakultas Sastra & Ilmu Pendidikan </option>
            <option value="All" selected>FEB - Fakultas Ekonomi & Bisnis</option>
          </select>
        </div>
        <div class="col-sm-3 form-group">
          <label>Program Studi </label>
          <select class="form-control" name="kategori2" id="id_kategori">
            <option value="All">Semua Prodi</option>
            <option value="All">S1 Teknologi Informasi </option>
            <option value="All" selected >S1 Akuntansi</option>
          </select>
        </div>
        <div class="col-sm-3 form-group">
          <label>Periode </label>
          <select class="form-control" name="kategori2" id="id_kategori">
            <option value="All"> Ganjil T.A 2017/2018</option>
            <option value="All" selected>Genap T.A 2016/2017</option>
            <option value="All">Ganjil T.A 2016/2017</option>
            <option value="All">Genap T.A 2015/2016</option>
            <option value="All">Ganjil T.A 2015/2016</option>
            <option value="All">Genap T.A  2014/2015</option>
            <option value="All">Ganjil 2014/2015</option>
            <?php
                           
                        /*   foreach ($dataKategori as $periodekategori) {
                               $id_kateg =$periodekategori->id_kateg;
                                echo "<option value='".$id_kateg."'  >".$periodekategori->Nama_Kategori."</option>";
                           }
                         */
                        ?>
          </select>
        </div>
        <div class="col-sm-2">
          <div class="form-group">
            <label style="color:#fff">Filter Periode</label>
            <button type="submit" class="btn btn-primary"><i class="fa fa-eye fa-fw"></i> Tampilkan</button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <!-- /.box-Filter -->
        <div class="col-sm-12" style="padding-top:20px;" >
          <table id="list-data"   class="table table-bordered table-striped">
            <thead>
                 <tr >
                    <th width="5%" style="text-align:center">No</th>    
                    <th width="13%" style="text-align:center">Mahasiswa </th>                
                    <th width="15%" style="text-align:center">Pengajuan</th>               
                    <th width="30%" style="text-align:center">Info Permohonan</th>
                    <th width="14%" style="text-align:center"><strong>File Surat  </strong></th>  
                    <th width="20%" style="text-align:center">Option</th>
                </tr>
            </thead>
              <tbody id="data-PermohonanCuti">
              	 <tr style="font-size:13px;">
                    <td width="5%" style="text-align:center">1.</td>    
                    <td  style="text-align:left"><strong>Arief Setia Budi</strong><br/> 
                  &nbsp;  &nbsp; NPM : 14312130 <br/> 
                  &nbsp;  &nbsp; Angkatan : 2014 <br/> 
                   S1 Akuntansi</td>     
                    <td  style="text-align:left">
                    	<strong>Periode</strong><br/> <span style="padding-left:15px;" >Genap T.A 2016/2017 </span><br/>
                        <strong>Tgl Daftar </strong><br/> <span style="padding-left:15px;" >Senin, 17 Feb 2017 </span><br/>
                    
                    </td>                
                    <td  style="text-align:left">
                    	<strong>Nama Ortu : </strong>Rizik Shihab<br/>
                        <strong>Pekerjaan : </strong>  Pegawai Negeri Sipil (PNS)<br/>
                        <strong>Instansi : </strong>  Dinas Pendidikan Kota Bandar Lampung<br/>
                      <strong>Keperluan :</strong>Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua<br/>
                    </td>
                    <td  style="text-align:left">
                      <span style="color:red;">Belum Di Upload</span>
                    </td>  
                    <td  style="text-align:center">
                    	<a title="Klik Untuk Memberikan Persetujuan Sekaligus Setting Surat" data-id="<?php //echo $fakultas->id_fakultas; ?>"   href="#" class="btn btn-primary btn-xs  set-surat"><i class="fa  fa-gear  fa-fw"></i> Persetujuan  </a> <br/>
                       
                        <br/></td>
                </tr>
                <tr style="font-size:13px;">
                    <td width="5%" style="text-align:center">2.</td>
                    <td  style="text-align:left"><strong>Arief Setia Budi</strong><br/>
  &nbsp;  &nbsp; NPM : 14312130 <br/>
  &nbsp;  &nbsp; Angkatan : 2014 <br/>
  S1 Akuntansi</td>
                    <td  style="text-align:left"><strong>Periode</strong><br/>
                      <span style="padding-left:15px;" >Genap T.A 2016/2017 </span><br/>
                      <strong>Tgl Daftar </strong><br/>
                      <span style="padding-left:15px;" >Senin, 17 Feb 2017 </span><br/></td>
                    <td  style="text-align:left"><strong>Nama Ortu : </strong>Rizik Shihab<br/>
                      <strong>Pekerjaan : </strong> Pegawai Negeri Sipil (PNS)<br/>
                      <strong>Instansi : </strong> Dinas Pendidikan Kota Bandar Lampung<br/>
                      <strong>Keperluan :</strong>Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua<br/></td>
                    <td  style="text-align:left"><span style="color:red;">Belum Di Upload</span></td>    
                    <td  style="text-align:left">
                  		<a title="Klik Untuk Edit Persetujuan Sekaligus Setting Surat" data-id="<?php //echo $fakultas->id_fakultas; ?>"   href="#" class="btn btn-primary btn-xs  set-surat"><i class="fa  fa-pencil  fa-fw"></i>  </a>
                        <a title="Klik Untuk Mencetak  Permohonan Surat Keterangan Kuliah" data-id="<?php //echo $fakultas->id_fakultas; ?>"  target="_blank" href="<?php echo base_url('Suket/PrintSuketKuliah'); ?>" class="btn btn-primary btn-xs "><i class="fa  fa-print  fa-fw"></i> </a>
                        <a   title="Klik Untuk Upload Scan Surat Keterangan Kuliah" data-id="<?php //echo $fakultas->id_fakultas; ?>"  href="#" class="btn btn-info btn-xs upload_surat"><i class="fa fa-upload fa-fw"></i> </a> 
                        <span  href="#" class="btn btn-warning btn-xs" title="Dalam Proses Pengerjaan"><i class="fa  fa-spinner  fa-fw"></i> Proses</span>
                  </td>
                </tr>
                
                <tr style="font-size:13px;">
                    <td width="5%" style="text-align:center">3.</td>
                    <td  style="text-align:left"><strong>Arief Setia Budi</strong><br/>
  &nbsp;  &nbsp; NPM : 14312130 <br/>
  &nbsp;  &nbsp; Angkatan : 2014 <br/>
  S1 Teknologi Informasi</td>
                    <td  style="text-align:left"><strong>Periode</strong><br/>
                      <span style="padding-left:15px;" >Genap T.A 2016/2017 </span><br/>
                      <strong>Tgl Daftar </strong><br/>
                      <span style="padding-left:15px;" >Senin, 17 Feb 2017 </span><br/></td>
                    <td  style="text-align:left"><strong>Nama Ortu : </strong>Rizik Shihab<br/>
                      <strong>Pekerjaan : </strong> Pegawai Negeri Sipil (PNS)<br/>
                      <strong>Instansi : </strong> Dinas Pendidikan Kota Bandar Lampung<br/>
                      <strong>Keperluan :</strong>Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua<br/></td>    
                    <td  style="text-align:left"><br/>
                            <a href="#" title="Klik untuk melihat surat keterangan kuliah"><i class="fa fa-paperclip fa-fw"></i> Surat Ket. Kuliah  </a><br/>
                    </td>  
                    <td  style="text-align:left">
                     <a title="Klik Untuk Mencetak Surat Permohonan Cuti" data-id="<?php //echo $fakultas->id_fakultas; ?>"  target="_blank" href="<?php echo base_url('Suket/PrintSuketKuliah'); ?>" class="btn btn-primary btn-xs "><i class="fa  fa-print  fa-fw"></i> </a>
                        <a   title="Klik Untuk Menolak Permohonan" data-id="<?php //echo $fakultas->id_fakultas; ?>"  href="#" class="btn btn-info btn-xs upload_surat"><i class="fa fa-upload fa-fw"></i> </a> 
                        <span  href="#" class="btn btn-success btn-xs" title="Lama Pengerjaan"><i class="fa  fa-clock-o  fa-fw"></i> 4 Hari</span><br/><br/>
                       
                        <strong> Status  : </strong> 
                        <span ><a  href="#" class="btn btn-default btn-xs ambilsurat"><i class="fa  fa-clock-o  fa-fw"></i>Belum Diambil</a></span>  <br/>
                      <a  href="#" class="btn btn-success btn-xs"  title="Sudah Diambil Oleh Wahyu Saputra" style="margin-top:5px;"><i class="fa  fa-check-square-o  fa-fw"></i> Sudah Diambil</a><br/> 
                    Oleh : <strong>Arief Setia Budi</strong></td>
                </tr>
              </tbody>
          </table> 
    </div> 
        
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
		/*tampilSetBiayaCuti(); */
		<?php
			if ($this->session->flashdata('msg') != '') {
				echo "effect_msg();";
			}
		?>
	}

	function tampilSetBiayaCuti() {
	  $.get('<?php echo base_url('Cuti/tampilSetBiayaCuti'); ?>', function(data) {
		  MyTable.fnDestroy();
		  $('#data-SetBiayaCuti').html(data);
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
	
	$(document).on("click", ".update-dataSetBiayaCuti", function() {
		var id = $(this).attr("data-id");
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/updateSetBiayaCuti'); ?>",
			data: "id=" +id
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#update-SetBiayaCuti').modal('show');
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
	

	$(document).on("click", ".upload_surat", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Suket/upload_surat'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#upload_surat').modal('show');
		})
	})
	
	$(document).on("click", ".ambilsurat", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/ambilsurat'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);
			$('#ambilsurat').modal('show');
		})
	})
	

	$(document).on("click", ".set-surat", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Suket/SetSuket_kuliah'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);			
			/*$('#set_surat').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg'); */
			$('#set_surat').modal('show');
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



 
