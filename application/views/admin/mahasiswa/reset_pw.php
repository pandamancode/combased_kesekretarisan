<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-key fa-fw"></i> Reset Password Mahasiswa</h4>
</div>
<div class="row" >
  <div class="modal-body"> 
    <div class="  col-md-12  form-group">
     <table class="table table-bordered table-striped">
         <tr>
          <td style="width:30%; ">NPM / Username</td>
          <td style="width:5%">:</td>
          <td style="width:65%"><?php echo $npm; ?></td>
         </tr>
         <tr> 
          <td style="width:30%; ">Nama Mahasiswa</td>
          <td style="width:5%">:</td>
          <td style="width:65%"><?php echo $nama; ?></td>
         </tr>
         <tr> 
          <td style="width:30%; ">Program Studi</td>
          <td style="width:5%">:</td>
          <td style="width:65%"><?php echo $jurusan; ?></td>
         </tr>

         <tr> 
          <td style="width:30%; ">Password Baru</td>
          <td style="width:5%">:</td>
          <td style="width:65%"><b><span class="pull-left" style="font-size:15pt;color:#e03333"><?php echo $kode ?></span></b></td>
         </tr>
     </table>
    </div>  
                             
  </div>
</div>
<div class="modal-footer">
  <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close</button>
</div>
