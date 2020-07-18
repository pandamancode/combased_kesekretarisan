<div class="msg">
  <?php echo @$this->session->flashdata('msg'); ?>
</div>
<div class="row">        
  <div class="col-sm-12 ">
    <div class="panel panel-primary" >
      <div class="panel-heading" >
  		<i class="fa fa-edit fa-fw"></i><strong> &nbsp; Input Nilai Pembekalan PKL</strong></div>
      <div class="table-responsive" style="padding:5px">
      <form method="post" action="<?=base_url()?>Dosen/Nilai_pembekalan/input_nilai_pembekalanpkl_ulang">
        <table class="table table-striped">
          <thead>
            <tr>
              <th width="5%">No.</th>
              <th width="15%">NPM</th>
              <th width="20%">Nama</th>
              <th>Matauji</th>
              <th width="15%">
              <?php
              if($peserta->num_rows()>0){
                $grade = $peserta->row()->grade;
              }else{
                $grade = '0';
              }
              ?>
                <input type="text" class="form-control" name="grade" value="<?=$grade?>" readonly placeholder="Nilai">
                <input type="hidden" name="idjadwal" value="<?=$id_jadwal?>">
              </th>
            </tr>
          </thead>
          <tbody>
          <?php
            $no=0;
            foreach($peserta->result() as $r){
              $no++;
          ?>
            <tr>
              <td><?=$no?></td>
              <td><?=$r->npm?></td>
              <td><?=$r->nama_mhs?></td>
              <td><?=$r->nama_matauji?></td>
              <td>
                <input type="number" class="form-control" name="nilai[]" placeholder="Nilai" required>
                <input type="hidden" name="idmhs[]" value="<?=$r->id_mhs?>">
                <input type="hidden" name="iduji[]" value="<?=$r->id_ujipembekalan?>">
              </td>
            </tr>
          <?php
            }
          ?>
          </tbody>
          <tfoot>
            <tr>
              <td class="text-right" colspan="6"><button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i> Submit</button>&nbsp;<a href="<?=base_url()?>Dosen/Nilai_pembekalan/ulang" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> Kembali</a></td>
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
  $('#nilai_pembekalan_ulang').addClass('active');
  $('#pkl').addClass('active');

</script>