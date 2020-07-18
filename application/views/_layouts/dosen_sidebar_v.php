  <aside class="main-sidebar">
  <section class="sidebar">
    <ul class="sidebar-menu">
      <li class="header"><i class="fa fa-chevron-down"></i> <strong>MENU DOSEN</strong></li>
      <li class="treeview beranda" id="beranda">
        <a href="<?php echo base_url() ?>Dosen/Home">
          <i class="fa fa-home"></i> <span>Home</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="jadwal">
        <a href="<?php echo base_url() ?>Dosen/Jadwal">
          <i class="fa fa-calendar"></i> <span>Jadwal &amp; Penilaian</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="history">
        <a href="<?php echo base_url() ?>Dosen/History">
          <i class="fa fa-history"></i> <span>History Nilai</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>     

      <?php
        if(is_koordinator($this->session->userdata('id_dosen'))=='TRUE'){
      ?>
      <!--MENU PJ-->
      <li class="header"><i class="fa fa-chevron-down"></i> <strong>MENU PJ KESEKRETARISAN</strong></li>
      <li class="treeview beranda" id="validasi">
        <a href="<?php echo base_url() ?>Dosen/Validasi_Nilai">
          <i class="fa fa-check-square-o"></i> <span>Validasi Nilai</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <?php } ?>

    </ul>
  </section>
  <!-- /.sidebar -->
</aside>