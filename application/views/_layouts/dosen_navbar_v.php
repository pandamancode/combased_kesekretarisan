<nav class="navbar navbar-static-top" role="navigation">
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
    <span class="sr-only">Toggle navigation</span>
  </a>
  <div id="xloading" class="grspinner" style="display:none">
      <div class="rect1"></div>
    	<div class="rect2"></div>
    	<div class="rect3"></div>
  </div>
  
  <div class="navbar-custom-menu">
    <ul class="nav navbar-nav">
    
      <li class="dropdown user user-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-user"></i>
        <span class="hidden-xs"><?php echo $this->session->userdata('name'); ?></span> </a>
        <ul class="dropdown-menu">
          <li class="user-header"> <!--img src="<?php echo base_url() ?>asset/dist/img/thumb_def_user_picture.jpg" class="img-circle" alt="User Image" /-->
            <p> <?php echo $this->session->userdata('name'); ?><small> Terakhir Login <?php echo $this->session->userdata('last_login'); ?></small> </p>
          </li>
          <li class="user-footer">
          	<div class="pull-left"> <a href="<?php echo base_url() ?>Dosen/Home/ubah_password" class="btn btn-default btn-flat"><i class="fa fa-lock"></i> Ubah Password</a> </div>
            <div class="pull-right"> <a href="<?php echo base_url() ?>Logout" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Keluar</a> </div>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</nav>