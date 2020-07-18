<div class="box box-info box-solid">
  <div class="box-header">
    <i class="fa fa-plus-circle fa-fw"></i>
    <h3 class="box-title">Tambah Jadwal</h3>
  </div>
<form name="form-kamar" method="post" action="<?php echo base_url() ?>Administrator/Buat_jadwal/store" enctype="multipart/form-data">
  <div class="box-body">
  <!--Cek Data-->
    <div class="">  
      <div class="form-group">  
          <label>Mata Uji</label>  
          <select name="iduji" class="form-control" required>
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
          <select name="id_pengawas" class="form-control" required id="pengawaz">
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
          <input type="text" name="kelompok" placeholder="Kelompok" id="kelompok" class="form-control" readonly>
      </div>
      <div class="form-group">
          <label>Tanggal</label>
          <input type="date" name="tgl"  id="tgl" class="form-control" required>
      </div>
      <div class="form-group">
          <label>Ruangan</label>
          <input type="text" name="ruang" class="form-control" required>
      </div>
      <div class="form-group">
          <label>Waktu</label>
          <input type="time" name="jam"  id="jam" class="form-control" placeholder="Waktu" required>
      </div>
      <div class="form-group">
          <label>Kuota</label>
          <input type="number" name="kuota"  id="kuota" class="form-control" placeholder="Kuota" required>
      </div>

    </div>
  </div>
  <div class="box-footer">
    
      <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
      <button type="reset" class="btn btn-danger"> <i class="fa fa-refresh fa-fw"></i></button>
    
  </div>
</form>
</div>

<script type="text/javascript">
  $('#created').addClass('active');
  $('#pengawaz').select2();
</script>