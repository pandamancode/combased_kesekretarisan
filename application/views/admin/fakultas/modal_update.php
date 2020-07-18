<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Edit Data Fakultas</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Fakultas/update_fakultas">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">   
      
      <div class="form-group">
          <label> Nama Fakultas Resmi :</label>
          <input type="text" name="nama" value="<?=$fakultas->nama_fakultas?>" class="form-control" placeholder="Fakultas Resmi" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Nama Fakultas English :</label>
          <input type="text" name="eng" value="<?=$fakultas->namafak_English?>" class="form-control" placeholder="Fakultas English" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Fakultas Singkat :</label>
          <input type="text" name="singkat" value="<?=$fakultas->singkatan?>" class="form-control" placeholder="Fakultas Singkat" required autocomplete="off">
      </div>
  </div>
  <div class="modal-footer">
    <input type="hidden" name="idfak" class="form-control" placeholder="ID Fakultas" readonly value="<?php echo $fakultas->id_fakultas ?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>