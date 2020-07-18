<!-- MOdal Edit-->

            <div class="modal-header box-success box-solid">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-get-pocket fa-fw"></i> Pengambilan Surat Ijin Cuti</h4>
            </div>
          <form method="POST" id="form-update-PeriodeCuti">
          	<input type="hidden" name="id" value="<?php //echo $dataPeriodeCuti->id_periodecuti; ?>">
            <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;"> 
              <div class="col-md-12  form-group">
              	  <label>Nama Pengambil  :</label> 
                  <input type="text" class='form-control' name="namafile" required>
              </div>
              <div class="col-md-12  form-group">
              </div>
            </div>
            
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan</button>  
              <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
            </div>
  
            
       </form>