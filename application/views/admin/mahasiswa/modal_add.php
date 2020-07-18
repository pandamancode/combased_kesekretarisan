<!-- Modal Form -->
<div class="modal-header " style="background-color:#3c8dbc; color:white;">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-user fa-fw"></i> Tambah Data Mahasiswa</h4>
</div>
       <form id="form-savesiswa" method="post">
         <div class="row">
             <div class="form-group col-md-12 modal-body" style=" margin-top:5px;" >
                <div class="form-group col-md-6" >
                 <label>Fakultas  <span style="color:red">*</span></label>
                 <input type="text" class="form-control" placeholder="Program Studi" value="<?=$fakultas->nama_fakultas?>" readonly>
                </div>
             	  <div class="form-group col-md-6" >
                 <label>Prodi  <span style="color:red">*</span></label>
                 <input type="text" class="form-control" placeholder="Program Studi" value="<?=$this->session->userdata('prodi_name')?>" readonly>
                </div>
                
               <div class="form-group col-md-4" >
                 <label>NPM (Sekaligus Username) <span style="color:red">*</span></label>
                 <input type="text" name="npm" class="form-control" placeholder="NPM" value=""  maxlength="9" required>
               </div>
        		<div class="form-group col-md-5">
                 <label>Nama Mahasiswa <span style="color:red">*</span></label>
                 <input type="text" name="nama_mhs" class="form-control" placeholder="Nama Mahasiswa" value="" required>
               </div>
               <div class="form-group col-md-3">
                 <label>Password <span style="color:red">*</span></label>
                 <input type="text" name="password" class="form-control " placeholder="Password Minimal 6 karakter" id="pw1" value="<?php  echo $str=rdmstr(8);  ?>"  readonly >
               </div>
               
                <div class="form-group col-md-4 ">
                 <label>Tempat Lahir <span style="color:red">*</span></label>
                 <input type="text" name="tempatlahir" class="form-control " placeholder="Tempat Lahir" value="" required>
               </div>
               <div class="form-group  col-md-4">
                 <label>Tanggal Lahir <span style="color:red">*</span></label>
                 <input type="date" name="tgllahir" class="form-control" placeholder="Tanggal Lahir" value="">
               </div>
               
               <div class="form-group col-md-4">
                 <label>Jenis Kelamin <span style="color:red">*</span></label>
                 <div class="radio">
                   <label style="padding-right:20px;">
                     <input type="radio" name="jk"  value="L" required>
                     Pria </label>
                   <label>
                     <input type="radio" name="jk"  value="P">
                     Wanita </label>
                 </div>
               </div>
             </div>
            </div> 
             
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan Data Mahasiswa</button>  
              <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close fa-fw"></i>Close</button>
            </div>

         </div>
   
   </form>
   
<script>
$('#form-savesiswa').submit(function (event) {
    dataString = $("#form-savesiswa").serialize();
    $.ajax({
        type:"POST",
        url:"<?php echo base_url(); ?>Administrator/Mahasiswa/store",
        data:dataString,
        
        success: function(msg){
            $('#respon1').html(msg);
        	$('#btn_tampil').click();
        	$('#md-add').modal('hide');
        },
    });
    event.preventDefault();
});
</script>
 