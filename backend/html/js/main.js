var domain = "http://localhost/";

function init(){

	$( document ).ready(function() {
		if (controller=="dir"){
			$.getScript('/js/dir.js', function(){
				dir_init();
			});
		}
	});
}
