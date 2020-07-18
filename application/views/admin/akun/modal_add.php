<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Tambah Data Role</h4>
</div>

<form method="post" action="<?php echo base_url() ?>Administrator/Akun/store">
  <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
  <!--Cek Data-->

      <div class="form-group">
          <label> Nama Staff :</label>
          <select class="form-control select2" style="width:100%" name="staff" required>
            <option value="" selected="" disabled="">Pilih Staff</option>
            <?php 
            foreach($staff->result() as $d){ 
            ?>
            <option value="<?=$d->id_staff?>"><?=$d->nama_staff?></option>
            <?php } ?>
          </select>
      </div> 

      <div class="form-group">
          <label> Username :</label>
          <input type="text" name="username" class="form-control" placeholder="Username">
      </div> 

      <div class="form-group">
          <label> Level User :</label>
          <select name="level" class="form-control" required>
            <option disabled="" selected="" value="">Pilih Level User</option>
            <?php foreach($role->result() as $r){ ?>
            <option value="<?=$r->id_role?>"><?=$r->level?></option>  
            <?php } ?>
          </select>
      </div> 

      <div class="form-group">
          <label>Password</label>
          <input type="password" name="password" class="form-control" placeholder="Password" required>
      </div>
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>
    <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
  </div>
</form>

<script type="text/javascript">
  $(".select2").select2();
</script>