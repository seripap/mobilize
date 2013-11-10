			</section> 
		</div> 
 
		<!-- Project Footer --> 
		<footer>
			<ul>
				<li>Chat</li>
				<li>Services</li>
				<li>About</li>
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