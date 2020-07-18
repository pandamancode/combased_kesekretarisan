<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
<!-- /.col -->
<div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-retweet "></i>
              <h5 class="box-title"> Permohonan Cuti Akademik </h5>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
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
                        <select class="form-control" name="kategori" id="id_kategori">
                          <option value="All">Semua Prodi</option>
                          <option value="All">S1 Teknologi Informasi </option>
                          <option value="All" selected >S1 Akuntansi</option>
                         </select>
                     </div>
                	<div class="col-sm-3 form-group">
                      <label>Periode </label>
                      <select class="form-control" name="kategori" id="id_kategori">
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
                    <th width="10%" style="text-align:center">NPM </th>                
                    <th width="25%" style="text-align:center">Nama Mahasiswa</th>               
                    <th width="30%" style="text-align:center">Cuti Semester</th>
                    <th width="20%" style="text-align:center"> Keterangan</th>  
                    <th width="10%" style="text-align:center">Verifikasi</th>
                </tr>
            </thead>
              <tbody id="data-PermohonanCuti">
              	 <tr style="font-size:13px;">
                    <td width="5%" style="text-align:center">1.</td>    
                    <td  style="text-align:left"><strong>1092837827</strong><br/> 7 April 2017</td>     
                    <td  style="text-align:left">
                    		<strong>Bambang Wicaksono </strong>  <br/>
                            <strong style="padding-left:5px;"> NPM: </strong> 14312007 <br/>
                            <strong style="padding-left:5px;">Prodi : </strong>  S1 Akuntansi 
                    </td>                
                    <td  style="text-align:left">
                      <strong>Total : <span style="font-size:16px; color:red;">Rp. 600.000 </span></strong> <br/>
                      <strong>Pembayaran Cuti: </strong> <br/>
                      <a href="#" ><i class="fa fa-check-square fa-fw"></i> Ganjil T.A 2017/2018 : Rp. 200.000</a><br/>
                      <a href="#" ><i class="fa fa-check-square fa-fw"></i> Genap T.A 2016/2017 : Rp. 400.000</a>
                    </td>
                    <td  style="text-align:left"><strong>Bukti Bayaran: </strong> <br/>
                            <a href="#" title="Klik untuk melihat surat permohonan cuti"><i class="fa fa-paperclip fa-fw"></i> Pengalihan Dana  </a><br/> 
                            <strong>Periode Bayaran: </strong> <br/>
                      <a href="#" > 30/01/2017 - 14/02/ 2017</a><br/>
                    </td>  
                    <td  style="text-align:center">
                    	<a title="Klik Untuk Verifikasi Pembayaran Cuti" data-id="<?php //echo $fakultas->id_fakultas; ?>"  href="#" class="btn btn-danger btn-xs  Ver-Cuti" data-toggle="modal"  data-dismiss="modal"><i class="fa  fa-retweet  fa-fw"></i> Verifikasi </a> 
                  </td>
                </tr>
                <tr style="font-size:13px;">
                    <td width="5%" style="text-align:center">2.</td>     
                    <td  style="text-align:left"><strong>1092837827</strong><br/> 12 Juli 2017</td>     
                    <td  style="text-align:left">
                    		<strong>Siti Khotidjah </strong>  <br/>
                            <strong style="padding-left:5px;"> NPM: </strong> 15311098 <br/>
                            <strong style="padding-left:5px;">Prodi : </strong>  S1 Akuntansi 
                    </td>                
                    <td  style="text-align:left">
                      <strong>Total : <span style="font-size:16px; color:red;">Rp. 200.000 </span></strong> <br/>
                      <strong>Pembayaran Cuti: </strong> <br/>
                      <a href="#" ><i class="fa fa-check-square fa-fw"></i> Ganjil T.A 2017/2018 : Rp. 200.000</a><br/>
                    </td>
                    <td  style="text-align:left"><strong>Bukti Bayaran: </strong> <br/>
                            <a href="#" title="Klik untuk melihat surat permohonan cuti"><i class="fa fa-paperclip fa-fw"></i> Pengalihan Dana  </a><br/> 
                            <strong>Periode Bayaran: </strong> <br/>
                      <a href="#" > 30/01/2017 - 14/02/ 2017</a><br/>
                    </td>  
                    <td  style="text-align:center"><a  href="#" class="btn btn-success btn-xs"><i class="fa  fa-check-square-o  fa-fw"></i>Telah Diverifikasi  </a></td>
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
	

	$(document).on("click", ".tolak_usulan", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/tolak_usulan'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);			
			/*$('#Add_SetBiayaCuti').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');
			$('.modal-dialog').attr('data-dismiss','modal'); */
			$('#tolak_usulan').modal('show');
		})
	})

	
	$(document).on("click", ".Ver-Cuti", function() {
		var id = "";
		
		$.ajax({
			method: "POST",
			url: "<?php echo base_url('Cuti/ValidasiCuti'); ?>",
			data: ""
		})
		.done(function(data) {
			$('#tempat-modal').html(data);			
			$('#Validasi_Cuti').attr('class', 'modal fade bs-example-modal-lg')
						     .attr('aria-labelledby','myLargeModalLabel');
			$('.modal-dialog').attr('class','modal-dialog modal-lg');
			$('#Validasi_Cuti').modal('show');
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



 
