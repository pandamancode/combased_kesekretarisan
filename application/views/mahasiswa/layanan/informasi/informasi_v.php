<div class="box box-primary box-solid">
    <div class="box-header with-border">
      <i class="fa fa-info-circle"></i>
      <h3 class="box-title">Informasi</h3>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body">
      <div class="box-group" id="accordion">
        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
        <?php foreach($info->result() as $r){ ?>
        <div class="panel box box-success">
          <div class="box-header with-border">
            <h4 class="box-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#<?=$r->id_kategori?>" aria-expanded="false" class="collapsed">
                <?=$r->nama_kategori?>
              </a>
            </h4>
          </div>
          <div id="<?=$r->id_kategori?>" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
            <div class="box-body">
              <?=$r->deskripsi?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
</div>

<script type="text/javascript">
  $('#layanan').addClass('active');
  $('#informasi').addClass('active');
</script>