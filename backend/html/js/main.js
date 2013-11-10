var domain = "http://localhost/";
var controller = "";
function init() {

	$(document).ready(function() {
		if (controller == "dir") {
			$.getScript('/js/dir.js', function() {
				dir_init();
			});
		} else {
			bodyScroll = new iScroll('wrapper-content', {
			checkDOMChanges: true,
			onBeforeScrollStart: function (e) {
				var target = e.target;
				while (target.nodeType != 1)
				target =target.parentNode;

				if (target.tagName != 'SELECT' && target.tagName != 'INPUT' && target.tagName != 'TEXTAREA'){
					e.preventDefault();
				}
			},
			bounce:true,
			momentum:true,
			preventGhostClick:true
		});

		document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);

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
