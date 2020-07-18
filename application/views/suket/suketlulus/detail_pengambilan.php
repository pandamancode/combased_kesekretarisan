<?php
  foreach($detail_suket->result() as $res){
    $nama = $res->nama_mhs;
    $npm = $res->npm;
    $jenjang = $res->jenjang;
    $prodi = $res->nama_prodi;
    $id = $res->id_surat_lulus;
    $keperluan = $res->keperluan;
    $tgl_pengajuan = $res->tgl_pengajuan;
    $tgl_ambil = $res->tgl_ambil;
    $ambil = $res->ambil;
    $tgl_lulus = $res->tgl_lulus;
  }
?>

<div class="modal-header box-success box-solid" style="background-color:#00c0ef; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>              
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> <strong> Detail Surat Keterangan Lulus <?php echo strtoupper($nama.' - '.$npm); ?>
  </strong></h4>
</div>


  <input type="hidden" name="id" value="<?php echo $id ?>">

   <div class="modal-body" > 
    <div class=" form-group">
     <p><strong>Nama Mahasiswa  :  </strong><?php echo strtoupper($nama.' - '.$npm).' ('.$jenjang.' - '.$prodi.')';?> </p>   
    </div>
   
    <table class="table table-bordered table-striped">
      <tr>
          <td width="40%">Tanggal Lulus</td>
          <td width="60%"><?php echo tgl_indo($tgl_lulus); ?></td>
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
