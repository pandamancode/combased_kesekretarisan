<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Jadwal</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Buat_jadwal/store">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->

      <div class="form-group">  
          <label>Mata Uji</label>  
          <select name="id_matauji" class="form-control" id="matuj_" required style="width:100%">
          <?php
              foreach($matauji->result_array() as $mk)
          {
          ?>
              <option value="<?php echo $mk['id_matauji']; ?>" ><?php echo $mk['nama_matauji']; ?></option>
          <?php } ?> 
          </select>
      </div>
      <div class="form-group">
          <label>Nama Pengawas</label>
          <select name="id_dosen" class="form-control" required id="pengawaz" style="width:100%">
          <?php
              foreach($dosen->result_array() as $mk)
          {
          ?>
              <option value="<?php echo $mk['id_dosen']; ?>" ><?php echo $mk['nama_dosen']; ?></option>
          <?php } ?> 
          </select>
      </div>
      <div class="form-group">
          <label>Kelompok</label>
          <input type="text" name="kelompok" placeholder="Kelompok" id="kelompok" class="form-control" required>
      </div>
      <div class="form-group">
          <label>Tanggal</label>
          <input type="date" name="tgl_ujian"  id="tgl" class="form-control" required>
      </div>
      <div class="form-group">
          <label>Ruangan</label>
          <input type="text" name="ruang" class="form-control" placeholder="Ruangan" required>
      </div>
      <div class="form-group">
          <label>Waktu</label>
          <input type="time" name="pukul"  id="jam" class="form-control" placeholder="Waktu" required>
      </div>
      <div class="form-group">
          <label>Kuota</label>
          <input type="number" name="kuota"  id="kuota" class="form-control" placeholder="Kuota" required>
      </div>

  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $('#pengawaz').select2();
  $('#matuj_').select2();
</script>