<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Buat Pengaduan</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Mahasiswa/Layanan/Pengaduan/compose" enctype="multipart/form-data">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
      <div class="form-group">
        <label>Subject</label>
        <input type="text" class="form-control" placeholder="Subject" name="subject" required>
      </div>
      <div class="form-group">
        <label>Kategori</label>
        <select class="form-control" name="kategori" required>
          <option selected="" disabled="" value="">Pilih Kategori</option>
          <?php
            foreach($kategori->result() as $r){
              echo "<option value='$r->id_kategori'>$r->nama_kategori</option>";
            }
          ?>

        </select>
      </div>
      <div class="form-group">
        <label>Pesan Pengaduan</label>
          <textarea class="form-control" id="deskripsi" name="deskripsi" rows="5"></textarea>
      </div>

  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-send fa-fw"></i> Kirim Pengaduan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $(function () {
    $("#deskripsi").wysihtml5();
  });
</script>