<script src="<?php echo base_url(); ?>assets/js/jquery.chained.min.js"></script>
<div id="pesan"></div>
<div class="row">
<!-- /.col -->
   <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-file-o fa-fw"></i>
              <h3 class="box-title"> Data Surat Keterangan Kuliah</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <div class="box-header with-border">
              <form id="form-filter" method="POST" enctype="multipart/form-data">
                <div class="box-body">
 
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Fakultas </label>
                      <select class="form-control" name="fakultas"  id="id_fakultas" required>
                      	<option value="" selected="" disabled="">Pilih Fakultas</option>
                        <?php
                           foreach ($dataFakultas as $fakultas) {
	                            echo "<option value='".$fakultas->id_fakultas."'>".$fakultas->nama_fakultas. " ( " .$fakultas->singkatan." )</option>";
                           }
                        ?>
                      </select>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Program Studi</label>
                      <select class="form-control"  name="prodi" id="prodi_fak"  required> 
                      	<option value="" selected="" disabled="">Pilih Program Studi</option>
                      	<?php 
						    foreach ($dataProdi as $prodi) {
								echo "<option value='".$prodi->id_prodi."' class='".$prodi->id_fakultas."'  >".$prodi->jenjang." - ".$prodi->nama_prodi." (".$prodi->singkatan.")</option>";
						    }
						?>
                      </select>
                    </div>
                  </div>

                  <div class="col-sm-2">
                    <div class="form-group">
                      <label>Semester</label>
                      <select class="form-control"  name="semester"  required> 
                        <option value="" selected="" disabled="">Pilih Semester</option>
                        <option value="All">Semua</option>
                          <?php
                            foreach($semester as $sms){
                              echo "<option value='$sms->semester'>".substr($sms->semester,0,4)." | ".$sms->nama_semester."</option>";
                            }
                          ?>
                      </select>
                    </div>
                  </div>

                  <div class="col-sm-2">
                    <div class="form-group">
                      <label style="color:#fff">Filter Periode</label>
                      <button type="submit" class="btn btn-primary" id="btnfilter" ><i class="fa fa-search fa-fw"></i> Tampilkan</button>
                    </div>
                  </div>
                </div>
              </form>
             </div>
             
             
        
    <div id="respon"></div>
    <div id="data">
        <div class="col-sm-12" > 
        	<div class="table-responsive">      
            <table id="list-data"  class="table table-bordered table-striped">
              <thead>
                 <tr style="background-color:#3c8dbc; color:white;">
                    <th width="2%" style="text-align:center">No</th> 
                    <th style="text-align:center">Mahasiswa</th> 
                    <th style="text-align:center">Tanggal Pengajuan</th>     
                    <th style="text-align:center">Keperluan</th>        
                    <th style="text-align:center">Keterangan</th> 
                    <th width="10%" style="text-align:center">Action</th>
                 </tr>
              </thead>
              <tbody>
				    
              </tbody>
            </table> 
            </div>
        </div> 
    </div>
    </div>
  </div>
</div>
</div>

<div id="tempat-modal"></div>

<script>
// $(document).ready(function() { 	
// 	$("#button_add").hide();
		
// });

$("#prodi_fak").chained("#id_fakultas");



$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>TU/SuketKuliah/filter_suket",
        data:dataString,
        
        success: function(msg){
          MyTable.fnDestroy();
          	//$('#button_add').show();
          	$('#data').hide();
            $('#respon').html(msg);
          refresh();
        },
    });
    event.preventDefault();
});


$(document).on("click", ".btn-ambil", function() {
	var id = $(this).attr("data-id");
	
	$.ajax({
		method: "POST",
		url: "<?php echo base_url('TU/SuketKuliah/ambil_suket'); ?>",
		data: "id=" +id
	})
	.done(function(data) {
		$('#tempat-modal').html(data);
    //$('#detail-suket').attr('class', 'modal fade bs-example-modal-lg')
          //  .attr('aria-labelledby','myLargeModalLabel');
    //$('.modal-dialog').attr('class','modal-dialog modal-lg');
		$('#ambil-suket').modal('show');
	})
})


$(document).on("click", ".btn-detail", function() {
  var id = $(this).attr("data-id");
  
  $.ajax({
    method: "POST",
    url: "<?php echo base_url('TU/SuketKuliah/detail_suket'); ?>",
    data: "id=" +id
  })
  .done(function(data) {
    $('#tempat-modal').html(data);
    //$('#detail-suket').attr('class', 'modal fade bs-example-modal-lg')
          //  .attr('aria-labelledby','myLargeModalLabel');
    //$('.modal-dialog').attr('class','modal-dialog modal-lg');
    $('#detail-suket').modal('show');
  })
})

$(document).on("click", ".showpengambil", function() {
  var id = $(this).attr("data-id");
  
  $.ajax({
    method: "POST",
    url: "<?php echo base_url('TU/SuketKuliah/detail_pengambil'); ?>",
    data: "id=" +id
  })
  .done(function(data) {
    $('#tempat-modal').html(data);
    //$('#detail-suket').attr('class', 'modal fade bs-example-modal-lg')
          //  .attr('aria-labelledby','myLargeModalLabel');
    //$('.modal-dialog').attr('class','modal-dialog modal-lg');
    $('#info-suket').modal('show');
  })
})
	
</script>


 
