<?php
  foreach($detail_suket->result() as $res){
    $nama = $res->nama_mhs;
    $npm = $res->npm;
    $jenjang = $res->jenjang;
    $prodi = $res->nama_prodi;
    $id = $res->id_suket;
    $keperluan = $res->keperluan;
    $jenis_surat = $res->jenis_surat;
    $tgl_pengajuan = $res->tgl_pengajuan;
    $tgl_ambil = $res->tgl_ambil;
    $ambil = $res->ambil;
  }
?>

<div class="modal-header box-success box-solid" style="background-color:#00c0ef; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>              
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> <strong> Detail Surat Keterangan <?php echo strtoupper($nama.' - '.$npm); ?>
  </strong></h4>
</div>

<form method="POST" id="form_pengajuan" enctype="multipart/form-data" >
  <input type="hidden" name="id" value="<?php echo $id ?>">

   <div class="modal-body" > 
    <div class=" form-group">
     <p><strong>Nama Mahasiswa  :  </strong><?php echo strtoupper($nama.' - '.$npm).' ('.$jenjang.' - '.$prodi.')';?> </p>   
    </div>
   
    <table class="table table-bordered table-striped">
      <tr>
          <td width="40%">Jenis Surat</td>
          <td width="60%">Surat Keterangan <?php echo $jenis_surat; ?></td>
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

              echo tgl_indo($tgl);
          ?>
          </td>
      </tr>
      <tr>
          <td>Tanggal Pengambilan</td>
          <td>
          <?php
              $tgl = date('Y-m-d',strtotime($res->tgl_ambil));

              echo tgl_indo($tgl);
          ?>
          </td>
      </tr>
      <tr>
          <td>Nama Pengambil</td>
          <td><?php echo $ambil ?> </td>
      </tr>
    </table>

  </div>
  <div class="modal-footer">
    <p id="notif"></p>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
</form>
