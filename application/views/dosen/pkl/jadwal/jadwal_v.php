<div id="res"></div>
<div id="thonie">
<div class="box box-solid box-primary">
    <div class="box-header with-border">
      <i class="fa fa-calendar fa-fw"></i>
      <h4 class="box-title">Jadwal Pembekalan PKL</h4>
      <div class="box-tools pull-right">
        <a href="javascript:;" id="print" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-print"></span></a>
      </div>
    </div><!-- /.box-header -->
    <div class="box-body no-padding">
      <div class="mailbox-messages table-responsive">
        <table class="table table-bordered table-striped" id="all">
          <thead>
              <tr>
                <th class="text-center">Waktu</th>
                <?php
                $dosen = $this->session->userdata('id_dosen');
                  $i=1;
                  $hari = array('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu');
                    foreach($hari as $r2){
                      $h[]=$r2;
                  ?>
                <th class="text-center"><?php echo $r2; ?></th>
                <?php
                 $i++;
                 }
                 $in=$i;
                ?>
              </tr>
          </thead>
          <tbody>
          <?php
            $k=1;
            $g=0;
            //$cek_waktu = $this->db->query("SELECT pukul FROM jadwal_dokter GROUP BY pukul");
            $cek_waktu = array('07:00','09:00','11:00','13:00','15:00','17:00','19:00');
            foreach($cek_waktu as $r1){
              $pukull= $r1;
          ?>
              <tr>
                <td class="text-center" style="vertical-align: middle;"><b><?php echo $pukull; ?></b></td>
                <?php 
                  foreach($h as $key => $value ) {
                    $hr = $h[$key];
                    $q1 = $this->db->query("SELECT * FROM tb_jadwal_pembekalanpkl, tb_kelompok_pembekalanpkl, tb_matauji_pembekalan_pkl, tb_periode_pkl, tb_ruangan WHERE tb_kelompok_pembekalanpkl.id_kelompok=tb_jadwal_pembekalanpkl.id_kelompok AND tb_matauji_pembekalan_pkl.id_ujipembekalan=tb_jadwal_pembekalanpkl.id_ujipembekalan AND tb_periode_pkl.id_periode=tb_kelompok_pembekalanpkl.id_periode AND tb_ruangan.id_ruangan=tb_jadwal_pembekalanpkl.id_ruangan AND tb_jadwal_pembekalanpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanpkl.hari='$hr' AND tb_jadwal_pembekalanpkl.pukul='$pukull' GROUP BY tb_jadwal_pembekalanpkl.id_jadwal ");

                    $q2 = $this->db->query("SELECT * FROM tb_jadwal_pembekalanulangpkl, tb_matauji_pembekalan_pkl, tb_ruangan, tb_prodi WHERE tb_jadwal_pembekalanulangpkl.id_ujipembekalan=tb_matauji_pembekalan_pkl.id_ujipembekalan AND tb_jadwal_pembekalanulangpkl.id_ruangan=tb_ruangan.id_ruangan AND tb_prodi.id_prodi=tb_matauji_pembekalan_pkl.id_prodi AND tb_jadwal_pembekalanulangpkl.pukul='$pukull' AND tb_jadwal_pembekalanulangpkl.hari='$hr' AND tb_jadwal_pembekalanulangpkl.id_dosen='$dosen' AND tb_jadwal_pembekalanulangpkl.aktif='true' GROUP BY tb_jadwal_pembekalanulangpkl.id_jadwal_ulang ");
                        
                    
                    $n1 =$q1->num_rows();
                    if($n1==0){$temp_bg="bgcolor='#efefef'";}
                    else{ $temp_bg="bgcolor='#FFFF99'";}
                ?>
                <td class="text-center" <?php echo $temp_bg; ?> >
                    <?php 
                        foreach($q1->result_array() as $d1){
                            echo "<span class='xtooltip' style='cursor:pointer;display:block' title='Dokter : $d1[nama_matauji]'>$d1[nama_matauji]</span><p>(".date('d-m-Y',strtotime($d1['tanggal'])).")<br><b>$d1[nama_kelompok]</b><br>Ruang : $d1[nama_ruangan]</p>";
                        } 

                        foreach($q2->result_array() as $d2){
                            echo "<span class='xtooltip' style='cursor:pointer;display:block' title='Dokter : $d2[nama_matauji]'>$d2[nama_matauji]</span><p>(".date('d-m-Y',strtotime($d2['tanggal'])).")<br><b>$d2[nama_prodi]</b><br>Ruang : $d2[nama_ruangan]</p>";
                        } 

                    ?>
                </td>
                <?php
                  }
                ?>
              </tr>
          <?php
            $k++;
          }
          ?>
          </tbody>
        </table>
      </div>
    </div>
</div>
</div>
<script type="text/javascript">
  $('#print').click(function (event) {
    //$('#print').hide();
    window.print('#all');
    return 0;
  });


$('#jadwal_pembekalan').addClass('active');
$('#pkl').addClass('active');
</script>