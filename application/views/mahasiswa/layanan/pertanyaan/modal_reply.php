<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Balas Pesan Pertanyaan</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Layanan/Pertanyaan/reply" enctype="multipart/form-data">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
      <div class="box-body no-padding">
        <div class="mailbox-read-message">
          <span style="font-size: 12pt;"><b><?=$pengaduan->judul_pengaduan?></b></span>
          <p><?=$pengaduan->deskripsi_pengaduan?></p>
        </div>
        <!-- /.mailbox-read-message -->
      </div>
      <hr>
      <div class="form-group">
          <textarea class="form-control" id="deskripsi" name="deskripsi" rows="5"></textarea>
      </div>

  </div>
  <div class="modal-footer">
    <input type="hidden" name="id" value="<?=$pengaduan->no_pertanyaan?>">
    <button type="submit" class="btn btn-primary"><i class="fa fa-send fa-fw"></i> Kirim Balasan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $(function () {
    $("#deskripsi").wysihtml5();
  });
</script>