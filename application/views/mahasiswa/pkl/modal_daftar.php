<div class="modal-header" style="background-color:#3c8dbc; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  Pengajuan Praktik Kerja Lapangan</strong></h4>
</div>
            
<form id="form-daftar-suket" method="post" enctype="multipart/form-data" action="<?php echo base_url('Mahasiswa/Pendaftaran/Ajukanpendaftaran'); ?>">
  <div class="modal-body" >
       
          <div class="row">            
            <?php foreach($makul->result() as $m){ ?>
            <div class="col-md-6 form-group">
              <label><?=$m->nama_makul?></label>
              <input type="text" class="form-control" name="_<?=$m->id_makul_pkl?>" placeholder="Nilai HM <?=$m->nama_makul?>" required>
              <input type="hidden" class="form-control" name="<?=$m->id_makul_pkl?>" value="<?=$m->id_makul_pkl?>">
            </div>
            <?php } ?>
            <div class="col-md-6 form-group">
              <label>IPK</label>
              <input type="text" maxlength="4" class="form-control" name="ipk" placeholder="IPK" required>
            </div>
            <div class="col-md-6 form-group">
              <label>Total SKS</label>
              <input type="number" min="1" max="999"  class="form-control" name="sks" placeholder="Total SKS" required>
            </div>

            <div class="col-md-12 form-group">
              <label >File Transkrip Nilai </label>
              <input type="file" class="form-control" name="file_upload" required> 
              
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

  <div class="modal-footer">
    <button type="submit" class="btn btn-primary" title="Ketika tombol Ajukan di klik, maka permohonan tidak dapat di ubah lagi"><i class="fa fa-paper-plane-o fa-fw"></i> Ajukan Permohonan </button>  
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
 </form>
     
