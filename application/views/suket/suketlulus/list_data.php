<div class="box-header">
<!--   <div class="col-md-12" style="text-align:right; ">
       <a title="Tambah Data Dokumen" data-id="<?php echo $idprodi ?>" href="#" class="btn btn-info tambah-data"><i class="fa fa-plus fa-fw"></i> Tambah Dokumen</a>
  </div>
 --></div>

<div class="col-sm-12" > 
	<div class="table-responsive">      
    <table id="list-data"  class="table table-bordered table-striped">
      <thead>
         <tr style="background-color:#3c8dbc; color:white;">
            <th width="2%" style="text-align:center">No</th> 
            <th style="text-align:center">Mahasiswa</th> 
            <th style="text-align:center">Tanggal Lulus</th>
            <th style="text-align:center">Tanggal Pengajuan</th>     
            <th style="text-align:center">Keperluan</th>      
            <th width="10%" style="text-align:center">Action</th>
         </tr>
      </thead>
      <tbody>
      <?php
        $no=0;
        foreach($suket_kuliah->result() as $res){
          
          $no++;
      ?>
        <tr>
      	  <td style="text-align:center;"><?php echo $no ?></td>       
          <td  style="text-align:left">
            <strong><?php echo $res->nama_mhs ?> </strong><br>
            <span style="padding-left:10px;">NPM : <?php echo $res->npm ?></span> <br/>
            <span style="padding-left:10px;"><strong><?php echo $res->jenjang.'-'.$res->nama_prodi ?></strong></span> 
          </td>

          <td style="text-align:center;">
            <?php
                  echo tgl_indo(date('Y-m-d',strtotime($res->tgl_lulus)));

                  if($res->file_surat!=''){
                    $link = base_url('assets/files/suket/suket_lulus');
                    echo '<p><a target="_blank" href="'.$link.'/'.$res->file_surat.'"><i class="fa fa-file-pdf-o fa-fw"></i> Klik Untuk Melihat Surat Keterangan Lulus</a></p>';
                  }else{
                    echo "";
                  }
            ?>
          </td> 
          <td style="text-align:center;">
            <?php
                  $tgl = date('Y-m-d',strtotime($res->tgl_pengajuan));

                  echo tgl_indo($tgl);

            ?>
          </td> 
          <td style="text-align:center;"><?php echo $res->keperluan ?></td> 
          
          <td  style="padding:5px; text-align:center;" >
            <?php if($res->status == '4'){ ?>
              <a title="Sudah Diambil" data-id="<?php echo $res->id_surat_lulus ?>" class="btn btn-success btn-xs showpengambil"><i class="fa fa-thumbs-o-up fa-fw"></i>Sudah Diambil</a>
            <?php } ?>
          </td>

        </tr>
      <?php } ?>
      </tbody>
    </table> 
    </div>
</div> 