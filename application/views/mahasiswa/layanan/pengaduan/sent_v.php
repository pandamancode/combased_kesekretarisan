<div class="row">
  <div class="col-md-3">
    <a href="javascript:;" class="btn btn-primary btn-block margin-bottom btn-buat">Buat Pengaduan</a>
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
          <li id="inbox"><a href="<?=base_url()?>Mahasiswa/Layanan/pengaduan/inbox"><i class="fa fa-inbox"></i> Inbox
            <span class="label label-primary pull-right"><?=pengaduan_reply()?></span></a></li>
          <li id="sent"><a href="<?=base_url()?>Mahasiswa/Layanan/pengaduan/sent"><i class="fa fa-envelope-o"></i> Sent</a></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Sent</h3>

        <div class="box-tools pull-right">
          <div class="has-feedback">
            <input type="text" class="form-control input-sm" placeholder="Search Mail">
            <span class="glyphicon glyphicon-search form-control-feedback"></span>
          </div>
        </div>
        <!-- /.box-tools -->
      </div>
      <!-- /.box-header -->
      <div class="box-body no-padding">
        </div>
        <div class="table-responsive mailbox-messages">
          <table class="table table-hover table-striped">
            <tbody>
            <?php 
            if($sent->num_rows()>0){
            foreach($sent->result() as $r){ ?>
              <tr>
                <td class="mailbox-star"><a href="javascript:;"><i class="fa fa-star"></i></a></td>
                <td class="mailbox-name"><a href="<?=base_url()?>Mahasiswa/Layanan/pengaduan/read_sent/<?=$r->no_pengaduan?>"><?=$r->nama_mhs?></a></td>
                <td class="mailbox-subject"><a href="<?=base_url()?>Mahasiswa/Layanan/pengaduan/read_sent/<?=$r->no_pengaduan?>"><b><?=$r->nama_kategori?></b> - <?=$r->judul_pengaduan?></a>
                </td>
                <td class="mailbox-date"><?=date('d-m-Y H:i',strtotime($r->tgl_pengaduan))?> </td>
              </tr>
            <?php } }else{ ?>
              <tr>
                <td class="mailbox-name" colspan="4"><i>Tidak ada data pesan masuk</i></td>
              </tr>
            <?php } ?>
            </tbody>
          </table>
          <!-- /.table -->
        </div>
        <!-- /.mail-box-messages -->
      </div>
      <!-- /.box-body -->
      <div class="box-footer no-padding">
        <div class="mailbox-controls">
          <div class="pull-right">
            <?php echo $this->pagination->create_links(); ?>
            <!--1-50/200
            <div class="btn-group">
              <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
              <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
            </div> -->
          </div>
        </div>
      </div>
    </div>
</div>

<div id="tempat-modal"></div>

<script type="text/javascript">
  $('#layanan').addClass('active');
  $('#pengaduan').addClass('active');
  $('#sent').addClass('active');

  $(document).on("click", ".btn-buat", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Mahasiswa/Layanan/Pengaduan/mod_compose'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);    
      $('.modal-dialog').attr('class','modal-dialog modal-lg');     
      $('#md_compose').modal('show');
    })
  })
</script>