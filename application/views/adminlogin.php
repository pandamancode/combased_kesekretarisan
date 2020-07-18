<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ADMIN LOGIN | SISTEM COMBASED KESEKRETARISAN</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="<?php echo base_url()?>assets/dist/css/font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />  
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/dist/css/AdminLTE.min.css">  
    
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/dist/img/logo.png">
  </head>
  <body >
    <div class="login-box " >
        <?php 
            $image = array(
                'src' => base_url().'assets/dist/img/Logo.jpg',
                'width' => '97%',

            );   
            echo img($image);
        ?> 
      <div class="login-box-body">
        <p class="login-box-msg" style="font-size:18px;">Login Admin</p>
      	<div id="msg"><?php echo $this->session->flashdata('msg');?></div>
        <?php echo validation_errors('<div class="alert alert-danger">', '</div>'); ?>
        <?php echo form_open('Auth/login', 'id="loginform"', 'autocomplete="off"'); ?>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" required  id="username" autofocus placeholder="Username "  name="user"  onfocus="if(this.value == ''){this.value = '';}"  autocomplete="off" >
            <span class="glyphicon glyphicon-user form-control-feedback"></span>         
            <span id="usernameerror"></span>
          </div>

          <div class="form-group has-feedback">
            <input type="password" class="form-control" required name="password" id="password" placeholder="Password" onfocus="if(this.value == ''){this.value = '';}"  autocomplete="off">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            <span id="passworderror"></span>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon" id="captcha" style="padding: 0; font-size:28px;">
                <?php echo $captcha_image; ?>
              </span>
              <input type="text" class="form-control" required name="captcha_code" id="captcha_code" placeholder="Hasil Penjumlahan" aria-describedby="captcha"  onfocus="if(this.value == ''){this.value = '';}"  autocomplete="off" />
              <span class="glyphicon glyphicon-plus form-control-feedback"></span>
            </div>
            <span id="captcha_codeerror"></span>
          </div>

          <div class="row">
            <div class="col-xs-4">
              
            </div><!-- /.col -->
             <div class="col-xs-4">
              <button type="reset" class="btn  bg-navy btn-block btn-flat"> <i class="fa  fa-rotate-right"></i> &nbsp;  Batal</button>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"><i class="fa fa-sign-in"></i> &nbsp;  Masuk</button>
            </div><!-- /.col -->
          </div>
        </form>   
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    
   
  </body>
</html>
