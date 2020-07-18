<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Detail Data</h4>
</div>
<div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <table class="table table-bordered table-striped" id="table__">
    <thead>
        <tr style="background-color:#3c8dbc; color:white;">
            <th class="text-center" width="5%">#</th>
            <th class="text-center">Kriteria Penilaian</th>
            <th class="text-center">Detail</th>
            <th class="text-center">Keterangan</th>
            
        </tr>
    </thead>
    <tbody>
    <?php
        $no = 0;
        foreach($matrik->result() as $r1){
            $no++;
    ?>
        <tr>
            <td class="text-center"><?php echo $no; ?></td>
            <td><?php echo $r1->nama_kriteria ?></td>
            <td><?php echo $r1->caption ?></td>
            <td><?php echo $r1->nama_subkriteria; if($r1->nama_kriteria=='Masa Mukim'){ echo " Tahun"; } ?></td>
            
        </tr>
    <?php
        }
    ?>
    </tbody>
  </table>

</div>
<div class="modal-footer">
  <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
</div>

<script type="text/javascript">
  $(function () {
    $("#table__").dataTable({
      "iDisplayLength": 10,
    });
});
</script>