<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Program Studi</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Prodi/store_prodi">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->
     
      <div class="form-group">
          <label> ID Prodi :</label>
          <input type="text" name="kode" class="form-control" placeholder="Kode Prodi" required>
      </div> 

      <div class="form-group">
          <label> Nama Program Studi :</label>
          <input type="text" name="nama" class="form-control" placeholder="Nama Program Studi" required autocomplete="off">
      </div> 

      <div class="form-group">
          <label> Nama Program Studi English :</label>
          <input type="text" name="eng" class="form-control" placeholder="Nama Program Studi English" required autocomplete="off">
      </div> 

      <div class="form-group">
          <label> Fakultas :</label>
          <select class="form-control" name="fakultas" required>
            <option value="" selected="" disabled="">Pilih</option>
            <?php foreach($fakultas->result() as $r){ ?>
            <option value="<?php echo $r->id_fakultas ?>"><?php echo $r->nama_fakultas ?></option>
            <?php } ?>
          </select>
      </div> 

      <div class="form-group">
          <label> Jenjang :</label>
          <select class="form-control" name="jenjang" required>
            <option value="" selected="" disabled="">Pilih</option>
            <option value="D3">D3</option>
            <option value="S1">S1</option>
          </select>
      </div> 
      

  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>