<div id="respon1"><?php echo $this->session->flashdata('msg');?></div>
<div class="box box-primary box-solid" id="datafull">
  <div class="box-header">
    <i class="fa fa-user fa-fw"></i>
    <h3 class="box-title">Data Dosen</h3>
  </div>
  <div class="box-body">
    <div class="col-sm-12">
    <div style="text-align:right; margin-top:10px; margin-bottom: 10px;">
        <button class="btn btn-primary btn-add"><i class="fa fa-user-plus fa-fw"></i> Tambah Data Dosen</button>
    </div>
      <div class="table-responsive">
      <table class="table table-bordered table-striped" id="konfir">
        <thead>
            <tr style="background-color:#3c8dbc; color:white;">
                <th class="text-center" width="5%">#</th>
                <th class="text-center">Option</th>
                <th class="text-center">NIK</th>
                <th class="text-center">Nama Dosen</th>
                <th class="text-center">No. Telp</th>
                
            </tr>
        </thead>
        <tbody>
        <?php
            $no = 0;
            foreach($dosen->result() as $r1){
                $no++;
        ?>
            <tr>
                <td class="text-center"><?php echo $no; ?></td>
                <td class="text-center" width="14%" style="vertical-align: middle;">
                    <a title="Reset Password" href="javascript:;" class="btn btn-primary btn-flat btn-xs xtooltip reset-pw" data-id="<?php echo $r1->nik ?>"><i class="fa fa-key fa-fw"></i></a>
                    <a title="Ubah" href="javascript:;" class="btn btn-success btn-flat btn-xs xtooltip btn-update" data-id="<?php echo $r1->id_dosen ?>"><i class="fa fa-edit fa-fw"></i></a>
                    <a title="Hapus" href="javascript:;" data-id="<?=$r1->id_dosen?>" class="btn btn-danger btn-flat btn-xs xtooltip hapus-data" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i></a>
                </td>
                <td><?=$r1->nik?></td>
                <td><?=$r1->nama_dosen?></td>
                <td><?php echo $r1->no_telp ?></td>

                
            </tr>
        <?php
            }
        ?>
        </tbody>
      </table>
      </div>
    </div>
  </div>
  <!-- /.box-body -->
</div>

<div id="tempat-modalx"></div>

<div class="modal fade" id="konfirmasiHapus" role="dialog">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="col-md-offset-1 col-md-10 col-md-offset-1 well">
        <h3 style="display:block; text-align:center;">Hapus Data Ini?</h3>
        <form method="post" action="<?php echo base_url() ?>Administrator/Dosen/delete">
          <input type="hidden" name="id" id="id_">
          <div class="col-md-6">
            <button type="submit" class="form-control btn btn-primary"> <i class="glyphicon glyphicon-ok-sign"></i> Ya, Hapus Data Ini</button>
          </div>
          <div class="col-md-6">
            <button class="form-control btn btn-danger" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Tidak</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function() { 
    $('#master').addClass('active');
    $('#dosen').addClass('active');
});

$(function () {
    $("#konfir").dataTable({
      "iDisplayLength": 10,
    });
        
    $('.xtooltip').tooltip(); 
  });

$(document).on("click", ".reset-pw", function() {
    var id = $(this).attr("data-id");

    $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Dosen/resetpw_dosen'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modalx').html(data);
        $('#show-pw').modal('show');
    })
})

$(document).on("click", ".btn-add", function() {
    var id = $(this).attr("data-id");

    $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Dosen/add'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modalx').html(data);
        //$('.modal-dialog').attr('class','modal-dialog modal-lg');
        $('#md-add').modal('show');
    })
})
$(document).on("click", ".btn-update", function() {
    var id = $(this).attr("data-id");

    $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Dosen/update'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modalx').html(data);
        //$('.modal-dialog').attr('class','modal-dialog modal-lg');
        $('#md-update').modal('show');
    })
})

//modal hapus
    $(document).on("click", ".hapus-data", function() {
        id = $(this).attr("data-id");
        $('#id_').val(id);
    })
</script>