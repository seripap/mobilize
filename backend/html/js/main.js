var domain = "http://local.o0h.org/";

function init() {

	$(document).ready(function() {
		if (controller == "dir") {
			$.getScript('/js/dir.js', function() {
				dir_init();
			});
		} else if (controller == "js") {
			return;
		}
	});
}


$(function() {
	$('#cog_nav').click(function() {
		document.location = "http://local.o0h.org/index.php/settings";
	});

	$('#navChat').click(function() {
		document.location = "http://local.o0h.org";
	});

	$('#navServices').click(function() {
		document.location = "http://local.o0h.org/index.php/dir";
	});

	$('#navAbout').click(function() {
		document.location = "http://local.o0h.org/index.php/about";
	});

});
