<div class="modal-header" style="background-color:#3c8dbc; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  Pengajuan Seminar Praktik Kerja Lapangan</strong></h4>
</div>
            
<form id="form-daftar-suket" method="post" enctype="multipart/form-data" action="<?php echo base_url('Mahasiswa/Reg_seminarpkl/Ajukanpendaftaran'); ?>">
  <div class="modal-body col-md-12">
       
            
            <div class="col-md-6 form-group">
              <label>Tanggal</label>
              <input type="date" class="form-control" name="tanggal" placeholder="Tanggal" required>
            </div>
            
            <div class="col-md-6 form-group">
              <label>Pukul</label>
              <input type="time" class="form-control" name="pukul" placeholder="Pukul" required>
            </div>

            <div class="col-md-6 form-group">
              <label>Gedung</label>
              <select id="gedung_" name="gedung" class="form-control" required>
                <option selected="" disabled="" value="">Pilih Gedung</option>
                <?php foreach($gedung->result() as $g){ ?>
                <option value="<?=$g->id_gedung?>"><?=$g->nama_gedung?></option>
                <?php } ?>
              </select>
            </div>
            
            <div class="col-md-6 form-group">
              <label>Ruang</label>
              <select id="ruang_" name="ruang" class="form-control" required>
                <option selected="" disabled="" value="">Pilih Ruang</option>
                <?php foreach($ruang->result() as $r){ ?>
                <option value="<?=$r->id_ruangan?>" class="<?=$r->id_gedung?>" ><?=$r->nama_ruangan?></option>
                <?php } ?>
              </select>
            </div>

            <div class="col-md-12 form-group">
              <label>Perusahaan</label>
              <input type="hidden" name="kd_perusahaan" value="<?php if($kelompok->num_rows()>0){ echo $kelompok->row()->kd_perusahaan; } ?>">
              <input type="text" class="form-control" value="<?php if($kelompok->num_rows()>0){ echo $kelompok->row()->nama_perusahaan; } ?>" name="perusahaan" placeholder="Perusahaan" required>
            </div>

            <div class="col-md-12 form-group">
              <table class="table table-striped">
                <thead>
                  <tr style="background-color:#333435; color:white;">
                    <th width="5%">No.</th>
                    <th>NPM</th>
                    <th>Nama Lengkap</th>
                    <th>Program Studi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no=0; foreach($kelompok->result() as $r){ $no++; ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><?=$r->npm?><input type="hidden" name="id_mhs[]" value="<?=$r->id_mhs?>"></td>
                    <td><?=$r->nama_mhs?></td>
                    <td><?=$r->nama_prodi?></td>
                  </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          

  </div>

  <div class="modal-footer">
    <button type="submit" class="btn btn-primary" title="Ketika tombol Ajukan di klik, maka permohonan tidak dapat di ubah lagi"><i class="fa fa-paper-plane-o fa-fw"></i> Ajukan Permohonan </button>  
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
 </form>
     

<script type="text/javascript">
  $('#ruang_').chained('#gedung_');
</script>