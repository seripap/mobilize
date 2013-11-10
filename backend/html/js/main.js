var domain = "http://"+window.location.hostname+"/";
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

			setTimeout(function(){
				bodyScroll.refresh();
			}, 500);
			$('input').bind('click tap', function(e){
				e.preventDefault();
				e.bubble=false;
				return false;
			}).bind('focus', function(e){
				e.preventDefault();
				e.bubble=false;
				bodyScroll.destroy();
				bodyScroll=null;
			}).bind('blur', function(){
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
				setTimeout(function(){
					bodyScroll.refresh();
				}, 500);
			});

			document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
		}
		if(!$.segment(2)){

			$('.back_btn').hide();
		}else{

			if($.segment(2)=="login"){
$('.back_btn').hide();
			}else{
	$('.back_btn').click(function(){window.location=domain+"index.php";});
	}
		}
	});
}


$(function() {
	$('#cog_nav').click(function() {
		document.location = "http://o0h.org/index.php/settings";
	});

	$('#navChat').click(function() {
		document.location = "http://o0h.org";
	});

	$('#navServices').click(function() {
		document.location = "http://o0h.org/index.php/dir";
	});

	$('#navAbout').click(function() {
		document.location = "http://o0h.org/index.php/about";
	});

	$('#loginWithFB').click(function() {
		$('#loginWithFB').html('');
		$('#loginWithFB').css('text-align','center');
		var cl = new CanvasLoader('loginWithFB');
		cl.setColor("#FFFFFF");
		cl.setDiameter(17); // default is 40
		cl.setRange(0.4); // default is 1.3
		cl.show(); // Hidden by default
		document.location = "http://o0h.org/index.php/oauth";
	});

	$('#adminLogin').click(function() {
		document.location = "http://o0h.org/index.php/adminlogin";
	});

});
