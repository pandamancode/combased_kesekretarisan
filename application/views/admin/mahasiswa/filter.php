<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="row">
  <div class="col-md-12">
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-filter "></i>
          <h3 class="box-title">Filter Data </h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post">
          
          <div class="col-md-4">
            <div class="form-group">
              <select class="form-control" required="" name="prodi" id="prod">
                <option selected="" disabled="" value="">-Pilih Program Studi-</option>
                <?php foreach($prodi->result() as $r){ ?>
                <option value="<?php echo $r->id_prodi ?>"><?php echo $r->jenjang ?> - <?php echo $r->nama_prodi ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="col-md-2">
            <div class="form-group">
              <select class="form-control" required="" name="angkatan">
                <option selected="" disabled="" value="">-Pilih Angkatan-</option>
                <?php $now = date('Y'); for($i=2010;$i<=$now;$i++){ ?>
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
    $('#master').addClass('active');
    $('#mhs').addClass('active');
});

$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Mahasiswa/filter_mhs",
        data:dataString,
        beforeSend:function(){
          $("#show").html('<img src="<?=base_url();?>loading-spinner-blue.gif"/><span> Loading...</span>');
        },
        success: function(msg){
            $('#show').html(msg);
            //$('#datafull').hide();
        },
    });
    event.preventDefault();
});

$(document).on("click", ".btn-add", function() {
    var id = $(this).attr("data-id");

    $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Mahasiswa/add'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modalx').html(data);
    	 $('.modal-dialog').attr('class','modal-dialog modal-lg');
        $('#md-add').modal('show');
    })
})




</script>