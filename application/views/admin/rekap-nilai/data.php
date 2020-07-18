<hr>
<div class="table-responsive">
    <table class="table table-bordered table-striped" id="table">
        <thead>
            <tr style="background-color:#3c8dbc; color:white;">
                <th class="text-center" width="5%">#</th>
                <th class="text-center">Option</th>
                <th>Nama Matauji</th>
                <th>Kelompok</th>
                <th>Waktu</th>
                <th>Ruang</th>
                <th>Pengawas</th>
                
            </tr>
        </thead>
        <tbody>
        <?php
            $no = 0;
            foreach($jadwal->result() as $r){
                $no++;

                $matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji));
                //cek pengawas
                $pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$r->id_dosen));
            ?>
            <tr>

                <td class="text-center"><?php echo $no; ?></td>
                <td class="text-center" width="12%" style="vertical-align: middle;">
                    <a href="<?=base_url()?>Administrator/Rekap_nilai/get_schedule/<?=$r->id_ujian?>" class="btn btn-primary btn-xs xtooltip btn-flat"><i class="fa fa-list-alt fa-fw"></i> Lihat Peserta</a>
                </td>
                <td><?php echo $matauji->row()->nama_matauji ?></td>
                <td><?=$r->kelompok?></td>
                <td><?=tgl_indo($r->tgl_ujian)?> Pukul <?=$r->pukul?></td>
                <td><?=$r->ruang?></td>
                <td><?=$pengawas->row()->nama_dosen?></td>

                
            </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>

<script type="text/javascript">
    $(function () {
        $("#table").dataTable({
          "iDisplayLength": 10,
        });
    });
</script>