<!-- BEGIN: main -->
<!-- BEGIN: CAMERA -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/modules/slider/plugins/camera/camera.css" type="text/css" media="all" rel="stylesheet" />
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/modules/slider/plugins/camera/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/modules/slider/plugins/camera/jquery.easing.1.3.js"></script>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/modules/slider/plugins/camera/camera.js"></script>
<!-- END: CAMERA -->
<div class="camera_container">
	<div id="camera_{BLOCKID}" class="camera_wrap">
		<!-- BEGIN: loop -->
            <div data-src="{ROW.thumb}">
				<div class="camera_caption fadeIn">
					<div class="jumbotron jumbotron1">
					  <em>
						{ROW.title}
					  </em>
					  <div class="wrap">
						<p>
						  {ROW.hometext}
						</p>
						<a href="{ROW.link}" class="btn-link fa fa-angle-right" title="{LANG.more}"></a>
					  </div>  
					</div>
				</div>
            </div>
		<!-- END: loop -->
	</div>
</div>
<script>
	$(document).ready(function () {
		$('#camera_{BLOCKID}').camera({
			autoAdvance: true,
			mobileAutoAdvance: true,
			height: '30%',
			minHeight: '350px',
			pagination: true,
			thumbnails: false,
			playPause: false,
			hover: false,
			loader: 'none',
			navigation: false,
			navigationHover: false,
			mobileNavHover: false,
			fx: 'random'
		})
	});
</script>    
<!-- END: main -->
