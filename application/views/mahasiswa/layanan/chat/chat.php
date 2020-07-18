<div class="box box-danger direct-chat direct-chat-info box-solid">
  <div class="box-header with-border">
    <h3 class="box-title">Direct Chat</h3>
  </div>
  <div class="col-md-12">
  <div id="show" class="box-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;">
    <!--isi chat-->    
  </div>

  </div>
  <div class="box-footer">
    <form id="frm_send" method="post">
      <div class="input-group">
        <input type="text" name="message" id="msg" placeholder="Type Message ..." class="form-control" autocomplete="off">
        <span class="input-group-btn">
          <button type="button" onclick="send()" class="btn btn-danger btn-flat"><i class="fa fa-send-o fa-fw"></i> Send</button>
        </span>
      </div>
    </form>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function() {
    $('#chat').addClass('active');
    $('#layanan').addClass('active');

    setInterval(function(){
      $('#show').load("<?=base_url()?>Mahasiswa/Layanan/Chat/auto")
    },1000)

  });


  //send
  function send(){
    var msg = $('#msg').val();
    if(msg==''){
      
      $.gritter.add({
              title: 'Warning',
              text: 'Ketik Pesan Untuk Mengirim',
              sticky: false,
              class_name: 'warning',
          });

      $("#msg").focus();
      return false;
    }

    dataString = $("#frm_send").serialize();
      $.ajax({
          type:"POST",
          url:"<?php echo base_url(); ?>Mahasiswa/Layanan/Chat/send_message",
          data:dataString,
          
          success: function(msg){
            $('#msg').val('');
            return false;
          },
      });
  }


  $(document).on('keydown', 'body', function(e){
    var charCode = ( e.which ) ? e.which : event.keyCode;

    if(charCode == 13) //F7
    {
      send();
      return false;
    }

  });

</script>