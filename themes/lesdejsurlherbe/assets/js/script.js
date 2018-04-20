jQuery(function($){
	
	$(".bouton-ingredients").click(function(){
		$(".menu-description").toggle(400);
	});

	function changeImgSize(){
		var windowHeight = $(window).height();
		var windowWidth = $(window).width();
		$(".product-image, .photos").width(windowWidth).height(windowHeight);
	}
	changeImgSize();
	$(window).resize(changeImgSize);



});