<div class="box box-primary">
  <div class="box-header ui-sortable-handle" style="cursor: move;">
    <i class="ion ion-clipboard"></i>

    <h3 class="box-title">Dokumen Akademik</h3>

    <div class="box-tools pull-right">
      <ul class="pagination pagination-sm inline">
        <!--pagination-->  
      </ul>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
    <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
    <ul class="todo-list ui-sortable">
      <?php foreach($dokumen->result() as $d){ ?>
      <li>
        <span class="handle ui-sortable-handle"> <i class="fa fa-file-pdf-o"></i> </span>
        <span class="text"><?=$d->nama_dokumen?></span>
        <span class="text"><a target="_blank" href="<?=base_url()?>public/layanan/dokumen/<?=$d->file_dokumen?>"><i class="fa fa-cloud-download"></i> Download</a></span>
        <small class="label label-danger"><i class="fa fa-clock-o"></i> <?=tgl_indo(date('Y-m-d',strtotime($d->date_created)))?></small>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>

<script type="text/javascript">
  $('#layanan').addClass('active');
  $('#dokumen').addClass('active');
</script>