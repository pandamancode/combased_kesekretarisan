  <!-- bootstrap datepicker -->

<!-- Modal Form -->
      		<div class="modal-header" style="background-color:#3c8dbc; color:white;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  Pengajuan Surat Keterangan : <strong >Semester <?php echo $semester;  ?></strong></h4>
            </div>
            
           <form id="form-daftar-suket" method="POST" action="<?php  echo base_url('Mahasiswa/Suket/AjukanSuket'); ?>"> 
           <?php
    			foreach($result_data as $pengajuan){
			?>
            <div class="modal-body" >
                 
                    <div class="row">
                      
                      <div class="col-md-4 form-group">
                      	 <label >NPM </label>
                         <input type="text" class="form-control" name="npm" value="<?php echo $pengajuan->npm; ?>" readonly>
                      </div>
                      <div class="col-md-8 form-group">
                       	<label >Nama Mahasiswa </label>
                       <input type="text" class="form-control" name="nama" value="<?php echo $pengajuan->nama_mhs; ?>" readonly>  
                      </div>
                      <div class="col-md-6 form-group">
                        <label >Tempat Lahir </label>
                        <input type="text" class="form-control" name="tempatlhr" value="<?php echo $pengajuan->tempatlahir_mhs; ?>"  readonly>
                          
                      </div>
                      
                      <div class="col-md-6 form-group">
                        <label >Tanggal Lahir </label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                          <input type="text" class="form-control pull-right" id="datepicker" data-format="dd/MM/yyyy" readonly value="<?php echo nama_hari(date('Y-m-d',strtotime($pengajuan->tgllahir_mhs))).', '.tgl_indo(date('Y-m-d',strtotime($pengajuan->tgllahir_mhs))); ?>">
                        </div>
                      </div>
                      <div class="col-md-12 form-group">
                      	<strong>Note :</strong><br/>
                        <span style="color:red;">Jika Ada Kesalahan Tempat/Tgl Lahir Perbaiki melalui menu <a title="Klik Untuk Update Biodata Mahasiswa " href="<?php echo base_url('Mahasiswa/Home'); ?> " class="btn btn-primary btn-xs" target="_blank"><i class="fa fa-user fa-fw"></i> <b>Profil</b> </a></span>
                      </div>
                      <div class="col-md-6 form-group">
                        <label >Jenis Surat  </label>
                        <select  name="jenis_surat" class="form-control" id="ket">
                        	<option value="" selected disable>Pilih Jenis Surat</option>
<!--                         	<option value="Alih Studi" >Surat Keterangan Alih Studi</option> -->
                        	<option value="Izin Penelitian" >Surat Keterangan Izin Penelitian</option>
                        	<option value="Kuliah" >Surat Keterangan Kuliah</option>
                        	<option value="Lulus" >Surat Keterangan Lulus</option>
                        	<option value="Permohonan mengajar" >Surat Permohonan Perkuliahan agama non Muslim </option>
                          <option value="Pemberian Nilai" >Surat Permohonan Pemberian Nilai Agama</option>

                        </select>
                      </div>
                    <div class="col-md-12 form-group" id="lll">
                    	<label >Tanggal Sidang </label>
                        <input type="date" class="form-control" name="tgl_lulus" >
                    </div>
                      <div class="col-md-12 form-group" id="for22">
                        <label >Kepada </label>
                        <input type="text" class="form-control" name="kepada" placeholder="Ex: Bapak/Ibu ...." > 
                        <label >Alamat </label>
                        <input type="text" class="form-control" name="alamat" placeholder="Ex: Jalan ..." > 
                      </div>
                      <div class="col-md-12 form-group" id="for222">
						<label >Tingkat/Semester </label>
                        <input type="text" class="form-control" name="smt" placeholder="Isi dengan angka Romawi ex: I/II" > 
                      </div>
                    	<div class="col-md-12 form-group" id="penelitian">
                        <label >Judul Penelitian </label>
                        <input type="text" class="form-control" name="judul" placeholder="Ex: Penelitian ..." > 
                      </div>
                      <div class="col-md-12 form-group" id="suketkul">
<!--                         <label >Semester </label>
                        <input type="text" class="form-control" name="smt" placeholder="Isi dengan angka Romawi" >  -->
						<label >Untuk</label>
                        <select  name="js" class="form-control" id="js">
                        	<option value="ortu">Orang Tua</option>
                        	<option value="mhs" >Mahasiswa</option>
                        </select>
                      <div id="untuk">
                      	<label >Nama Orang Tua </label>
                        <input type="text" class="form-control" name="nama_ortu" placeholder="..." > 
                        <label >Pekerjaan </label>
                        <input type="text" class="form-control" name="pekerjaan" placeholder="..." > 
                        <label >Instansi </label>
                        <input type="text" class="form-control" name="instansi" placeholder="..." >
                      </div>
                      <label >Keperluan </label>
                        <input type="text" class="form-control" name="keperluan" placeholder="..." > 
                        
                        
                      </div>
                      <div class="col-md-12 form-group" id="ngajar">
<!--                         <label >Semester </label>
                        <input type="text" class="form-control" name="smt" placeholder="Isi dengan angka Romawi" > -->
                      	<label >Gelar/Pengampu </label>
                        <select class="form-control" name="gelar">
                          <option value="">Pilih</option>
                          <option value="Bapak">Bapak</option>
                          <option value="Ibu">Ibu</option>
                          <option value="Maha Pendeta">Maha Pendeta</option>
                          <option value="Pendeta">Pendeta</option>
                          <option value="Pandita">Pandita</option>
                          <option value="Yosep">Yosep</option>
                          <option value="Bhiksu">Bhiksu</option>
                          <option value="Romo">Romo</option>
                        </select>
                        <label >Tempat </label>
                        <input type="text" class="form-control" name="tempat" placeholder="Ex: Asrama Prahlada / Gereja ..." >  
                        <label >Agama </label>
                        <select class="form-control" name="agama">
                          <option value="">Pilih</option>
                          <option value="Kristen">Kristen</option>
                          <option value="Katolik">Katolik</option>
                          <option value="Hindu">Hindu</option>
                          <option value="Budha">Budha</option>
                          <option value="Kong Hu Cu">Kong Hu Cu</option>
                        </select>
                      </div>
                      
                      <div class="col-md-12 form-group">
                          <strong>Note :</strong><br/>
                        <span style="color:red;">Pastikan Isian Data Benar dan Jelas. Kesalahan data tidak dapat di perbaiki </span> 
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12"></div>
                    </div>

            </div>
           <?php } ?>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary" title="Ketika tombol Ajukan di klik, maka permohonan tidak dapat di ubah lagi"><i class="fa fa-paper-plane-o fa-fw"></i> Ajukan Permohonan </button>  
              <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
            </div>
           </form>
<script type="text/javascript">
	$( document ).ready(function() {
    $("#penelitian").hide();
    $("#suketkul").hide();
    $("#ngajar").hide();
    $("#for22").hide();
    $("#for222").hide();
    $("#lll").hide();
});
$('select#ket').on('change', function() {
  
if (this.value=='Izin Penelitian') {
  $("#for22").show();
  $("#penelitian").show();
  $("#suketkul").hide();
  $("#ngajar").hide();
  $("#for222").hide();
$("#lll").hide();
}else if(this.value=='Kuliah'){
  $("#for22").hide();
  $("#suketkul").show();
  $("#penelitian").hide();
  $("#ngajar").hide();
  $("#for222").show();
$("#lll").hide();
}else if(this.value=='Permohonan mengajar'){
  $("#for222").show();
  $("#suketkul").hide();
  $("#for22").show();
  $("#penelitian").hide();
  $("#ngajar").show();
$("#lll").hide();
}else if(this.value=='Lulus'){
  $("#for222").hide();
  $("#for22").hide();
  $("#suketkul").hide();
  $("#penelitian").hide();
  $("#ngajar").hide();
  $("#lll").show();
}else if(this.value=='Pemberian Nilai'){
  $("#for222").show();
  $("#for22").show();
  $("#suketkul").hide();
  $("#penelitian").hide();
  $("#ngajar").show();
  $("#lll").hide();
}
});

$('select#js').on('change', function() {
  
if (this.value=='ortu') {
  $("#untuk").show();
}else if(this.value=='mhs'){
  $("#untuk").hide();
}

});
</script>
