<hr>
<div class="table-responsive">
    <table class="table table-bordered table-striped" id="table">
        <thead>
            <tr style="background-color:#3c8dbc; color:white;">
                <th class="text-center" width="5%">#</th>
                <th>NIK</th>
                <th>Nama Dosen</th>
                <th>Jumlah</th>
            </tr>
        </thead>
        <tbody>
        <?php
            $no = 0;
            foreach($pengawas->result() as $r){
                $no++;
                //cek pengawas
                $dosen = $this->db->get_where("tb_dosen",array('id_dosen'=>$r->id_dosen));
                //cek jumlah
                $where = "id_dosen='$r->id_dosen' AND tgl_penilaian BETWEEN '$tgl1' AND '$tgl2' GROUP BY id_ujian";
                $result = $this->db->get_where("tb_nilai",$where);
            ?>
            <tr>
                <td class="text-center"><?php echo $no; ?></td>
                <td><?php echo $dosen->row()->nik ?></td>
                <td><?=$dosen->row()->nama_dosen?></td>
                <td><?=$result->num_rows()?></td>
            </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>