<div class="row">
  <div class="col-md-12">
    <div id="respon"></div>
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-list-alt"></i>
          <h3 class="box-title">Rekap Pembayaran</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post" action="<?=base_url()?>Administrator/Keuangan/cetak" target="_blank">
          <div class="col-md-3">
            <div class="form-group">
              <input type="date" name="tgl1" class="form-control" placeholder="Dari Tanggal">
            </div>
          </div>

          <div class="col-md-3">
            <div class="form-group">
              <input type="date" name="tgl2" class="form-control" placeholder="Sampai Tanggal">
            </div>
          </div>

          <div class="col-md-4">
            <button type="submit" id="btn_tampil" onclick="cari()" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-filter fa-fw"></i> Filter</button>
            <button type="submit" class="btn btn-success btn-sm btn-flat"><i class="fa fa-print fa-fw"></i> Cetak</button>
          </div>
        </form>
        <div class="col-md-12" id="show"></div>
        </div>
      </div>
  </div>
</div>

<script type="text/javascript">
$('#rekap_pembayaran').addClass('active');

//$('#form-filter').submit(function (event) {
function cari(){
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Keuangan/filter_pembayaran",
        data:dataString,
        
        success: function(msg){
            $('#show').html(msg);
        },
    });
    event.preventDefault();
}
//});

</script>