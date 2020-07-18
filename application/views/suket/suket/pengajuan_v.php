<script src="<?php echo base_url(); ?>assets/js/jquery.chained.min.js"></script>
<div id="pesan">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="row">
<!-- /.col -->
   <div class="col-md-12">
          <div class="box box-primary box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-file-o fa-fw"></i>
              <h3 class="box-title"> Data Pengajuan Surat Keterangan</h3>
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
                    <th style="text-align:center">Tingkat/Semester</th> 
                 	<th style="text-align:center">Tanggal Pengajuan</th> 
                 	<th style="text-align:center">Jenis Surat</th> 
                    <th style="text-align:center">Surat</th>        
                    <th width="10%" style="text-align:center">Action</th>
                 </tr>
              </thead>
              <tbody>
				            <?php
                      $no=0;
                      foreach($suket->result() as $res){
                        
                        $no++;
                    ?>
                      <tr>
                        <td style="text-align:center;"><?php echo $no ?></td>       
                        <td  style="text-align:left">
                          <strong><?php echo $res->nama_mhs ?> </strong><br>
                          <span style="padding-left:10px;">NPM : <?php echo $res->npm ?></span> <br/>
                          <span style="padding-left:10px;"><strong><?php echo $res->jenjang.'-'.$res->nama_prodi ?></strong></span> 
                        </td>
                      	<td>
                        <?php
                      		$pecah_npm = substr($res->npm,0,2);
    						$now = date('y');
    						$tingkat = intval($now) - intval($pecah_npm);
                      		echo integerToRoman($tingkat).' / '.$res->smt;
                      	?>
                      	</td>
                        <td style="text-align:center;">
                          <?php
                                 $tgl = date('Y-m-d',strtotime($res->tgl_pengajuan));

                                echo tgl_indo($tgl);

//                                 if($res->file_surat!=''){
//                                   $link = base_url('assets/files/suket');
//                                   echo '<p><a target="_blank" href="'.$link.'/'.$res->file_surat.'"><i class="fa fa-file-pdf-o fa-fw"></i> Klik Untuk Melihat Surat Keterangan</a></p>';
//                                 }else{
//                                   echo "";
//                                 }
                          ?>
                        </td> 
                      	<td style="text-align:center;">Surat Keterangan <?php echo $res->jenis_surat ?></td> 
                        <td style="text-align:center;"><a href="<?php echo base_url() ?>TU/Suket/supenelitian/<?php echo $res->id_suket ?>/<?php echo $res->jenis_surat; ?>" target="_blank"><?php echo $res->no_surat ?></a></td> 
                        
                        <td  style="padding:5px; text-align:center;" >
                           <?php if($res->status_pengajuan=='0'){  ?>
                            <a title="Ditolak" href="javascript:;" class="btn btn-danger btn-xs"><i class="fa fa-close fa-fw"></i> Ditolak</a>
                          <?php }elseif($res->status_pengajuan == '1'){ ?>
                            <a title="Menunggu Persetujuan" class="btn btn-warning btn-xs btn-detail" data-id="<?php echo $res->id_suket ?>"><i class="fa fa-eye fa-fw"></i>Lihat Pengajuan</a> 
                          <?php }elseif($res->status_pengajuan == '2'){ ?>
                            <a title="Telah Disetujui" class="btn btn-primary btn-xs btn-konfirmasi" data-id="<?php echo $res->id_suket ?>"><i class="fa fa-eye fa-fw"></i>Konfirmasi Surat</a> 
                          <?php }elseif($res->status_pengajuan =='3' ){ ?>
                            <a title="Surat Sudah Jadi" data-id="<?php echo $res->id_suket; ?>" class="btn btn-info btn-xs btn-ambil"><i class="fa fa-check-circle fa-fw"></i>Ambil Surat</a>            
                          <?php }elseif($res->status_pengajuan == '4'){ ?>
                            <a title="Sudah Diambil" data-id="<?php echo $res->id_suket ?>" class="btn btn-success btn-xs showpengambil"><i class="fa fa-thumbs-o-up fa-fw"></i>Sudah Diambil</a>
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
<?php
function integerToRoman($integer) {
        // Convert the integer into an integer (just to make sure).
        $integer = intval($integer);
        $result = '';
        // Create a lookup array that contains all of the Roman numerals.
        $lookup = [
            'M' => 1000,
            'CM' => 900,
            'D' => 500,
            'CD' => 400,
            'C' => 100,
            'XC' => 90,
            'L' => 50,
            'XL' => 40,
            'X' => 10,
            'IX' => 9,
            'V' => 5,
            'IV' => 4,
            'I' => 1
        ];
        foreach ($lookup as $roman => $value) {
            // Determine the number of matches.
            $matches = intval($integer / $value);
            // Add the same number of characters to the string.
            $result .= str_repeat($roman, $matches);
            // Set the integer to be the remainder of the integer and the value.
            $integer = $integer % $value;
        }
        // The Roman numeral should be built, return it.
        return $result;
    }
?>
<div id="tempat-modal"></div>

<script>
setTimeout(function() {document.getElementById('pesan').innerHTML='';},3000);

$('#suket').addClass('active');
$('#suket_pengajuan').addClass('active');

$("#prodi_fak").chained("#id_fakultas");

$(function () {
	$("#list-data").dataTable({
	      "iDisplayLength": 10,
    });
});

$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>TU/Suket/filter_suket",
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
		url: "<?php echo base_url('TU/Suket/ambil_suket'); ?>",
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
    url: "<?php echo base_url('TU/Suket/detail_suket'); ?>",
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
    url: "<?php echo base_url('TU/Suket/detail_pengambil'); ?>",
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
    url: "<?php echo base_url('TU/Suket/detail_konfirmasi'); ?>",
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


 
