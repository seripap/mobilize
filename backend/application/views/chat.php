<script>
    var userid = <?php echo $user->id ?>;
    var controller = "chat";

		var time = 0;
    var helperid = $.segment(3);
    var convoid = helperid;

    if (!helperid) {
      helperid = 1;
    }

    var convertTime = function(timestamp) {
      var date = new Date(timestamp*1000);
      var hours = date.getHours();
      var minutes = date.getMinutes();
      var seconds = date.getSeconds();
      return hours + ':' + minutes + ':' + seconds;
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

          $.each(data, function() {
            var time = convertTime(this.time);
            if (this.user_id != userid) {
              html += ('<p><span style="color: #AAA; font-size: 0.6em;">'+time+'</span></p>');
              html += ('<div class="message-wrapper">');
              html += ('<div class="name-block left">');
              html += ('<div class="name">');
              html += ('<p>'+this.my_username+'</p>');
              html += ('</div></div>');
              html += ('<div class="message-block">');
              html += ('<div class="message me">');
              html += ('<p>'+this.message+'</p>');
              html += ('</div></div>');
              html += ('</div>');
            } else {
              html += ('<p><span style="color: #AAA; font-size: 0.6em;">'+time+'</span></p>');
              html += ('<div class="message-wrapper">');
              html += ('<div class="message-block">');
              html += ('<div class="message me">');
              html += ('<p>'+this.message+'</p>');
              html += ('</div></div>');
              html += ('<div class="name-block right">');
              html += ('<div class="name">');
              html += ('<p>'+this.my_username+'</p>');
              html += ('</div></div>');
              html += ('</div>');
            }
          });
          $('.chat-stream').html(html);

          // $('#wrapper-content').animate({scrollTop:$(document).height()}, 'slow');

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
    <form>
    <div class="inner-wrapper">
      <div class="chat-stream">
      </div>
      <div class="chat-form">
        <div class="chat-input">
          <input id="text" type="text" name="user">
          <input type="submit" value="Send">
        </div>
      </div>
    </div>
  </form>
  </section>
  <script>$(document).ready(function(){

    $('#wrapper-content').removeClass('show-footer');
    $('footer').hide();

  });</script>
