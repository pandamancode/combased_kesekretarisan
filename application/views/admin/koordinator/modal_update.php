<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Edit Data Koordinator</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Koordinator/update_proses">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">   
      
      <div class="form-group">
          <label> Dosen :</label>
          <select name="dosen" class="form-control dsn" style="width:100%;" required>
            <option value="" disabled="" selected="">Pilih Dosen</option>
            <?php foreach($dosen->result() as $r){ ?>
            <option value="<?=$r->id_dosen?>" <?php if($koordinator->id_dosen==$r->id_dosen){ echo "selected"; } ?> ><?=$r->nama_dosen?></option>
            <?php } ?>
          </select>
      </div>

      <div class="form-group">
          <label> Status :</label>
          <select name="status" class="form-control" required>
            <option value="" disabled="" selected="">Pilih Status</option>
            <option value="aktif" <?php if($koordinator->status=='aktif'){ echo "selected"; } ?> >Aktif</option>
            <option value="non-aktif" <?php if($koordinator->status=='non-aktif'){ echo "selected"; } ?> >Non-Aktif</option>
          </select>
      </div>
  </div>
  <div class="modal-footer">
    <input type="hidden" name="id" class="form-control"  readonly value="<?php echo $koordinator->id_koordinator ?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $('.dsn').select2();
</script>