			</section>
		</div>

		<!-- Project Footer -->
		<footer>
			<ul>
				<li id="navChat">Chat</li>
				<li id="navServices">Services</li>
				<li id="navAbout">About</li>
			</ul>
		</footer>
	</div>

	<script type="text/javascript" src="/js/iscroll.js"></script>
	<script>
		// Fix for Search page scrolling up and getting stuck on iPad -->
		/*
		$('input').focus(rePos(this));
		function rePos(element){
			window.scrollTo(0, '50px');
		}
		*/

		$('input').focus(function(){
			window.scrollTo(0, 300)
			console.log('scrollto')
		})
	</script>
</body>
</html>
