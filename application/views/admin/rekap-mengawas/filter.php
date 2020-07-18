<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="row">
  <div class="col-md-12">
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-filter "></i>
          <h3 class="box-title">Filter Data [Rekap Mengawas] </h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post" target="_blank" action="<?=base_url()?>Administrator/Rekap_mengawas/cetak">
          
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
            <button type="button" onclick="filter()" class="btn btn-primary btn-flat"><i class="fa fa-filter fa-fw"></i> Filter</button>
            <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-print fa-fw"></i> Cetak</button>
          </div>
        </form>

        <div class="col-md-12" id="show"></div>

        </div>
      </div>
  </div>
</div>



<div id="tempat-modal"></div>
<script type="text/javascript">
setTimeout(function() {document.getElementById('respon1').innerHTML='';},3000);

$(document).ready(function() { 
    $('#rekap_pengawas').addClass('active');
});

function filter() {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Rekap_mengawas/filter",
        data:dataString,
        beforeSend:function(){
          $("#show").html('<img src="<?=base_url();?>loading-spinner-blue.gif"/><span> Loading...</span>');
        },
        success: function(msg){
            $('#show').html(msg);
        },
    });
    event.preventDefault();
}





</script>