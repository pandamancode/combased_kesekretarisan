<div class="row">
    <div class="col-lg-4 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3><?=$jadwal?></h3>

          <p>Jadwal Mengawas </p>
        </div>
        <div class="icon">
          <i class="fa fa-calendar"></i>
        </div>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-4 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-green">
        <div class="inner">
          <h3><?=$history?></h3>

          <p>History Mengawas</p>
        </div>
        <div class="icon">
          <i class="fa fa-history"></i>
        </div>
      </div>
    </div>
    <?php if(is_koordinator($this->session->userdata('id_dosen'))=='TRUE'){ ?>
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
    <?php } ?>
</div>

<script type="text/javascript">

$('#beranda').addClass('active');

</script>
