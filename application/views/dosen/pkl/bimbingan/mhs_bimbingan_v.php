<div class="msg" style="display:none;">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">        
  <div class="col-sm-12 ">
    <div class="panel panel-primary" >
      <div class="panel-heading" >
  		<i class="fa fa-graduation-cap fa-fw"></i><strong> &nbsp; Data Mahasiswa Bimbingan PKL</strong></div>
      <div class="table-responsive" style="padding:5px">

        <table class="table table-striped" id="table">
          <thead>
            <tr>
              <th width="5%">No.</th>
             
              <th>Mahasiswa</th>
              <th>Program Studi</th>
              <th>Tempat PKL</th>
              <th width="10%">Action</th>
            </tr>
          </thead>
          <tbody>
          <?php
            $no=0;
            foreach($bimbingan->result() as $r){
              $no++;
              $mhs = $this->db->select("tb_mahasiswa.npm, tb_mahasiswa.nama_mhs, tb_prodi.nama_prodi")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_pkl.kd_perusahaan",$r->kd_perusahaan)->where("tb_pkl.id_periode",$r->id_periode)->where("tb_mahasiswa.id_prodi",$r->id_prodi)->get();

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
              <td>
                  <ul class="sidebar-menu">
                  <?php foreach($mhs->result() as $m){ ?>
                      <li><i class="fa fa-user text-danger"></i> <?=strtoupper($m->nama_mhs.' ('.$m->npm.')');?></li>
                  <?php } ?>
                  </ul>
              </td>
              <td><?php if($mhs->num_rows()>0){ echo $mhs->row()->nama_prodi; }?></td>
              <td><?=$r->nama_perusahaan?></td>
              <td>
                <!-- <a href="javascript:;" class="btn btn-primary btn-xs btn-detail"><i class="fa fa-list-alt"></i> Detail Pengajuan</a> -->
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

  <div class="col-sm-12 ">
    <div class="panel panel-primary" >
      <div class="panel-heading" >
      <i class="fa fa-graduation-cap fa-fw"></i><strong> &nbsp; Data Mahasiswa Bimbingan PKL Lapangan</strong></div>
      <div class="table-responsive" style="padding:5px">

        <table class="table table-striped" id="table">
          <thead>
            <tr>
              <th width="5%">No.</th>
              <th>Mahasiswa</th>
              <th>Program Studi</th>
              <th>Tempat PKL</th>
              <th>Foto</th>
              <th width="20%">Upload Foto</th>
            </tr>
          </thead>
          <tbody>
          <?php
            $no=0;
            foreach($lapangan->result() as $r){
              $no++;
              $mhs = $this->db->select("tb_mahasiswa.npm, tb_mahasiswa.nama_mhs, tb_prodi.nama_prodi")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_pkl.kd_perusahaan",$r->kd_perusahaan)->where("tb_pkl.id_periode",$r->id_periode)->where("tb_mahasiswa.id_prodi",$r->id_prodi)->get();

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
              <td>
                  <ul class="sidebar-menu">
                  <?php foreach($mhs->result() as $m){ ?>
                      <li><i class="fa fa-user text-danger"></i> <?=strtoupper($m->nama_mhs.' ('.$m->npm.')');?></li>
                  <?php } ?>
                  </ul>
              </td>
              <td><?php if($mhs->num_rows()>0){ echo $mhs->row()->nama_prodi; }?></td>
              <td><?=$r->nama_perusahaan?></td>
              <td>
                <?php 
                if ($r->foto=="") {
                   echo "Kosong";
                 }else{
                  echo "Telah Di Upload";
                 } ?>
              </td>
              <td>
                <form id="uploadfoto" method="post" enctype="multipart/form-data" action="<?php echo base_url() ?>Dosen/Mahasiswa_bimbinganpkl/upload_foto">
                  <input type="file" class="form-control" name="foto" id="foto">
                  <input type="hidden" name="id_pkl" value="<?=$r->id_pkl; ?>">
                </form>
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


  <?php 
  if(is_kaprodi($this->session->userdata('id_dosen'))=='TRUE'){ ?>
      <div class="col-sm-12 ">
    <div class="panel panel-primary" >
      <div class="panel-heading" >
      <i class="fa fa-graduation-cap fa-fw"></i><strong> &nbsp; Data Kunjungan</strong></div>
      <div class="table-responsive" style="padding:5px">

        <table class="table table-striped" id="table">
          <thead>
            <tr>
              <th width="5%">No.</th>
             <th>#</th>
              <th>Mahasiswa</th>
              <th>Program Studi</th>
              <th>Tempat PKL</th>
              <th width="10%">Foto</th>
            </tr>
          </thead>
          <tbody>
          <?php
            $no=0;
            foreach($koordinator->result() as $r){
              $no++;
              $mhs = $this->db->select("tb_mahasiswa.npm, tb_mahasiswa.nama_mhs, tb_prodi.nama_prodi, tb_pkl.id_pkl")->from("tb_pkl")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->join("tb_prodi","tb_prodi.id_prodi=tb_mahasiswa.id_prodi")->where("tb_pkl.kd_perusahaan",$r->kd_perusahaan)->where("tb_pkl.id_periode",$r->id_periode)->where("tb_mahasiswa.id_prodi",$r->id_prodi)->get();

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
              <td>
               <?php foreach($mhs->result() as $m){ ?>
                   <a href="<?php echo base_url() ?>Dosen/Mahasiswa_bimbinganpkl/batalkan/<?=strtoupper($m->id_pkl);?>" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i><?=strtoupper($m->npm);?></a><br>
               <?php } ?>
              	
              </td>
              <td>
                  <ul class="sidebar-menu">
                  <?php foreach($mhs->result() as $m){ ?>
                      <li> <?=strtoupper($m->nama_mhs.' ('.$m->npm.')');?> </li>
                  <?php } ?>
                  </ul>
              </td>
              <td><?php if($mhs->num_rows()>0){ echo $mhs->row()->nama_prodi; }?></td>
              <td><?=$r->nama_perusahaan?></td>
              <td>
                <?php 
                if ($r->foto=="") {
                   echo "Kosong";
                 }else{
                  echo "Telah Di Upload";
                 } ?>
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
  <?php } ?>
</div>

<div id="tempat-modal" class="bs-example-modal-lg"></div>


<script type="text/javascript">
  $('#pkl').addClass('active');
  $('#bimbingan_pkl').addClass('active');

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



//////////////////////////////////////////////////
  $('#uploadfoto').on('submit',(function(e) {
    //e.preventDefault();
    var formData = new FormData(this);
    $.ajax({
        type:'POST',
        url: $(this).attr('action'),
        data:formData,
        cache:false,
        contentType: false,
        processData: false,
      })
    //e.preventDefault();
}));
$("#foto").on("change", function() {
  $("#uploadfoto").submit();
});
</script>