<!-- BEGIN: main -->
<div class="block-{BLOCKID}-slider rel">
	<ul class="slides">  
	<!-- BEGIN: loop -->
		<li>
			<a href="{ROW.link}"><img src="{ROW.thumb}" class="img-responsive"/></a>
			<p class="flex-caption">{ROW.title}</p>
		</li>
	<!-- END: loop -->
	</ul>
</div>

<script>
$(window).on('load', function() {
	$('.block-{BLOCKID}-slider').flexslider({
    animation: "slide",
	controlNav: false,
	keyboard: true,
	directionNav: true
  });
});
</script>
<!-- END: main -->
