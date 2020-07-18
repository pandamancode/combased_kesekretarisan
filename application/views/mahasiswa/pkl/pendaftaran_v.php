<div class="msg">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">
  <div class="col-md-12">
          <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-calendar fa-fw"></i>
            <h3 class="box-title">Pengajuan Praktik Kerja Lapangan (PKL) </h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </div>
            </div>
            <div class="box-body">

            <div class="panel panel-danger panel-dark">
              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Praktik Kerja Lapangan (PKL)</strong></div>
              <div class="panel-body">
              <ol>
              <li>Bagi <strong>MAHASISWA</strong> yang perusahaan nya hilang silahkan hubungi 085266912151.</li>
              <li>Membuat Pengajuan PKL</li>
              <li>Menunggu Validasi Staf, setelah validasi diterima Mahasiswa dapat mengajukan perusahaan</li>
              <li>Setelah pengajuan perusahaan, Mahasiswa menunggu validasi penanggung jawab PKL, jika validasi di terima maka surat pengantar akan dibuat</li>
              <li>Setelah surat pengantar selesai dibuat, maka status pembuatan akan berubah</li>
              </ol>
              
<!--                 <ol>
                  <li>Saudara <strong>wajib</strong> memperhatikan ketentuan Pengajuan Surat Keterangan Kuliah.</li>
                  <li>Pengajuan Surat Keterangan Kuliah hanya dapat dilakukan oleh mahasiswa yang tidak dalam masa cuti.
                  <li>Pastikan Saudara <strong>sudah</strong> membayar biaya perkuliahan semester yang aktif saat ini.</li>
                  <li>Surat yang di setujui dan telah selesai di buat <strong style="color:red;">WAJIB</strong> untuk diambil di BAAKU, jika surat tidak diambil, maka permohonan selanjutnya tidak akan di layani (Ditolak oleh sistem secara Otomatis).</li>
                  <li>Permohonan Surat Keterangan Kuliah hanya dapat dilakukan <strong style="color:red; font-size:16px;">sekali</strong> di setiap semester <strong style="color:red; font-size:16px;"> untuk keperluan yang sama </strong>.</li>
                  <li>Untuk melihat/download Surat Keterangan Kuliah dapat dilakukan melalui kolom <strong> Action &gt; Download Suket Kuliah</strong></li>
                </ol> -->
              </div>
            </div>
        <div class="col-sm-12"  style="text-align:right; margin-top:20px; margin-bottom:10px;">
          <?php 
          $mhs_id=$this->session->userdata('mhs_id');
        	//echo $mhs_id;
          $pembyrnStatusPembyrn=0;
          //$mhs_id='10934';
          $json = file_get_contents("http://siaregistrasi.teknokrat.ac.id/ws_eyx/conn_finansi.php?username=$mhs_id");
          $data = array();
          $data=json_decode($json);
          //print_r($data);
          foreach ($data as $key) {
              $pembyrnStatusPembyrn = $key->pembyrnStatusPembyrn;
            }

           ?>
<!--         <button class="btn btn-danger btn-add"><i class="fa fa-plus"></i> <strong>Buat Pengajuan</strong></button> -->
          <?php if ($pembyrnStatusPembyrn=='2'): ?>
            <button class="btn btn-danger btn-add"><i class="fa fa-plus"></i> <strong>Buat Pengajuan</strong></button>
          <?php endif ?>
        </div>
        
        <div class="col-sm-12 ">
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Riwayat Pengajuan PKL</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th width="5%">No.</th>
                    <th >Perusahaan</th>
                    <th >Prasyarat</th>
                    <th>Pembimbing</th>
                    <th >Status</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                <?php
                  $no=0;
                  foreach($pengajuan->result() as $r){
                    $no++;
                    $nilai = $this->db->select("*")->from("tb_nilai_prasyarat_pkl")->join("tb_matakuliah_prasyarat_pkl","tb_matakuliah_prasyarat_pkl.id_makul_pkl=tb_nilai_prasyarat_pkl.id_makul_pkl")->where("tb_nilai_prasyarat_pkl.id_pkl",$r->id_pkl)->get();
                    $lokasi = $this->db->select("*")->from("tb_pkl")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->where("tb_pkl.id_pkl",$r->id_pkl)->get();
                    if($lokasi->num_rows()>0){
                      $kantor = $lokasi->row()->nama_perusahaan;
                    }else{
                      $kantor = '-';
                    }

                    if($r->validasi_syarat==''){
                      $status = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Menunggu Validasi Syarat</span>";
                    }else if($r->validasi_syarat=='tolak'){
                      $status = "<span class='label label-danger'><i class='fa fa-close'></i> Ditolak</span><i>(".$r->alasan.")</i>"; 
                    }else{
                      $status = "<span class='label label-success'><i class='fa fa-check-circle'></i> Syarat Terpenuhi</span>";
                    }

                    if($r->validasi_pj=='menunggu'){
                      $pj = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Menunggu Validasi PJ PKL</span>";
                    }else if($r->validasi_pj=='tolak'){
                      $pj = "<label class='label label-danger'><i class='fa fa-close'></i> Ditolak</span> <i>(".$r->alasan.")</i>";
                    }else if($r->validasi_pj=='setuju'){
                      $pj = "<span class='label label-success'><i class='fa fa-check-circle'></i> Telah Divalidasi PJ PKL</span>";
                    }else{
                      $pj = '';
                    }

                    if($r->validasi_pj=='setuju' && $r->validasi_syarat=='setujui' && $r->surat_pengantar=='belum jadi'){
                      $surat = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Surat Pengantar sedang dibuat</span>";
                    }else if($r->validasi_pj=='setuju' && $r->validasi_syarat=='setujui' && $r->surat_pengantar=='sudah jadi'){
                      $surat = "<span class='label label-primary'><i class='fa fa-info-circle'></i> Surat Pengantar dapat diambil</span>";
                    }else if($r->validasi_pj=='setuju' && $r->validasi_syarat=='setujui' && $r->surat_pengantar=='sudah diambil'){
                      $surat = "<span class='label label-success'><i class='fa fa-check-circle'></i> Sudah diambil (".$r->nama_mhs.")</span>";
                    }else{
                      $surat = "";
                    }

                    if($r->status_balasan=='Diterima'){
                      $balasan = "<span class='label label-success'><i class='fa fa-check-circle'></i> Diterima</span>";
                    }else if($r->status_balasan=='Ditolak'){
                      $balasan = "<span class='label label-danger'><i class='fa fa-close'></i> Ditolak</span>";
                    }else if($r->status_balasan==''){
                      $balasan = "<span class='label label-info'><i class='fa fa-refresh fa-spin'></i> Menunggu Balasan</span>";
                    }else{
                      $balasan = "";
                    }

                    if(!empty($r->id_pembimbinglapangan)){
                      $lap = $this->db->query("SELECT * FROM tb_dosen WHERE id_dosen='$r->id_pembimbinglapangan' ");
                      if($lap->num_rows()>0){
                        $lapangan = $lap->row()->nama_dosen.' ('.$lap->row()->nik.')';
                      }else{
                        $lapangan = '-';
                      }
                    }else{
                      $lapangan = '-';
                    }

                    if(!empty($r->id_dosenpembimbing)){
                      $pemb = $this->db->query("SELECT * FROM tb_dosen WHERE id_dosen='$r->id_dosenpembimbing' ");
                      if($pemb->num_rows()>0){
                        $laporan = $pemb->row()->nama_dosen.' ('.$pemb->row()->nik.')';
                      }else{
                        $laporan = '-';
                      }
                    }else{
                      $laporan = '-';
                    }
                ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><?=$kantor?></td>
                    <td>
                      <span>
                        <strong>IPK : <?=$r->ipk?></strong><br>
                        <strong>SKS : <?=$r->sks?></strong><hr style="margin-bottom: 0px;margin-top: 0px;">

                        <?php foreach($nilai->result() as $n){ ?>
                        <li><?=$n->nama_makul?><b>(<?=$n->nilai?>)</b></li>
                        <?php } ?>
                      </span>
                    </td>
                    
                    <td>
                      <span>Lapangan : <?=$lapangan?> </span><br>
                      <span>Laporan : <?=$laporan?> </span>
                    </td>

                    <td><span><?=$status?><br><?=$pj?><br><?=$surat?><br><?php if(!empty($status) && !empty($pj) && !empty($surat)){ echo $balasan; } ?></span></td>
                    
                    <td>
                    
                    <?php
                //echo $r->validasi_syarat;
                  
                if(empty($r->validasi_syarat)){ ?>
                      <a href="<?=base_url()?>Mahasiswa/Pendaftaran/batalkan/<?=$r->id_pkl?>" class="btn btn-danger btn-xs"><i class="fa fa-close"></i> Batalkan</a>
                    <?php }else if(empty($r->kd_perusahaan) && $r->validasi_syarat=='setujui'){ ?>
                      <a href="javascript:;" data-id="<?=$r->id_pkl?>" class="btn btn-primary btn-xs btn-perusahaan"><i class="fa fa-bank"></i> Pilih Perusahaan</a>
                    <?php }else if($r->validasi_syarat=='tolak'){ ?>
                      <a href="<?=base_url()?>Mahasiswa/Pendaftaran/batalkan/<?=$r->id_pkl?>" class="btn btn-danger btn-xs"><i class="fa fa-close"></i> Hapus & Ajukan Ulang</a>
                    <?php }else if($r->validasi_pj=='tolak'){ ?>
                    	<a href="<?=base_url()?>Mahasiswa/Pendaftaran/batal_pj/<?=$r->id_pkl?>" class="btn btn-danger btn-xs"><i class="fa fa-close"></i> Hapus Perusahaan & Ajukan Ulang</a>
                    <?php } ?>
                      
                    <?php
                        if($r->validasi_pj=='setuju' && $r->validasi_syarat=='setujui' && $r->surat_pengantar=='sudah diambil' && $r->status_balasan==''){ ?>
                          <a href="javascript:;" data-id="<?=$r->id_pkl?>" class="btn btn-primary btn-xs btn-upload-bukti"><i class="fa fa-cloud-upload"></i> Upload Surat Balasan</a>
                        <?php }else if($r->validasi_pj=='setuju' && $r->validasi_syarat=='setujui' && $r->surat_pengantar=='sudah diambil' && $r->status_balasan=='Ditolak'){ ?>
                          <a href="javascript:;" data-id="<?=$r->id_pkl?>" class="btn btn-primary btn-xs btn-perusahaan"><i class="fa fa-bank"></i> Pilih Perusahaan</a>
                        <?php }else{ echo ""; }
                    ?>
                    </td>
                  </tr>
                <?php
                  }
                ?>
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
  $('#daftar').addClass('active');

  //modal add
  $(document).on("click", ".btn-add", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Pendaftaran/pendaftaran_add'); ?>",
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