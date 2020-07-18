<div class="row">
  <div class="col-md-12">
    <div id="respon"></div>
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-filter"></i>
          <h3 class="box-title">Filter Pembayaran</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post">
          <div class="col-md-3">
            <div class="form-group">
              <input type="text" name="npm" placeholder="Nomor Pokok Mahasiswa" class="form-control" autocomplete="off">
            </div>
          </div>
          <div class="col-md-2">
            <button type="submit" id="btn_tampil" class="btn btn-primary btn-sm"><i class="fa fa-filter fa-fw"></i> Filer</button>
          </div>
        </form>
        <div class="col-md-12" id="show"></div>
        </div>
      </div>
  </div>
</div>

<script type="text/javascript">

$('#validasi').addClass('active');

$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Keuangan/filter_validasi",
        data:dataString,
        
        success: function(msg){
            $('#show').html(msg);
        },
    });
    event.preventDefault();
});

</script>