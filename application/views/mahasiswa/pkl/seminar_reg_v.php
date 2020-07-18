<div class="msg">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">
  <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-edit fa-fw"></i>
            <h3 class="box-title">Pendaftaran Seminar PKL </h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
            </div>
            <div class="box-body">

            <div class="panel panel-danger panel-dark">
              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Pendaftaran Seminar PKL</strong></div>
              <div class="panel-body">
                <ol>
                  <li>Saudara <strong>wajib</strong> memperhatikan ketentuan Pengajuan Surat Keterangan Kuliah.</li>
                  <li>Pengajuan Surat Keterangan Kuliah hanya dapat dilakukan oleh mahasiswa yang tidak dalam masa cuti.
                  <li>Pastikan Saudara <strong>sudah</strong> membayar biaya perkuliahan semester yang aktif saat ini.</li>
                  <li>Surat yang di setujui dan telah selesai di buat <strong style="color:red;">WAJIB</strong> untuk diambil di BAAKU, jika surat tidak diambil, maka permohonan selanjutnya tidak akan di layani (Ditolak oleh sistem secara Otomatis).</li>
                  <li>Permohonan Surat Keterangan Kuliah hanya dapat dilakukan <strong style="color:red; font-size:16px;">sekali</strong> di setiap semester <strong style="color:red; font-size:16px;"> untuk keperluan yang sama </strong>.</li>
                  <li>Untuk melihat/download Surat Keterangan Kuliah dapat dilakukan melalui kolom <strong> Action &gt; Download Suket Kuliah</strong></li>
                </ol>
              </div>
            </div>
        <div class="col-sm-12"  style="text-align:right; margin-top:20px; margin-bottom:10px;">
          <button class="btn btn-danger btn-add"><i class="fa fa-plus"></i> <strong>Registrasi Seminar Sekarang</strong></button>
        </div>
        
        <div class="col-sm-12 ">
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Riwayat Pengajuan Seminar PKL</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th>Perusahaan</th>
                    <th>Tanggal</th>
                    <th>Ruang</th>
                    <th>Pembimbing</th>
                    <th>Penguji</th>
                    <th>Nilai</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no=0;foreach($seminar->result() as $r){ $no++; 
                    //Cek Pembimbing
                    $mhs = $r->id_mhs;
                    $cek_pembimbing = $this->db->query("SELECT tb_dosen.nama_dosen FROM tb_dosen, tb_pkl WHERE tb_dosen.id_dosen=tb_pkl.id_dosenpembimbing AND tb_pkl.id_mhs='$mhs' ");
                    if($cek_pembimbing->num_rows()>0){
                      $pembimbing = $cek_pembimbing->row()->nama_dosen;
                    }else{
                      $pembimbing = '-';
                    }

                    $cek_penguji = $this->db->query("SELECT tb_dosen.nama_dosen FROM tb_dosen, tb_pengajuan_seminar WHERE tb_dosen.id_dosen=tb_pengajuan_seminar.id_dosenpenguji AND tb_pengajuan_seminar.id_mhs='$mhs' ");
                    if($cek_penguji->num_rows()>0){
                      $penguji = $cek_penguji->row()->nama_dosen;
                    }else{
                      $penguji ='-';
                    }

                  ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><?=$r->nama_perusahaan?></td>
                    <td><?=tgl_indo($r->tanggal_seminar)?></td>
                    <td><?=$r->nama_ruangan?></td>
                    <td><?=$pembimbing?></td>
                    <td><?=$penguji?></td>
                    <td>
                      <?php 
                        $mhs_id=$this->session->userdata('uname');
                        $json = file_get_contents("http://192.168.11.5:8000/eyanx/jason/conn_nilai.php?username=$mhs_id");
                          $data = array();
                          $data=json_decode($json);
                          foreach ($data as $key) {
                              echo $key->traKodeNilai;
                          }

                       ?>
                    </td>
                    <td>
                      <?php if($r->validasi_seminar=='diajukan'){ ?>
                      <a href="javascript:;" class="btn btn-danger btn-xs btn-flat"><i class="fa fa-close"></i> Batal</a>
                      <?php } ?>
                    </td>
                  </tr>
                <?php } ?>
                </tbody>
              </table>

            </div>
          </div>
        </div>
  </div>
</div>
</div>

</div>


<div id="tempat-modal" class="bs-example-modal-lg"></div>


<script type="text/javascript">
  $('#pkl').addClass('active');
  $('#seminarpkl').addClass('active');

  //modal add
  $(document).on("click", ".btn-add", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Reg_seminarpkl/reg_add'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);  
      //$('.modal-dialog').attr('class','modal-dialog modal-lg');      
      $('#md_add').modal('show');
    })
  })

  //pilih perusahaan
  $(document).on("click", ".btn-perusahaan", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Pendaftaran/mod_perusahaan'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);  
      $('.modal-dialog').attr('class','modal-dialog modal-lg');      
      $('#md_perusahaan').modal('show');
    })
  })

  //upload surat balasan
  $(document).on("click", ".btn-upload-bukti", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Pendaftaran/mod_upload_balasan'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);  
      //$('.modal-dialog').attr('class','modal-dialog modal-lg');      
      $('#md_balasan').modal('show');
    })
  })
</script>