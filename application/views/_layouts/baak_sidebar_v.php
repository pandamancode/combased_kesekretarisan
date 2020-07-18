  <aside class="main-sidebar">
  <section class="sidebar">
    <ul class="sidebar-menu">
      <li class="header"><strong>MAIN MENU</strong></li>
      <li class="treeview beranda" id="beranda">
        <a href="<?php echo base_url() ?>beranda">
          <i class="ion ion-ios-home"></i> <span>Beranda</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      
      <li class="treeview" id="master">
        <a href="#">
          <i class="ion ion-ios-folder"></i>
          <span>Master Data</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          
          <li id="fakultas"><a href="<?php echo base_url('Master/fakultas') ?>"><i class="fa fa-circle-o"></i> Fakultas</a></li>
          <li id="prodi"><a href="<?php echo base_url('Master/prodi') ?>"><i class="fa fa-circle-o"></i> Program Studi</a></li>
          <li id="mhs"><a href="<?php echo base_url('Master/mahasiswa') ?>"><i class="fa fa-circle-o"></i> Mahasiswa</a></li>
          <li id="kriteria"><a href="<?php echo base_url('Master/kriteria') ?>"><i class="fa fa-circle-o"></i> Kriteria</a></li>
          <li id="subkriteria"><a href="<?php echo base_url('Master/sub_kriteria') ?>"><i class="fa fa-circle-o"></i> Sub Kriteria</a></li>
        </ul>
      </li>

    </ul>
  </section>
  <!-- /.sidebar -->
</aside>