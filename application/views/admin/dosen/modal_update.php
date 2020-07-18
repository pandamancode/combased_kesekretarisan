<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Ubah Data Dosen</h4>
</div>

<form method="post" id="form-dosen-update" enctype="multipart/form-data" action="<?php echo base_url(); ?>Administrator/Dosen/update_prosess">
  <div class="row">
    <div class="modal-body">
      <div class="form-group col-md-4" >
        <label>NIK (Sekaligus Username) <span style="color:red">*</span></label>
        <input type="text" name="nik" class="form-control" placeholder="NIK" value="<?=$dosen->nik?>" required autocomplete="off">
      </div>
      <div class="form-group col-md-8">
        <label>Nama Dosen <span style="color:red">*</span></label>
        <input type="text" name="nama_dosen" class="form-control" placeholder="Nama Dosen" value="<?=$dosen->nama_dosen?>" required autocomplete="off">
      </div>
      <div class="form-group col-md-12">
        <label>No Telp <span style="color:red">*</span></label>
        <input type="text" name="no_telp" class="form-control" placeholder="No Telp" value="<?=$dosen->no_telp?>" required autocomplete="off">
      </div>
    </div> 
  </div>
  <div class="modal-footer">
    <input type="hidden" value="<?=$dosen->id_dosen?>" name="id">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script>
$('#form-dosen-entry').submit(function (event) {
    dataString = $("#form-dosen-entry").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Dosen/store",
        data:dataString,
        
        success: function(msg){
            $('#respon1').html(msg);
          $('#btn_tampil').click();
          $('#md-import').modal('hide');
        },
    });
    event.preventDefault();
});
</script>