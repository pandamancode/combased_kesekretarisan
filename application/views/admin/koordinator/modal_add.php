<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Koordinator</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Koordinator/store">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->

      <div class="form-group">
          <label> Dosen :</label>
          <select name="dosen" class="form-control dsn" style="width:100%;" required>
            <option value="" disabled="" selected="">Pilih Dosen</option>
            <?php foreach($dosen->result() as $r){ ?>
            <option value="<?=$r->id_dosen?>"><?=$r->nama_dosen?></option>
            <?php } ?>
          </select>
      </div>

      <div class="form-group">
          <label> Status :</label>
          <select name="status" class="form-control" required>
            <option value="" disabled="" selected="">Pilih Status</option>
            <option value="Aktif">Aktif</option>
            <option value="Non-Aktif">Non-Aktif</option>
          </select>
      </div>

  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $('.dsn').select2();
</script>