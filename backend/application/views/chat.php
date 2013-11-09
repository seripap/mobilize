  <script>
  	var time = 0;
  	var userid = <?php echo $user->id ?>;
  	var helperid = 1;
  	var memData = '';

  	var updateTime = function (cb) {
  		$.getJSON("chat/time", function (data) {
  			cb(~~data);
  		});
  	};

  	var sendChat = function (message) {
  		$.getJSON("chat/insert_chat?message=" + message + "&from=" + userid + "&to=" + helperid, function (){
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
  		$.getJSON("chat/get_chats?userid=" + userid, function (data){

  			console.debug(data);

  				$.each(data, function() {
  					if (this.to_user_id != userid) {
  						$('#message_container').append('<strong>'+this.to_username+'</strong> - ');
  						$('#message_container').append('<span>'+this.message+'</span>');
  						$('#message_container').append('<br>');
  					} else {
  						$('#message_container').append('<span>'+this.message+'</span>');
  						$('#message_container').append(' - <strong>'+this.my_username+'</strong> ');
  						$('#message_container').append('<br>');
  					}



  				});
  				$("#text").val('').show();


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
      	$("#text").val('').hide();

        // get the time if clicked via a ajax get queury
        sendChat(data);
      });
      // setInterval(function (){
      // 	getNewChats(0);
      // },1500);
    });

  </script>

  <section id="message_container">
  	<span class="from"></span>
  	<span class="message"></span>
  </section>


  <form>
  	<input id="text" type="text" name="user">
  	<input type="submit" value="Send">
  </form>
