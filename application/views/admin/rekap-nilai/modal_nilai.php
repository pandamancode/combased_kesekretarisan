<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Ubah Data Nilai</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Rekap_nilai/ubah_nilai">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->
    <?php
      //get data mahasiswa
      $mhs = $this->db->get_where("tb_mahasiswa",array('npm'=>$nilai->npm));
      //get data matauji
      $matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$nilai->id_matauji));
    ?>
    <table class="table table-bordered table-striped">
      <tr>
          <td width="40%">NPM</td>
          <td width="60%"><b><?=$mhs->row()->npm?></b></td>
      </tr>
      <tr>
          <td>Nama Lengkap</td>
          <td><?=$mhs->row()->nama_mhs?></td>
      </tr>
      <tr>
          <td>Matakuliah</td>
          <td><?=$matauji->row()->nama_matauji?></td>
      </tr>
      <tr>
          <td>Grade Nilai</td>
          <td><?=$matauji->row()->grade_nilai?></td>
      </tr>
      <tr>
          <td>Nilai</td>
          <td><input type="number" value="<?=$nilai->nilai?>" name="nilai" class="form-control" placeholder="Nilai" required autocomplete="off"></td>
      </tr>
      
    </table>

  </div>
  <div class="modal-footer">
    <input type="hidden" name="id" value="<?=$nilai->id_nilai?>">
    <input type="hidden" name="grade" value="<?=$matauji->row()->grade_nilai?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>