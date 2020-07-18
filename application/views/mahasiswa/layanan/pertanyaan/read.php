<div class="row">
  <div class="col-md-3">
    <a href="javascript:;" class="btn btn-primary btn-block margin-bottom btn-buat">Buat Pertanyaan</a>
    <div class="box box-solid">
      <div class="box-header with-border">
        <h3 class="box-title">Folders</h3>

        <div class="box-tools">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
        </div>
      </div>
      <div class="box-body no-padding">
        <ul class="nav nav-pills nav-stacked">
          <li id="inbox"><a href="<?=base_url()?>Mahasiswa/Layanan/pertanyaan/inbox"><i class="fa fa-inbox"></i> Inbox
            <span class="label label-primary pull-right"><?=pengaduan_read()?></span></a></li>
          <li id="sent"><a href="<?=base_url()?>Mahasiswa/Layanan/pertanyaan/sent"><i class="fa fa-envelope-o"></i> Sent</a></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-9">

    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Pesan Masuk</h3>
      </div>
      <div class="box-body no-padding">
        <div class="mailbox-read-info">
          <h3><?=$read->judul_pertanyaan?></h3>
          <h5>Dari: 
          <?php
            $id = $read->id_mhs;
            $mahasiswa = $this->db->query("SELECT nama_mhs FROM tb_mahasiswa WHERE id_mhs='$id' ");
            if($mahasiswa->num_rows()>0){
              echo $mahasiswa->row()->nama_mhs;
            }else{
              echo "";
            }
          ?>
            <span class="mailbox-read-time pull-right"><?php tgl_indo(date('Y-m-d',strtotime($read->tgl_pertanyaan))).' '.date('H:i',strtotime($read->tgl_pertanyaan)) ?></span></h5>
        </div>
        <div class="mailbox-read-message">
          <p><?=$read->deskripsi_pertanyaan?></p>
        </div>
      </div>
    </div>

  </div>
</div>

<div id="tempat-modal"></div>

<script type="text/javascript">
  $('#layanan').addClass('active');
  $('#pertanyaan').addClass('active');
  $('#sent').addClass('active');
  
  $(document).on("click", ".btn-reply", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Layanan/Pertanyaan/mod_reply'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);    
      $('.modal-dialog').attr('class','modal-dialog modal-lg');     
      $('#md_reply').modal('show');
    })
  })

  $(document).on("click", ".btn-buat", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Layanan/Pertanyaan/mod_compose'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);    
      $('.modal-dialog').attr('class','modal-dialog modal-lg');     
      $('#md_compose').modal('show');
    })
  })

</script>