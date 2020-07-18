<script src="<?php echo base_url(); ?>assets/js/jquery.chained.min.js"></script>
<div id="pesan">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
<!-- /.col -->
   <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-file-o fa-fw"></i>
              <h3 class="box-title"> Data Pengajuan Surat Keterangan Kuliah</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
             
             
        
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
				            <?php
                      $no=0;
                      foreach($suket_kuliah->result() as $res){
                        
                        $no++;
                    ?>
                      <tr>
                        <td style="text-align:center;"><?php echo $no ?></td>       
                        <td  style="text-align:left">
                          <strong><?php echo $res->nama_mhs ?> </strong><br>
                          <span style="padding-left:10px;">NPM : <?php echo $res->npm ?></span> <br/>
                          <span style="padding-left:10px;"><strong><?php echo $res->jenjang.'-'.$res->nama_prodi ?></strong></span> 
                        </td>
                        <td style="text-align:center;">
                          <?php
                                $tgl = date('Y-m-d',strtotime($res->tgl_pengajuan));
                                $jam = date('H:i',strtotime($res->tgl_pengajuan));

                                echo tgl_indo($tgl)." - ".$jam;

                                if($res->file_surat_kuliah!=''){
                                  $link = base_url('assets/files/suket/suket_kuliah');
                                  echo '<p><a target="_blank" href="'.$link.'/'.$res->file_surat_kuliah.'"><i class="fa fa-file-pdf-o fa-fw"></i> Klik Untuk Melihat Surat Keterangan Kuliah</a></p>';
                                }else{
                                  echo "";
                                }
                          ?>
                        </td> 
                        <td style="text-align:center;"><?php echo $res->keperluan ?></td> 
                        <td style="text-align:center;"><?php echo $res->keterangan_pengajuan ?></td> 
                        
                        <td  style="padding:5px; text-align:center;" >
                           <?php if($res->status=='0'){  ?>
                            <a title="Ditolak" href="javascript:;" class="btn btn-danger btn-xs"><i class="fa fa-close fa-fw"></i> Ditolak</a>
                          <?php }elseif($res->status == '1'){ ?>
                            <a title="Menunggu Persetujuan" class="btn btn-warning btn-xs btn-detail" data-id="<?php echo $res->id_suket_kuliah ?>"><i class="fa fa-eye fa-fw"></i>Lihat Pengajuan</a> 
                          <?php }elseif($res->status == '2'){ ?>
                            <a title="Telah Disetujui" class="btn btn-primary btn-xs btn-konfirmasi" data-id="<?php echo $res->id_suket_kuliah ?>"><i class="fa fa-eye fa-fw"></i>Konfirmasi Surat</a> 
                          <?php }elseif($res->status =='3' ){ ?>
                            <a title="Surat Sudah Jadi" data-id="<?php echo $res->id_suket_kuliah; ?>" class="btn btn-info btn-xs btn-ambil"><i class="fa fa-check-circle fa-fw"></i>Ambil Surat</a>            
                          <?php }elseif($res->status == '4'){ ?>
                            <a title="Sudah Diambil" data-id="<?php echo $res->id_suket_kuliah ?>" class="btn btn-success btn-xs showpengambil"><i class="fa fa-thumbs-o-up fa-fw"></i>Sudah Diambil</a>
                          <?php } ?>
                        </td>

                      </tr>
                    <?php } ?>
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
setTimeout(function() {document.getElementById('pesan').innerHTML='';},3000);

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

$(document).on("click", ".btn-konfirmasi", function() {
  var id = $(this).attr("data-id");
  
  $.ajax({
    method: "POST",
    url: "<?php echo base_url('TU/SuketKuliah/detail_konfirmasi'); ?>",
    data: "id=" +id
  })
  .done(function(data) {
    $('#tempat-modal').html(data);
    //$('#detail-suket').attr('class', 'modal fade bs-example-modal-lg')
          //  .attr('aria-labelledby','myLargeModalLabel');
    //$('.modal-dialog').attr('class','modal-dialog modal-lg');
    $('#detail-konfirmasi').modal('show');
  })
})
	
</script>


 
