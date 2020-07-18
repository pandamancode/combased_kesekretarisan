
  <!-- bootstrap datepicker -->
  
<!-- Modal Form -->
	<?php 
		if($pengajuan['semester']!=''){
			$thn=substr($pengajuan['semester'],0,4);
			$smt=substr($pengajuan['semester'],4,1);
			if($smt=='1') $semester = 'Ganjil T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='2') $semester = 'Genap T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='3') $semester = 'SP Ganjil T.A. '.$thn.'/'.($thn+1);
			elseif($smt=='4') $semester = 'SP Genap T.A. '.$thn.'/'.($thn+1);
		}  
?>
      		<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  Edit Permohonan Surat Keterangan Kuliah : <strong style="color:blue;">Semester <?php echo $semester;  ?></strong></h4>
            </div>
      		<form  method="POST" action="<?php  echo base_url('Mahasiswa/Suket/UpdateSuket');?>">
            
            	<input type="hidden" name="id" value="<?php echo encrypt_url($pengajuan['id_suket_kuliah']); ?>">
                <input type="hidden" name="ids" value="<?php echo encrypt_url($pengajuan['semester']); ?>">

      		  <div class="modal-body" >
      		    <div class="row">
      		      <div class="col-md-4 form-group">
      		        <label >NPM </label>
      		        <input type="text" class="form-control" name="npm" value="<?php echo $pengajuan['npm'];?>" readonly>
   		          </div>
      		      <div class="col-md-8 form-group">
      		        <label >Nama Mahasiswa </label>
      		        <input type="text" class="form-control" name="nama" value="<?php echo $pengajuan['nama_mhs'];?>" readonly>
   		          </div>
      		      <div class="col-md-6 form-group">
      		        <label >Tempat Lahir </label>
      		        <input type="text" class="form-control" name="tempatlhr" value="<?php echo $pengajuan['tempatlahir_mhs'];?>"  readonly>
   		          </div>
      		      <div class="col-md-6 form-group">
      		        <label >Tanggal Lahir </label>
      		        <div class="input-group date">
      		          <div class="input-group-addon"> <i class="fa fa-calendar"></i> </div>
      		          <input type="text" class="form-control pull-right" id="datepicker" data-format="dd/MM/yyyy" readonly value="<?php echo nama_hari(date('Y-m-d',strtotime($pengajuan['tgllahir_mhs']))).', '.tgl_indo(date('Y-m-d',strtotime($pengajuan['tgllahir_mhs']))); ?>">
   		            </div>
   		          </div>
      		      <div class="col-md-12 form-group"> <strong>Note :</strong><br/>
      		        <span style="color:red;">Jika Ada Kesalahan Tempat/Tgl Lahir Perbaiki melalui menu <a title="Klik Untuk Update Biodata Mahasiswa " href="<?php echo base_url('Mahasiswa/Profil'); ?> " class="btn btn-primary btn-xs" target="_blank"><i class="fa fa-user fa-fw"></i> <b>Profil</b></a></span> </div>
      		      <div class="col-md-6 form-group">
      		        <label >Nama Orang Tua/Wali</label>
      		        <input type="text" class="form-control" name="orangtua" placeholder="Nama Orang Tua/Wali Mahasiswa"  value="<?php echo $pengajuan['nama_ortu'];?>" required>
   		          </div>
      		      <div class="col-md-6 form-group">
      		        <label >Pekerjaan</label>
      		        <input type="text" class="form-control" name="pekerjaan" placeholder="Ex: PNS/Guru/Kayawan Swasta" value="<?php echo $pengajuan['pekerjaan_ortu'];?>"  required>
   		          </div>
      		      <div class="col-md-6 form-group">
      		        <label >Instansi Tempat Orang Tua/Wali bekerja</label>
      		        <input type="text" class="form-control" name="instansi" placeholder="Ex : SMA N.2 Bandarlampung" value="<?php echo $pengajuan['instansi'];?>"  required>
   		          </div>
      		      <div class="col-md-6 form-group">
      		        <label >Tujuan Pembuatan Surat </label>
      		        <select  name="tujuan" class="form-control">
      		          <option value="" >Pilih Tujuan Pembuatan Surat</option>
      		          <option value="Beasiswa" <?php if( $pengajuan['keperluan']=='Beasiswa') echo "selected";?> >Pengurusan Beasiswa</option>
      		          <option value="Buka Rekening" <?php if( $pengajuan['keperluan']=='Buka Rekening') echo "selected";?> >Buka Rekening Bank</option>
      		          <option value="Lomba" <?php if( $pengajuan['keperluan']=='Lomba') echo "selected";?> >Mengikuti Lomba</option>
      		          <option value="Melamar Pekerjaan" <?php if( $pengajuan['keperluan']=='Melamar Pekerjaan') echo "selected";?> >Melamar Pekerjaan</option>
      		          <option value="Pengurusan ASKES" <?php if( $pengajuan['keperluan']=='Pengurusan ASKES') echo "selected";?> >Pengurusan ASKES</option>
      		          <option value="Pengurusan BPJS Kesehatan" <?php if( $pengajuan['keperluan']=='Pengurusan BPJS Kesehatan') echo "selected";?> >Pengurusan BPJS Kesehatan</option>
      		          <option value="Pengurusan BPJS Ketenagakerjaan" <?php if( $pengajuan['keperluan']=='Pengurusan BPJS Ketenagakerjaan') echo "selected";?> >Pengurusan BPJS Ketenagakerjaan</option>
      		          <option value="Tunjangan Gaji Orangtua" <?php if( $pengajuan['keperluan']=='Tunjangan Gaji Orangtua') echo "selected";?> >Tunjangan Gaji Orangtua</option>
      		          <option value="Tunjangan Pensiun" <?php if( $pengajuan['keperluan']=='Tunjangan Pensiun') echo "selected";?> >Tunjangan Pensiun</option>
      		          <option value="Lainnya" <?php if( $pengajuan['keperluan']=='Lainnya') echo "selected";?>  >Lainnya</option>
   		            </select>
   		          </div>
      		      <div class="col-md-12 form-group">
      		        <label >Keterangan Pembuatan </label>
      		        <input type="text" class="form-control" name="keterangan" placeholder="Penjelasan Lengkap Surat Keterangan Kuliah diajukan"  value="<?php echo $pengajuan['keterangan'];?>" required>
   		          </div>
      		      <div class="col-md-12 form-group"> <strong>Note :</strong><br/>
      		        <span style="color:red;">Pastikan Isian Data Benar dan Jelas. Kesalahan data tidak dapat di perbaiki </span> </div>
   		        </div>
      		    <div class="row">
      		      <div class="col-xs-12"></div>
   		        </div>
   		      </div>
      		  <div class="modal-footer">
      		    <button type="submit" class="btn btn-primary" title="Ketika tombol Ajukan di klik, maka permohonan tidak dapat di ubah lagi"><i class="fa fa-paper-plane-o fa-fw"></i> Perbaiki &amp; Ajukan Permohonan </button>
      		    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
   		      </div>
</form>
