<div class="msg">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">        
        <div class="col-sm-12 ">
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Data Kelompok Pembekalan</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped" id="table">
                <thead>
                  <tr>
                    <th class="col-xs-1">No.</th>
                    <th class="col-xs-3">Program Studi</th>
                    <th class="col-xs-4">Matauji</th>
                    <th class="col-xs-2">Action</th>
                  </tr>
                </thead>
                <tbody>
                <?php
                  $no=0;
                  foreach($nilai->result() as $r){
                    $no++;
                ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><?=$r->nama_prodi?></td>
                    <td><?=$r->nama_matauji?></td>
                    <td>
                      <a href="<?=base_url()?>Dosen/Nilai_pembekalan/get_peserta_ulang/<?=$r->id_jadwal_ulang?>" class="btn btn-primary btn-xs btn-detail"><i class="fa fa-edit"></i> Input Nilai</a>
                    </td>
                  </tr>
                <?php
                  }
                ?>
                </tbody>
              </table>

            </div>
          </div>
        </div>
</div>

<div id="tempat-modal" class="bs-example-modal-lg"></div>


<script type="text/javascript">
  $('#nilai_pembekalan_ulang').addClass('active');
  $('#pkl').addClass('active');

  $(function () {
      $("#table").dataTable({
        "iDisplayLength": 10,
      });
  });

  //modal add
  $(document).on("click", ".btn-detail", function() {
    var id = $(this).attr("data-id");
    
    $.ajax({
      method: "POST",
      url: "<?php echo base_url('Dosen/Validasi_pendaftaran/validate_detail'); ?>",
      data: "id=" +id
    })
    .done(function(data) {
      $('#tempat-modal').html(data);  
      //$('.modal-dialog').attr('class','modal-dialog modal-lg');      
      $('#md_detail').modal('show');
    })
  })
</script>