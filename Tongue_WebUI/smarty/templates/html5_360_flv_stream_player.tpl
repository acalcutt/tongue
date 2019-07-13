<!DOCTYPE html>
<html>
    <head>
		<meta charset="utf-8">
    </head>
<body>
	<script src="flv.js"></script>
	<video controls autoplay preload id="video" width="100%" height="100"></video>
	<script>
		if (flvjs.isSupported()) {
			var videoElement = document.getElementById('video');
			var flvPlayer = flvjs.createPlayer({
				type: 'flv',
				url: '{$stream_source}'
			});
			flvPlayer.attachMediaElement(videoElement);
			flvPlayer.load();
			flvPlayer.play();
		}
	</script>
	<br />
	<script src="three.min.js"></script>
	<script src="OrbitControls.js"></script>
	<script src="theta-view.js"></script>
	<script>
		window.addEventListener( 'DOMContentLoaded', theta_view('video'), false );
	</script>
</body>
</html>​