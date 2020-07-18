<hr>
<div class="table-responsive">
    <div style="text-align:right; margin-top:10px; margin-bottom: 10px;">
        <button class="btn btn-primary btn-add"><i class="fa fa-user-plus fa-fw"></i> Tambah Data Mahasiswa</button>
        <button class="btn btn-primary btn-import"><i class="fa fa-cloud-upload fa-fw"></i> Import Data Mahasiswa</button>
    </div>
    <table class="table table-bordered table-striped" id="konfir">
        <thead>
            <tr style="background-color:#3c8dbc; color:white;">
                <th class="text-center" width="5%">#</th>
                <th class="text-center">Option</th>
                <th class="text-center">Mahasiswa</th>
                <th class="text-center">TTL</th>
                <th class="text-center">Program Studi</th>
                
            </tr>
        </thead>
        <tbody>
        <?php
            $no = 0;
            foreach($mahasiswa->result() as $r1){
                $no++;
                if($r1->jk=='L'){
                    $jk = "<span class='label label-info'>Laki-Laki</span>";
                }else if($r1->jk=='P'){
                    $jk = "<span class='label label-info'>Perempuan</span>";
                }else{
                    $jk ="-";
                }
        ?>
            <tr>

                <td class="text-center"><?php echo $no; ?></td>
                <td class="text-center" width="14%" style="vertical-align: middle;">
                    <a title="Reset Password" href="javascript:;" class="btn btn-primary btn-xs xtooltip reset-pw btn-flat" data-id="<?php echo $r1->npm ?>"><i class="fa fa-key fa-fw"></i></a>
                    <a title="Ubah" href="javascript:;" data-id="<?=$r1->npm?>" class="btn btn-success btn-xs xtooltip hapus-data btn-flat"><i class="fa fa-edit fa-fw"></i></a>
                    <a title="Hapus" href="javascript:;" data-id="<?=$r1->npm?>" class="btn btn-danger btn-xs xtooltip hapus-data btn-flat" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i></a>
                </td>
                <td>
                    <span><strong><?=$r1->npm?></strong><br><span style="color:red;font-size:13pt;"><strong><?=$r1->nama_mhs?></strong></span><br><?=$jk?></span>
                </td>
                <td>
                    <span><?=$r1->tempatlahir_mhs?>,<br><?php if(empty($r1->tgllahir_mhs) || $r1->tgllahir_mhs=='0000-00-00'){ echo "-";}else{ echo tgl_indo($r1->tgllahir_mhs); } ?></span>
                </td>
                <td><span><strong><?php echo $r1->jenjang." - ".$r1->nama_prodi ?></strong><br><?=$r1->nama_fakultas?></span></td>

                
            </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>

<div id="tempat-modalx"></div>

<div class="modal fade" id="konfirmasiHapus" role="dialog">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="col-md-offset-1 col-md-10 col-md-offset-1 well">
        <h3 style="display:block; text-align:center;">Hapus Data Ini?</h3>
        <form method="post" id="form-hapus">
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
setTimeout(function() {document.getElementById('respon1').innerHTML='';},3000);

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
        url: "<?php echo base_url('Administrator/Mahasiswa/resetpw_mhs'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modal').html(data);
        $('#show-pw').modal('show');
    })
})

$(document).on("click", ".btn-import", function() {
    var id = $(this).attr("data-id");

    $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Mahasiswa/modal_importmhs'); ?>",
        data: "id=" +id
    })
    .done(function(data) {
        $('#tempat-modal').html(data);
        $('#md-import').modal('show');
    })
})


//modal hapus
$(document).on("click", ".hapus-data", function() {
    id = $(this).attr("data-id");
    $('#id_').val(id);
})

//hapus js
$('#form-hapus').submit(function (event) {
    dataString = $("#form-hapus").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url() ?>Administrator/Mahasiswa/hapus",
        data:dataString,
        
        success: function(msg){
            $('#btn_tampil').click();
            $('#respon1').html(msg);
            $('#konfirmasiHapus').modal('hide');
        },
    });
    event.preventDefault();
});
</script>