<script>
    var userid = <?php echo $user->id ?>;
    var controller = "chat";

		var time = 0;
    var helperid = $.segment(3);
    var convoid = helperid;

    if (!helperid) {
      helperid = 1;
    }

    var updateTime = function (cb) {
      $.getJSON("http://local.o0h.org/index.php/chat/time", function (data) {
        cb(~~data);
      });
    };

    var sendChat = function (message) {
      $.getJSON("http://local.o0h.org/index.php/chat/insert_chat?message=" + message + "&from=" + userid + "&to=" + 1 + "&convoid=" + convoid, function (){
        $('#message_container').html('');
        getNewChats();
      });
    }

    var addDataToReceived = function (arrayOfData) {
      arrayOfData.forEach(function (data) {
        $("#received").val($("#received").val() + "\n" + data[0]);
      });
    }

    var getNewChats = function () {
      $.getJSON("http://local.o0h.org/index.php/chat/get_chats?convoid=" + convoid, function (data){
        console.debug(data);
        var html = '';

          // $.each(data, function() {
          //   if (this.to_user_id != userid) {
          //     html += ('<div class="message_wrapper">');
          //     html += ('<em id="1">'+this.my_username+'</em> - ');
          //     html += ('<span id="1">'+this.message+'</span>');
          //     html += ('</div>');
          //   } else {
          //     html += ('<div class="message_wrapper">');
          //     html += ('<span>'+this.message+'</span>');
          //     html += (' - <strong>'+this.my_username+'</strong> ');
          //     html += ('</div>');
          //   }
          // });
          // $('#message_container').html(html);

          $.each(data, function() {
            if (this.to_user_id != userid) {
              html += ('<div class="message_wrapper">');
              html += ('<div class="name-block left">');
              html += ('<div class="name">');
              html += ('<p id="1">'+this.my_username+'</p>');
              html += ('</div></div>');
              html += ('<div class="message-block">');
              html += ('<div class="message me">');
              html += ('<p id="1">'+this.message+'</p>');
              html += ('</div></div>');
              html += ('</div>');
            } else {
              html += ('<div class="message_wrapper">');
              html += ('<div class="message-block">');
              html += ('<div class="message me">');
              html += ('<p id="1">'+this.message+'</p>');
              html += ('</div></div>');
              html += ('<div class="name-block left">');
              html += ('<div class="name">');
              html += ('<p id="1">'+this.my_username+'</p>');
              html += ('</div></div>');
              html += ('</div>');
            }
          });
          $('#message_container').html(html);
        // reset scroll height
        // setTimeout(function(){
        //    $('#received').scrollTop($('#received')[0].scrollHeight);
        // }, 0);
    });
    }

    $(function() {
      getNewChats();
      // set an on click on the button
      $("form").submit(function (evt) {
        evt.preventDefault();
        var data = $("#text").val();
        $("#text").val('');

        // get the time if clicked via a ajax get queury
        sendChat(data);
      });

      setInterval(function (){
        getNewChats();
      },1500);
    });

</script>

  <section id="message_container">
  </section>

  <form class="chat-input">
      <input id="text" type="text" name="user">
      <input type="submit" value="Send">
  </form>
