<div class="row">
  <div class="col-md-12">
    <div id="respon"></div>
      <div class="box box-primary box-solid">
        <div class="box-header with-border">
        <i class="fa fa-filter"></i>
          <h3 class="box-title">Filter Telah Validasi</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form id="form-filter" method="post">
          <div class="col-md-4">
            <div class="form-group">
              <select class="form-control" required="" name="fakultas" id="fakultasx">
                <option selected="" disabled="" value="">-Pilih Fakultas-</option>
                <?php foreach($fakultas->result() as $r){ ?>
                <option value="<?php echo $r->id_fakultas ?>"><?php echo $r->nama_fakultas ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="col-md-4">
            <div class="form-group">
              <select class="form-control" required="" name="prodi" id="prodix">
                <option selected="" disabled="" value="">-Pilih Program Studi-</option>
                <?php foreach($prodi->result() as $p){ ?>
                <option value="<?php echo $p->id_prodi ?>" class="<?=$p->id_fakultas?>"><?php echo $p->jenjang ?> - <?php echo $p->nama_prodi ?></option>
                <?php } ?>
              </select>
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

$('#telah_validasi').addClass('active');
$('#prodix').chained('#fakultasx');
$('#form-filter').submit(function (event) {
    dataString = $("#form-filter").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Keuangan/filter_telahvalidasi",
        data:dataString,
        
        success: function(msg){
            $('#show').html(msg);
        },
    });
    event.preventDefault();
});

</script>