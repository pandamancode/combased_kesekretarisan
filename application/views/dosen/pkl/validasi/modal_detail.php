<?php
  $nilai = $this->db->select("*")->from("tb_nilai_prasyarat_pkl")->join("tb_matakuliah_prasyarat_pkl","tb_matakuliah_prasyarat_pkl.id_makul_pkl=tb_nilai_prasyarat_pkl.id_makul_pkl")->where("tb_nilai_prasyarat_pkl.id_pkl",$pkl->id_pkl)->get();
?>

<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Detail Pengajuan PKL</h4>
</div>

<form method="POST" id="form_pengajuan" enctype="multipart/form-data" action="<?php echo base_url() ?>Dosen/Validasi_pendaftaran/validate_perusahaan">
  <input type="hidden" name="id" value="<?php echo $pkl->id_pkl ?>">

   <div class="modal-body" > 
    <table class="table table-bordered table-striped">
      <tr>
          <td width="35%">Mahasiswa</td>
          <td width="65%"><b><?php echo $pkl->nama_mhs.' ('.$pkl->npm.')'; ?></b></td>
      </tr>
      <tr>
          <td>IPK</td>
          <td><?php echo $pkl->ipk ?> </td>
      </tr>
      <tr>
          <td>SKS</td>
          <td><?php echo $pkl->sks ?> </td>
      </tr>
      <tr>
          <td>Matakuliah</td>
          <td>
            <?php foreach($nilai->result() as $n){ ?>
              <li><?=$n->nama_makul?><b style="color:red;"> (<?=$n->nilai?>)</b></li>
            <?php } ?>
          </td>
      </tr>
      <tr>
          <td>File Transkrip</td>
          <td>
            <a target="_blank" href="<?=base_url()?>public/pkl/transkrip/<?=$pkl->file_transkrip?>" class="btn btn-success btn-xs"><i class="fa fa-paperclip"></i> File Transkrip Nilai</a>
          </td>
      </tr>
      <tr>
          <td>Tanggal Pengajuan</td>
          <td>
          <?php
              $tgl = date('Y-m-d',strtotime($pkl->tgl_pengajuan));
              $jam = date('H:i',strtotime($pkl->tgl_pengajuan));

              echo tgl_indo($tgl)." - Pukul ".$jam;
          ?>
          </td>
      </tr>
      <tr>
          <td>Perusahaan</td>
          <td>
            <?php
              $where['kd_perusahaan'] = $pkl->kd_perusahaan;
              $cek = $this->db->get_where("tb_perusahaan",$where)->row();
              echo "<strong>".$cek->nama_perusahaan."</strong>";
            ?>
          </td>
      </tr>
      <tr>
          <td>Status</td>
          <td>
              <select name="status" id="stts" class="form-control" required>
                <option value="" selected="" disabled="">-Pilih Status-</option>
                <option value="tolak">Tolak</option>
                <option value="setuju">Setuju</option>
              </select>
          </td>
      </tr>
      <tr id="alasan">
          <td>Alasan Tolak</td>
          <td><textarea class="form-control" name="alasan" id="als" placeholder="Alasan Tolak"></textarea></td>
      </tr>
    </table>

  </div>
  <div class="modal-footer">
    <p id="notif"></p>
    <button type="submit" class="btn btn-primary" id="btn_nilai"><i class="fa fa-check fa-fw"></i> Submit</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
  </div>
</form>
<script type="text/javascript">
  $('#alasan').hide();

$('#stts').on('change', function() {
  if(this.value == "tolak") {
    $('#alasan').show();
    document.getElementById("als").focus();
  }else {
    $('#alasan').hide();
  }
});
</script>