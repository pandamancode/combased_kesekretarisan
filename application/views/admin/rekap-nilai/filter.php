<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="row">
  <div class="col-md-12">
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-filter "></i>
          <h3 class="box-title">Filter Data [Rekap Nilai] </h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post">
          
          <div class="col-md-2">
            <div class="form-group">
              <select class="form-control" required="" name="tahun">
                <option selected="" disabled="" value="">-Pilih Tahun-</option>
                <?php 
                $thn = date('Y');
                for($i=2020;$i<=$thn;$i++){ ?>
                <option value="<?php echo $i ?>"><?php echo $i ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="col-md-2">
            <button type="submit" id="btn_tampil" class="btn btn-primary btn-flat"><i class="fa fa-filter fa-fw"></i> Filter</button>
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
    $('#rekap_nilai').addClass('active');
});

$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Rekap_nilai/filter",
        data:dataString,
        beforeSend:function(){
          $("#show").html('<img src="<?=base_url();?>loading-spinner-blue.gif"/><span> Loading...</span>');
        },
        success: function(msg){
            $('#show').html(msg);
        },
    });
    event.preventDefault();
});





</script>