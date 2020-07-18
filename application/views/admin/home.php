<div class="row">
  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-aqua">
      <div class="inner">
        <h3><?=$jadwal?></h3>
        <p>Jadwal / Kelas Dibuka</p>
      </div>
      <div class="icon">
        <i class="fa fa-calendar"></i>
      </div>
    </div>
  </div>

  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-green">
      <div class="inner">
        <h3><?=$bayar?></h3>
        <p>Belum Melakukan Pembayaran</p>
      </div>
      <div class="icon">
        <i class="fa fa-check-square-o"></i>
      </div>
    </div>
  </div>

  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-yellow">
      <div class="inner">
        <h3><?=$nilai?></h3>
        <p>Nilai Belum Disetujui Koordinator</p>
      </div>
      <div class="icon">
        <i class="fa fa-refresh fa-spin"></i>
      </div>
    </div>
  </div>

</div>

<script type="text/javascript">
  $('#dashboard').addClass('active');
</script>