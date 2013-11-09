    var time = 0;
    var helperid = $.segment(3);
    var memData = '';

    if (!helperid) {
      helperid = 1;
    }

    var updateTime = function (cb) {
      $.getJSON("../chat/time", function (data) {
        cb(~~data);
      });
    };

    var sendChat = function (message) {
      $.getJSON("../chat/insert_chat?message=" + message + "&from=" + userid + "&to=" + helperid, function (){
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
      $.getJSON("../chat/get_chats?userid=" + userid, function (data){
        console.debug(data);
        var html;

          $.each(data, function() {
            if (this.to_user_id != userid) {
              html += ('<em>'+this.my_username+'</em> - ');
              html += ('<span>'+this.message+'</span>');
              html += ('<br>');
            } else {
              html += ('<span>'+this.message+'</span>');
              html += (' - <strong>'+this.to_username+'</strong> ');
              html += ('<br>');
            }
          });
            $('#message_container').html(html);


        // reset scroll height
        // setTimeout(function(){
        //    $('#received').scrollTop($('#received')[0].scrollHeight);
        // }, 0);
    });
    }

    // using JQUERY's ready method to know when all dom elements are rendered
    $( document ).ready ( function () {
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
