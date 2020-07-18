<div class="modal-header" style="background-color:#3c8dbc; color:white;">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i>  List Data Perusahaan</strong></h4>
</div>
            
<div class="modal-body table-responsive" >
    <table class="table table-bordered table-striped" id="tabel-perusahaan">  
      <thead>
        <tr>
          <th width="10%">No</th>
          <th>Nama Perusahaan</th>
          <th>Alamat</th>
          <th>Kuota</th>
          <th>Aksi</th>
        </tr>
      </thead>
      <tbody>
        <?php $no=0; foreach($perusahaan->result() as $r){ $no++; 
          $quota = $this->db->select("tb_pkl.id_pkl")->from("tb_pkl")->join("tb_perusahaan","tb_perusahaan.kd_perusahaan=tb_pkl.kd_perusahaan")->join("tb_mahasiswa","tb_mahasiswa.id_mhs=tb_pkl.id_mhs")->where("tb_pkl.id_periode",$id_periode)->where("tb_perusahaan.kd_perusahaan",$r->kd_perusahaan)->where("tb_mahasiswa.id_prodi",$this->session->userdata('id_prodi'))->get();
          $max = intval(3);
        ?>
        <tr>
          <td><?=$no;?></td>
          <td><?=$r->nama_perusahaan?></td>
          <td><?=$r->alamat?></td>
          <td><?=$quota->num_rows().' dari '.$max?></td>
          <td>
            <?php if($quota->num_rows()>=$max){ ?>
            <a href="javascript:;" class="btn btn-primary btn-xs btn-block" disabled><i class="fa fa-check-circle"></i> Pilih</a>
            <?php }else{ ?>
            <a href="<?=base_url()?>Mahasiswa/Pendaftaran/pilih_perusahaan/<?=$r->kd_perusahaan?>/<?=$id_pkl?>" class="btn btn-primary btn-xs btn-block"><i class="fa fa-check-circle"></i> Pilih</a>
            <?php } ?>
          </td>
        </tr>
        <?php } ?>
      </tbody>
    </table>    

</div>

<script type="text/javascript">
  $(function () {
      $("#tabel-perusahaan").dataTable({
        "iDisplayLength": 10,
      });
  });
</script>