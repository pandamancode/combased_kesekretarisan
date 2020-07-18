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
                <th width="10%" class="text-center">Aksi</th>
                
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
                <td>Rp. <?=format_rp($mhs->harga)?></td>
                <td><a href="javascript:;" data-id="<?=$mhs->id_peserta?>" data-harga="<?=$mhs->harga?>" class="btn btn-primary btn-validate btn-xs btn-flat btn-block"><i class='fa fa-check-square-o'></i> Validate</a></td>
            </tr>
        <?php
            } }else echo "<tr><td colspan='7'>Data Tidak Ditemukan</td></tr>";
        ?>
        </tbody>
    </table>
</div>

<script type="text/javascript">
    $(document).on("click", ".btn-validate", function() {
      var id = $(this).attr("data-id");
      var harga = $(this).attr("data-harga");
      
      $.ajax({
        method: "POST",
        url: "<?php echo base_url('Administrator/Keuangan/validate'); ?>",
        //data: "id=" +id
        data: {
            "id": id,
            "harga": harga
        }
      })
      .done(function(data) {
        swal({
            title: "Done",
            text: "Berhasil Validasi Pembayaran!",
            timer: 1500,
            showConfirmButton: false,
            type: data
        });

        $('#btn_tampil').click();
      })
    })
</script>