  <aside class="main-sidebar">
  <section class="sidebar">
    <ul class="sidebar-menu">
      <li class="header"><strong>MAIN MENU</strong></li>
      <li class="treeview beranda" id="dashboard">
        <a href="<?php echo site_url('Master') ?>">
          <i class="ion ion-ios-home"></i> <span>Beranda</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      
      <li class="treeview" id="kandidat">
        <a href="<?php echo site_url('Master/kandidat_wisudawan') ?>">
          <i class="fa fa-user"></i> <span>Kandidat Wisudawan</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="hasil_hitung">
        <a href="<?php echo site_url('Master/hasil_perhitungan') ?>">
          <i class="fa fa-file-o"></i> <span>Hasil Perhitungan</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="valid">
        <a href="<?php echo site_url('Master/hasil_validasi') ?>">
          <i class="fa fa-check"></i> <span>Hasil Validasi</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="laporan">
        <a href="<?php echo base_url() ?>Master/laporan">
          <i class="fa fa-print"></i> <span>Laporan</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>