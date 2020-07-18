<?php
  foreach($detail_suket->result() as $res){
  	$no_surat = $res->no_surat;
    $tgl_padasurat = $res->tgl_padasurat;
    $nama = $res->nama_mhs;
    $npm = $res->npm;
    $jenjang = $res->jenjang;
    $prodi = $res->nama_prodi;
    $id = $res->id_suket;
    $keperluan = $res->keperluan;
    $jenis_surat = $res->jenis_surat;
    $tgl_pengajuan = $res->tgl_pengajuan;
    $kepada = $res->kepada;
    $alamat= $res->alamat;
    $judul = $res->judul;
    $nama_ortu = $res->nama_ortu;
    $pekerjaan= $res->pekerjaan;
    $instansi = $res->instansi;
    $smt = $res->smt;
    $tempat = $res->tempat;
    $agama = $res->agama;
    //alasan_tolak
  }
?>
<div class="modal-header box-success box-solid" style="background-color:#00c0ef; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>              
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> <strong> Data Pengajuan Surat Keterangan
  </strong></h4>
</div>

<form method="POST" id="form_pengajuan" enctype="multipart/form-data" action="<?php echo base_url() ?>TU/Suket/konfirmasi_surat">
  <input type="hidden" name="id" value="<?php echo $id ?>">

   <div class="modal-body" > 
    <div class=" form-group">
     <p><strong>Nama Mahasiswa  :  </strong><?php echo strtoupper($nama.' - '.$npm).' ('.$jenjang.' - '.$prodi.')';?> </p>   
    </div>
   
    <table class="table table-bordered table-striped">
         <tr>
        <td>Tanggal Pengajuan</td>
        <td>
        <?php
            $tgl = date('Y-m-d',strtotime($res->tgl_pengajuan));

            echo tgl_indo($tgl);
        ?>
        </td>
      </tr>
      <tr>
          <td width="40%">Jenis Surat</td>
          <td>Surat Keterangan <?php echo $jenis_surat ?> </td>
      </tr>
 <?php if ($jenis_surat=='Izin Penelitian'): ?>
        <tr>
          <td>Kepada</td>
          <td><?php echo $kepada ?> </td>
      </tr>
    <tr>
          <td>Alamat</td>
          <td><?php echo $alamat ?> </td>
      </tr>
    <tr>
          <td>Judul</td>
          <td><?php echo $judul ?> </td>
      </tr>
  
  <?php endif ?>
  <?php if ($jenis_surat=='Kuliah'): ?>
      <tr>
          <td>Nama ortu</td>
          <td><?php echo $nama_ortu ?> </td>
      </tr>
    <tr>
          <td>Pekerjaan</td>
          <td><?php echo $pekerjaan ?> </td>
      </tr>
    <tr>
          <td>Instansi</td>
          <td><?php echo $instansi ?> </td>
      </tr>
      <tr>
          <td>Keperluan</td>
          <td><?php echo $keperluan ?> </td>
      </tr>
      <tr>
          <td>Tahun Ajaran</td>
          <td><input type="text" name="thn_ajaran" class="form-control" placeholder="ganjil TA 2018/2019"></td>
      </tr>
  <?php endif ?>
  <?php if ($jenis_surat=='Permohonan mengajar' || $jenis_surat=='Pemberian Nilai'): ?>
      <tr>
          <td>Semester</td>
          <td><?php echo $smt ?> </td>
      </tr>
      <tr>
          <td>Kepada</td>
          <td><?php echo $kepada ?> </td>
      </tr>
    <tr>
          <td>Tempat</td>
          <td><?php echo $tempat ?> </td>
      </tr>
    <tr>
          <td>Alamat</td>
          <td><?php echo $alamat ?> </td>
      </tr>
      <tr>
          <td>Tahun Ajaran</td>
          <td><input type="text" name="thn_ajaran" class="form-control" placeholder="ganjil TA 2018/2019"></td>
      </tr>
  <?php endif ?>
 
      <!-- <tr>
          <td>Status</td>
          <td>
              <select name="status" id="stts" class="form-control" required>
                <option value="" selected="" disabled="">-Pilih Status-</option>
                <option value="0">Tolak</option>
                <option value="2">Surat Sudah Jadi</option>
              </select>
          </td>
      </tr> -->
      <!-- <tr id="alasan">
          <td>Alasan Tolak</td>
          <td><textarea class="form-control" name="alasan" id="als" placeholder="Alasan Tolak"></textarea></td>
      </tr> -->
      <tr id="nomor">
          <td>Nomor Surat</td>
          <td><?php echo $no_surat ?></td>
      </tr>
      <tr id="tgl_srt">
          <td>Tanggal pada Surat</td>
          <td><?php echo tgl_indo($tgl_padasurat) ?></td>
      </tr>
<!--       <tr id="fl_srt">
          <td>File Surat</td>
          <td><input type="file" class="form-control" name="filesurat"></td>
      </tr> -->
    </table>

  </div>
  <div class="modal-footer">
    <p id="notif"></p>
    <button type="submit" class="btn btn-primary" id="btn_nilai"><i class="fa fa-check fa-fw"></i> Submit</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
</form>
<script>
// $('#alasan').hide();
// $('#nomor').hide();
// $('#tgl_srt').hide();
// $('#fl_srt').hide();

// $('#stts').on('change', function() {
//   //  alert( this.value ); // or $(this).val()
//   if(this.value == "0") {
//     $('#alasan').show();
//     $('#nomor').hide();
//     $('#tgl_srt').hide();
//     $('#fl_srt').hide();
//     document.getElementById("als").focus();
//   } else {
//     $('#alasan').hide();
//     $('#nomor').show();
//     $('#tgl_srt').show();
//     $('#fl_srt').show();
//     document.getElementById("nos").focus();
//   }
// });

  
// $('#form_pengajuan').on('submit',(function(e) {
//     e.preventDefault();
//     var formData = new FormData(this);
//     $.ajax({
//         type:'POST',
//         url: "<?php// echo base_url(); ?>TU/SuketKuliah/pengajuan_action",
//         data:formData,
//         cache:false,
//         contentType: false,
//         processData: false,
//         success: function(msg){
//           MyTable.fnDestroy();
//             $('#detail-suket').modal('hide');
//             $('#pesan').html(msg);
//             $('#btnfilter').click();
//           refresh();
//           setTimeout(function() {document.getElementById('pesan').innerHTML='';},3000);
//         },
//     })
    
//     e.preventDefault();
    
// }));
</script>
