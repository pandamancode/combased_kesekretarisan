<div class="modal-header box-success box-solid" style="background-color:#00c0ef; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>              
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> <strong> Pengambilan Surat Keterangan Lulus
  </strong></h4>
</div>
<?php
  
  foreach($detail_suket->result() as $res){
    $nama = $res->nama_mhs;
    $npm = $res->npm;
    $jenjang = $res->jenjang;
    $prodi = $res->nama_prodi;
    $id = $res->id_surat_lulus;
    $lulus = $res->tgl_lulus;
    
    $keperluan = $res->keperluan;
    $tgl_pengajuan = $res->tgl_pengajuan;

    //alasan_tolak
  }
?>
<form method="POST" id="form_ambil" enctype="multipart/form-data" action="<?php echo base_url() ?>TU/SuketLulus/ambilsuket_action">
  <input type="hidden" name="id" value="<?php echo $id ?>">

   <div class="modal-body" > 
    <div class=" form-group">
     <p><strong>Nama Mahasiswa  :  </strong><?php echo strtoupper($nama.' - '.$npm).' ('.$jenjang.' - '.$prodi.')';?> </p>   
    </div>
   
    <table class="table table-bordered table-striped">
      <tr>
          <td width="40%">Tanggal Lulus</td>
          <td width="60%"><?php echo tgl_indo($lulus) ?></td>
      </tr>
      <tr>
          <td>Keperluan</td>
          <td><?php echo $keperluan ?> </td>
      </tr>
      <tr>
          <td>Tanggal Pengajuan</td>
          <td>
          <?php
              $tgl = date('Y-m-d',strtotime($res->tgl_pengajuan));
              $jam = date('H:i',strtotime($res->tgl_pengajuan));

              echo tgl_indo($tgl)." - ".$jam;
          ?>
          </td>
      </tr>
      <tr>
          <td>Nama Pengambil Surat</td>
          <td><input type="text" name="nama_pengambil" class="form-control" placeholder="Nama Pengambil Surat" required=""></td>
      </tr>
      
    </table>

  </div>
  <div class="modal-footer">
    <p id="notif"></p>
    <button type="submit" class="btn btn-primary" id="btn_nilai"><i class="fa fa-check fa-fw"></i> Submit</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
</form>
<script>
 
// $('#form_ambil').on('submit',(function(e) {
//     e.preventDefault();
//     var formData = new FormData(this);
//     $.ajax({
//         type:'POST',
//         url: "<?php echo base_url(); ?>TU/SuketLulus/ambilsuket_action",
//         data:formData,
//         cache:false,
//         contentType: false,
//         processData: false,
//         success: function(msg){
//           MyTable.fnDestroy();
//             $('#ambil-suket').modal('hide');
//             $('#pesan').html(msg);
//             $('#btnfilter').click();
//           refresh();
//           setTimeout(function() {document.getElementById('pesan').innerHTML='';},3000);
//         },
//     })
    
//     e.preventDefault();
    
// }));
</script>
