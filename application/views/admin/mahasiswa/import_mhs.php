<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Import Mahasiswa</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Master/import_mhs" enctype="multipart/form-data">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
      <div class="form-group">
          <label> Program Studi :</label>
          <input type="hidden" name="id_prodi" value="<?php echo $this->session->userdata('prodi_id'); ?>">
          <input type="text" name="prodi" class="form-control" value="<?php echo $this->session->userdata('prodi_name'); ?>" readonly>
      </div>
      <div class="form-group">
          <label> Browse File <i>(File type *.xls)</i> :</label>
          <input type="file" name="file_upload" class="form-control" required>
          <a href="<?php echo base_url() ?>asset/format_mhs.xlsx"><i class="fa fa-cloud-upload fa-fw"></i><i> Download Format Upload</i></a>
      </div> 
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-cloud-upload fa-fw"></i> Upload</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>