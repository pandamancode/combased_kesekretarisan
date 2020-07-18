<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Edit Data Matauji</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Matauji/update_proses">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">   
      
      <div class="form-group">
          <label> Nama Matauji :</label>
          <input type="text" name="nama_matauji" class="form-control" value="<?php echo $matauji->nama_matauji ?>" placeholder="Nama Matauji" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Harga :</label>
          <input type="number" name="harga" class="form-control" value="<?php echo $matauji->harga ?>" placeholder="Harga" required autocomplete="off">
      </div>

      <div class="form-group">
          <label> Grade Nilai :</label>
          <input type="number" name="grade_nilai" class="form-control" value="<?php echo $matauji->grade_nilai ?>" placeholder="Grade Nilai" required autocomplete="off">
      </div>
  </div>
  <div class="modal-footer">
    <input type="hidden" name="id" class="form-control"  readonly value="<?php echo $matauji->id_matauji ?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>