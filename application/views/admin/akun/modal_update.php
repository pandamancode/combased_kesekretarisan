<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Edit Data Role</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Module/update_process">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">   
      <div class="form-group">
          <label> Nama Modul :</label>
          <input type="text" name="nama" class="form-control" value="<?=$module->nama_modul?>" placeholder="Nama Modul Sistem">
      </div> 
  </div>
  <div class="modal-footer">
    <input type="hidden" name="id" class="form-control" readonly value="<?php echo $module->id_modul ?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>