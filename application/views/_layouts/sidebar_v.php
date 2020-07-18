  <aside class="main-sidebar">
  <section class="sidebar">
    <ul class="sidebar-menu">
      <li class="header"><strong>MAIN MENU</strong></li>
      <li class="treeview" id="dashboard">
        <a href="<?php echo base_url() ?>Administrator/Home">
          <i class="ion ion-ios-home"></i> <span>Home</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <?php if($this->session->userdata('hak_akses')=='BAAK' || $this->session->userdata('hak_akses')=='ADMIN'){ ?>
      <li class="header"><strong>MENU BAAK</strong></li>
      <li class="treeview" id="master">
        <a href="javascript:;">
          <i class="ion ion-ios-folder"></i>
          <span>Master Data</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li id="fakultas"><a href="<?php echo base_url('Administrator/Fakultas') ?>"><i class="fa fa-circle-o"></i> Fakultas</a></li>
          <li id="prodi"><a href="<?php echo base_url('Administrator/Prodi') ?>"><i class="fa fa-circle-o"></i> Program Studi</a></li>
          <li id="mhs"><a href="<?php echo base_url('Administrator/Mahasiswa') ?>"><i class="fa fa-circle-o"></i> Mahasiswa</a></li>
          <li id="dosen"><a href="<?php echo base_url('Administrator/Dosen') ?>"><i class="fa fa-circle-o"></i> Dosen</a></li>
          <li id="matauji"><a href="<?php echo base_url('Administrator/Matauji') ?>"><i class="fa fa-circle-o"></i> Matauji</a></li>
        </ul>
      </li>

      <li class="treeview" id="koordinator">
        <a href="<?php echo base_url() ?>Administrator/Koordinator">
          <i class="fa fa-user-secret"></i> <span>Setting Koordinator</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="created">
        <a href="<?php echo base_url() ?>Administrator/Buat_jadwal">
          <i class="fa fa-bookmark"></i> <span>Buat Jadwal</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="nilai">
        <a href="<?php echo base_url() ?>Administrator/Nilai">
          <i class="fa fa-pencil"></i> <span>Input Nilai &amp; Kehadiran</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="rekap_nilai">
        <a href="<?php echo base_url() ?>Administrator/Rekap_nilai">
          <i class="fa fa-list-alt"></i> <span>Rekap Nilai</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <li class="treeview" id="rekap_pengawas">
        <a href="<?php echo base_url() ?>Administrator/Rekap_mengawas">
          <i class="fa fa-briefcase"></i> <span>Rekap Mengawas</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <?php } ?>
      
      <?php if($this->session->userdata('hak_akses')=='KEUANGAN' || $this->session->userdata('hak_akses')=='ADMIN'){ ?>
      <li class="header"><strong>MENU KEUANGAN</strong></li>
      <li class="treeview" id="validasi">
        <a href="<?php echo base_url() ?>Administrator/Keuangan">
          <i class="fa fa-check"></i> <span>Validasi Pembayaran</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <li class="treeview" id="telah_validasi">
        <a href="<?php echo base_url() ?>Administrator/Keuangan/telah_validasi">
          <i class="fa fa-check-square-o"></i> <span>Telah Validasi</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <li class="treeview" id="rekap_pembayaran">
        <a href="<?php echo base_url() ?>Administrator/Keuangan/rekap_pembayaran">
          <i class="fa fa-list-alt"></i> <span>Rekap Pembayaran</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <?php } ?>

    </ul>
  </section>
  <!-- /.sidebar -->
</aside>