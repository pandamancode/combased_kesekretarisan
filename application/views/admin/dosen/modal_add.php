<?php
  function generate($length = 8){
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
  }

?>
<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Dosen</h4>
</div>

<form method="post" action="<?php echo base_url(); ?>Administrator/Dosen/store" id="form-dosen-entry" enctype="multipart/form-data">
  <div class="row">
    <div class="modal-body">
      <div class="form-group col-md-6" >
        <label>NIK (Sekaligus Username) <span style="color:red">*</span></label>
        <input type="text" name="nik" class="form-control" placeholder="NIK" value="" required autocomplete="off">
      </div>
      <div class="form-group col-md-6">
        <label>Password <span style="color:red">*</span></label>
        <input type="text" name="password" class="form-control " placeholder="Password Minimal 6 karakter" id="pw1" value="<?php echo generate();  ?>"  readonly >
      </div>
      <div class="form-group col-md-12">
        <label>Nama Dosen <span style="color:red">*</span></label>
        <input type="text" name="nama_dosen" class="form-control" placeholder="Nama Dosen" value="" required autocomplete="off">
      </div>
      <div class="form-group col-md-12">
        <label>No Telp <span style="color:red">*</span></label>
        <input type="text" name="no_telp" class="form-control" placeholder="No Telp" value="" required autocomplete="off">
      </div>
    </div> 
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script>
/*$('#form-dosen-entry').submit(function (event) {
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
});*/
</script>