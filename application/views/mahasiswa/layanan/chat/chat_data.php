<?php 
      foreach($chat->result() as $c){
        $usr = $c->user_chat;
        $nama = $c->nama_mhs;
        $pesan = $c->pesan;
        $tgl = date('d-M-y H:i',strtotime($c->date_created));
      if($usr<>$this->session->userdata('idmhs')){

    ?>
       
    <!--/div-->

    <div class="direct-chat-msg">
      <div class="direct-chat-info clearfix">
        <span class="direct-chat-name pull-left"><?php echo $usr ?></span>
        <span class="direct-chat-timestamp pull-right"><?php echo $tgl ?></span>
      </div>
      <img class="direct-chat-img" src="<?php echo base_url() ?>assets/dist/img/usr/admin.png" alt="message user image">
      <div class="direct-chat-text">
        <?php echo $pesan ?>
      </div>
    </div>
      
    <?php }else{ ?>
    <div class="direct-chat-msg right">
      <div class="direct-chat-info clearfix">
        <span class="direct-chat-name pull-right"><?php echo $nama ?></span>
        <span class="direct-chat-timestamp pull-left"><?php echo $tgl ?></span>
      </div>
      <img class="direct-chat-img" src="<?php echo base_url() ?>assets/dist/img/usr/admin.png" alt="message user image">
      <div class="direct-chat-text">
        <?php echo $pesan ?>
      </div>
    </div>
    <?php 
        } 
      }
    ?>
    <script type="text/javascript">
      document.getElementById('show').scrollTop =  document.getElementById('show').scrollHeight;
    </script>