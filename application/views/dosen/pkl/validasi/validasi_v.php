<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">        
        <div class="col-sm-12 ">
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Riwayat Pengajuan PKL</strong></div>
            <div class="table-responsive" style="padding:5px">

              <table class="table table-striped" id="table">
                <thead>
                  <tr>
                    <th class="col-xs-1">No.</th>
                    <th class="col-xs-3">Mahasiswa</th>
                    <th class="col-xs-4">Prasyarat</th>
                    <th class="col-xs-2">Perusahaan</th>
                    <th class="col-xs-2">Action</th>
                  </tr>
                </thead>
                <tbody>
                <?php
                  $no=0;
                  foreach($pengajuan->result() as $r){
                    $no++;
                    $nilai = $this->db->select("*")->from("tb_nilai_prasyarat_pkl")->join("tb_matakuliah_prasyarat_pkl","tb_matakuliah_prasyarat_pkl.id_makul_pkl=tb_nilai_prasyarat_pkl.id_makul_pkl")->where("tb_nilai_prasyarat_pkl.id_pkl",$r->id_pkl)->get();
                    $where['kd_perusahaan'] = $r->kd_perusahaan;
                    $perusahaan = $this->db->get_where("tb_perusahaan",$where)->row();

                    if($r->jk=='L'){
                        $jk = "<span class='label label-info'>Laki-Laki</span>";
                    }else if($r->jk=='P'){
                        $jk = "<span class='label label-info'>Perempuan</span>";
                    }else{
                        $jk ="-";
                    }

                ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><span><strong><?=$r->npm?></strong><br><span style="color:red;font-size:13pt;"><strong><?=$r->nama_mhs?></strong></span><br><?=$jk?></span></td>
                    <td>
                      <span>
                        <strong>IPK : <?=$r->ipk?></strong><br>
                        <strong>SKS : <?=$r->sks?></strong><hr style="margin-bottom: 0px;margin-top: 0px;">

                        <?php foreach($nilai->result() as $n){ ?>
                        <li><?=$n->nama_makul?><b>(<?=$n->nilai?>)</b></li>
                        <?php } ?>
                      </span>
                    </td>
                    <td><?=$perusahaan->nama_perusahaan?></td>
                    <td>
                      <a href="javascript:;" data-id="<?=$r->id_pkl?>" class="btn btn-primary btn-xs btn-detail"><i class="fa fa-list-alt"></i> Detail Pengajuan</a>
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
  $('#validasi').addClass('active');

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