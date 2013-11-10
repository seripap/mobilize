			</section>
		</div>

		<!-- Project Footer -->
		<footer>
			<ul>
				<li><a href="http://local.o0h.org">Chat</a></li>
				<li>Services</li>
				<li><a href="http://local.o0h.org/index.php/about">About</a></li>
			</ul>
		</footer>
	</div>

	<script type="text/javascript" src="/js/iscroll.js"></script>
	<script>
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
	</script>
</body>
</html>
