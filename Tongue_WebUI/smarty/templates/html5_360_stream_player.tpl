<!DOCTYPE html>
<html>
    <head>
		<meta charset="utf-8">
    </head>
<body>
	<video controls autoplay preload id="video" width="100%" height="100">
		<source src="{$stream_source}" type="video/webm">
	</video>
	<br />
	<script src="three.min.js"></script>
	<script src="OrbitControls.js"></script>
	<script src="theta-view.js"></script>
	<script>
		window.addEventListener( 'DOMContentLoaded', theta_view('video'), false );
	</script>
</body>
</html>​