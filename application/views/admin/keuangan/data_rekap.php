<hr>
<div class="table-responsive">
    <table class="table table-bordered table-striped" id="konfir">
        <thead>
            <tr style="background-color:#3c8dbc; color:white;">
                <th class="text-center" width="5%">#</th>
                <th>NPM</th>
                <th>Nama</th>
                <th>Mata Uji</th>
                <th>Tanggal</th>
                <th>Harga</th>
                
            </tr>
        </thead>
        <tbody>
        <?php
            if($mhs->num_rows()>0){
            $no = 0;
            foreach($mhs->result() as $mhs){
                $no++;
        ?>
            <tr>
                <td class="text-center"><?php echo $no; ?></td>
                <td><?=$mhs->npm?></td>
                <td><?=$mhs->nama_mhs?></td>
                <td><?=$mhs->nama_matauji?></td>
                <td><?=tgl_indo($mhs->tgl_ujian)?></td>
                <td>Rp. <?=format_rp($mhs->biaya)?></td>
            </tr>
        <?php
            } }else echo "<tr><td colspan='6'>Data Tidak Ditemukan</td></tr>";
        ?>
        </tbody>
    </table>
</div>
