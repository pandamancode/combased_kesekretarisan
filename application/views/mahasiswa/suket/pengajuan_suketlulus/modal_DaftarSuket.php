  <!-- bootstrap datepicker -->

<!-- Modal Form -->
      		<div class="modal-header" style="background-color:#3c8dbc; color:white;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  Pengajuan Surat Keterangan Lulus </h4>
            </div>
            
           <form id="form-daftar-suket" method="POST" action="<?php  echo base_url('Mahasiswa/SuketLulus/AjukanSuket'); ?>"> 
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
                        <span style="color:red;">Jika Ada Kesalahan Tempat/Tgl Lahir Perbaiki melalui menu <a title="Klik Untuk Update Biodata Mahasiswa " href="<?php echo base_url('Mahasiswa/Profil'); ?> " class="btn btn-primary btn-xs" target="_blank"><i class="fa fa-user fa-fw"></i> <b>Profil</b> </a></span>
                      </div>
                      
                      <div class="col-md-12 form-group">
                        <label >Keperluan Pembuatan </label>
                        <input type="text" class="form-control" name="keperluan" placeholder="Ex: Mencari/Mendaftar Kerja" required> 
                        
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
     
