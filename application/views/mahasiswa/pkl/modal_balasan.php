<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Upload Surat Balasan</h4>
</div>

<form method="POST" id="form_pengajuan" enctype="multipart/form-data" action="<?php echo base_url() ?>Mahasiswa/Pendaftaran/upload_balasan">
  <input type="hidden" name="id" value="<?php echo $pkl->id_pkl ?>">

   <div class="modal-body" > 
    <table class="table table-bordered table-striped">
      <tr>
          <td width="40%">Surat Balasan <i>(File Type *.pdf)</i></td>
          <td width="60%"><input type="file" class="form-control" required name="file_upload"></td>
      </tr>
      
      <tr>
          <td>Status</td>
          <td>
              <select name="status" id="stts" class="form-control" required>
                <option value="" selected="" disabled="">-Pilih Status-</option>
                <option value="Diterima">Diterima</option>
                <option value="Ditolak">Ditolak</option>
              </select>
          </td>
      </tr>
      
    </table>

  </div>
  <div class="modal-footer">
    <p id="notif"></p>
    <button type="submit" class="btn btn-primary" id="btn_nilai"><i class="fa fa-check fa-fw"></i> Submit</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
</form>
