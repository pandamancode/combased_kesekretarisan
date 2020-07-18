<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class='alert alert-warning alert-dismissible'>
    <h4><i class='icon fa fa-warning'></i> Penting!</h4>
    Lengkapi Biodata Anda dengan sebenar benarnya!</strong>
</div>
<div class="box box-primary box-solid">
  <div class="box-header">
    <i class="fa fa-user fa-fw"></i>
    <h3 class="box-title">Biodata</h3>
  </div>
  <div class="box-body">
  	<form method="post" action="<?=base_url()?>Mahasiswa/Home/save_bio">
  		<div class="form-group">
          <label> NPM :</label>
          <input type="text" name="npm"  value="<?=$mhs->npm?>" class="form-control" placeholder="NPM" readonly>
      	</div> 

      	<div class="form-group">
          <label> Nama Lengkap :</label>
          <input type="text" name="nama" value="<?=$mhs->nama_mhs?>" class="form-control" placeholder="Nama Lengkap" required>
      	</div> 
    
    	<div class="form-group">
          <label> Jenis Kelamin :</label>
          <select name="jk" class="form-control" required>
          	<option disabled="" selected="" value="">Pilih Jenis Kelamin</option>
          	<option value="L" <?php if($mhs->jk=='L'){ echo "selected"; } ?> >Laki-Laki</option>
          	<option value="P" <?php if($mhs->jk=='P'){ echo "selected"; } ?> >Perempuan</option>
          </select>
      	</div> 

      	<div class="form-group">
          <label> Tempat Lahir :</label>
          <input type="text" name="tempat" value="<?=$mhs->tempatlahir_mhs?>" class="form-control" placeholder="Tempat Lahir" required>
      	</div> 

      	<div class="form-group">
          <label> Tanggal Lahir :</label>
          <input type="date" name="tgl" class="form-control" value="<?=$mhs->tgl_lahir?>" placeholder="Tanggal Lahir" required>
      	</div> 

        <div class="form-group">
          <label> No. Telp :</label>
          <input type="text" name="telp" class="form-control" maxlength="15" value="<?=$mhs->no_telp?>" placeholder="No. Telp" required>
        </div>

        <div class="form-group">
          <label> Email :</label>
          <input type="email" name="email" class="form-control" value="<?=$mhs->email?>" placeholder="Email" required>
        </div> 

      	<div class="form-group">
      		<button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i> Simpan Perubahan</button>
      	</div>
    </form>
  </div>
</div>

<script type="text/javascript">
	setTimeout(function() {document.getElementById('respon1').innerHTML='';},3000);
	$('#beranda').addClass('active');
</script>