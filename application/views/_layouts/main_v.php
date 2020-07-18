<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>SISTEM COMBASED KESEKRETARISAN</title>
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/dist/img/logo.png">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="author" content="thonie, Web Developer">
  
    <?php
    $this->load->view('_layouts/css');
    $this->load->view('_layouts/js');
    ?>
    
 	
  </head>
  <body class="hold-transition skin-purple sidebar-mini">
    <div class="wrapper">
      <header class="main-header">
        <!-- Logo -->
        <a href="javascript:;" class="logo">
          <span class="logo-mini"><b>L</b></span>
          <span class="logo-lg" style="font-size:12pt;"><b>KESEKRETARISAN</b> V.1</span>
        </a>

        <?php 
          if($this->session->userdata('userlevel')=='ADMIN'){
            $this->load->view('_layouts/navbar_v'); 
          }else if($this->session->userdata('userlevel')=='MAHASISWA'){
            $this->load->view('_layouts/mhs_navbar_v');
          }else if($this->session->userdata('userlevel')=='DOSEN'){
            $this->load->view('_layouts/dosen_navbar_v');
          }
        ?>
      </header>
      <?php 
      if($this->session->userdata('userlevel')=='ADMIN'){
        $this->load->view('_layouts/sidebar_v'); 
      }else if($this->session->userdata('userlevel')=='MAHASISWA'){
        $this->load->view('_layouts/mhs_sidebar_v');
      }else if($this->session->userdata('userlevel')=='DOSEN'){
        $this->load->view('_layouts/dosen_sidebar_v');
      }
      ?>
      <div class="content-wrapper">
        <section class="content">
          <?php
            $this->load->view($content);
          ?>
        </section>
      </div>
      <script type="text/javascript">
      function check_int(evt) {
            var charCode = ( evt.which ) ? evt.which : event.keyCode;
            return ( charCode >= 48 && charCode <= 57 || charCode == 8 );
        }
      </script>
      <?php $this->load->view('_layouts/footer_v'); ?>
    </div>
  </body>
</html>
