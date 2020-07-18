<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>


    <div class="box box-info">
      <div class="box-header">
        <h3 class="box-title"><i class="fa fa-lock fa-fw"></i> Ubah Password</h3>   
      </div>
      <div class="box-body">
      <form id="form-changepw" method="post" action="<?=base_url()?>Mahasiswa/Home/save_pw">
        <div class="form-group">
          <label>Password Lama :</label>
          <input type="password" name="old_pass" class="form-control" placeholder="Password Lama">
        </div>
        <div class="form-group">
          <label>Password Baru :</label>
          <input type="password" name="new_pass" class="form-control" placeholder="Password Baru">
        </div>
        <div class="form-group">
          <label>Konfirmasi Password Baru :</label>
          <input type="password" name="confirm_new_pass" class="form-control" placeholder="Konfirmasi Password Baru">
        </div>
        <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
        <button type="reset" id="reset" class="btn btn-default"><i class="fa fa-refresh fa-fw"></i></button>
      </form></div>
      
    </div> 