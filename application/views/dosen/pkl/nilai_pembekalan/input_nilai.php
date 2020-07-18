<div class="msg">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">        
        <div class="col-sm-12 ">
          <div class="panel panel-primary" >
            <div class="panel-heading" >
        		<i class="fa fa-edit fa-fw"></i><strong> &nbsp; Input Nilai Pembekalan PKL</strong></div>
            <div class="table-responsive" style="padding:5px">
            <form method="post" action="<?=base_url()?>Dosen/Nilai_pembekalan/input_nilai_pembekalanpkl">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th width="5%">No.</th>
                    <th width="15%">NPM</th>
                    <th width="20%">Nama</th>
                    <th>Matauji</th>
                    <th>Kelompok</th>
                    <th width="15%">
                      <input type="text" class="form-control" name="grade" value="<?=$matauji->grade?>" readonly placeholder="Nilai">
                      <input type="hidden" name="idjadwal" value="<?=$id_jadwal?>">
                    </th>
                  </tr>
                </thead>
                <tbody>
                <?php
                  $no=0;
                  foreach($peserta->result() as $r){
                    $no++;
                    $cek = $this->db->query("SELECT * FROM tb_kelompok_pembekalanpkl WHERE id_kelompok='$r->id_kelompok' ")->row();
                ?>
                  <tr>
                    <td><?=$no?></td>
                    <td><?=$r->npm?></td>
                    <td><?=$r->nama_mhs?></td>
                    <td><?=$matauji->nama_matauji?></td>
                    <td><?=$cek->nama_kelompok?></td>
                    <td>
                      <input type="number" class="form-control" name="nilai[]" placeholder="Nilai" required>
                      <input type="hidden" name="idmhs[]" value="<?=$r->id_mhs?>">
                      <input type="hidden" name="kelompok[]" value="<?=$r->id_kelompok?>">
                      <input type="hidden" name="iduji[]" value="<?=$matauji->id_ujipembekalan?>">
                    </td>
                  </tr>
                <?php
                  }
                ?>
                </tbody>
                <tfoot>
                  <tr>
                    <td class="text-right" colspan="6"><button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i> Submit</button>&nbsp;<a href="<?=base_url()?>Dosen/Nilai_pembekalan" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> Kembali</a></td>
                  </tr>
                </tfoot>
              </table>
            </form>
            </div>
          </div>
        </div>
</div>

<div id="tempat-modal" class="bs-example-modal-lg"></div>


<script type="text/javascript">
  $('#nilai_pembekalan').addClass('active');
  $('#pkl').addClass('active');

</script>