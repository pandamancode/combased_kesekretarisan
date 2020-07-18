<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Fakultas</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Fakultas/store_fakultas">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->

      <div class="form-group">
          <label> Nama Fakultas Resmi :</label>
          <input type="text" name="nama" class="form-control" placeholder="Fakultas Resmi" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Nama Fakultas English :</label>
          <input type="text" name="eng" class="form-control" placeholder="Fakultas English" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Fakultas Singkat :</label>
          <input type="text" name="singkat" class="form-control" placeholder="Fakultas Singkat" required autocomplete="off">
      </div>

  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>