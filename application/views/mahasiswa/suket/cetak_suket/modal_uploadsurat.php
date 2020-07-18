<!-- MOdal Edit-->

            <div class="modal-header box-success box-solid">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-upload fa-fw"></i> Upload Surat Keterangan Kuliah</h4>
            </div>
          <form method="POST" id="form-update-PeriodeCuti">
          	<input type="hidden" name="id" value="<?php //echo $dataPeriodeCuti->id_periodecuti; ?>">
            <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;"> 
              <div class="col-md-12  form-group">
              	  <label>Nama File  :</label> 
                  <input type="text" class='form-control' name="namafile" required>
              </div>
              <div class=" col-md-12 form-group">
                <label for="exampleInputFile">File Lampiran</label>
                <input type="file"  required>
                <p class="help-block">Type File : *.pdf, *.jpg, *.png.</p>
              </div>
              <div class="col-md-12  form-group">
              </div>
            </div>
            
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><i class="fa fa-cloud-upload fa-fw"></i> Upload Surat <span class="modal-title">Keterangan Kuliah</span></button>  
              <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Close</button>
            </div>
  
            
       </form>