
<?php wp_footer(); ?>


<script type="text/javascript" src="<?php get_asset("js/jquery.parallax-1.1.3.js"); ?>"></script>
<script type="text/javascript" src="<?php get_asset("js/script.js"); ?>"></script>
<script>
(function ($){
	$(document).ready(function() {
		$('.js-scrollTo').on('click', function() { // Au clic sur un élément
			var page = $(this).attr('href'); // Page cible
			var speed = 750; // Durée de l'animation (en ms)
			$('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
			return false;
		});
	})
}(jQuery));
</script>
<script>	
	(function ($){
		$(document).ready(function(){	
		    	$('.bloc_photo').parallax("center", .2, 0, true);
            
                $('.bouton-ingredients').click(function() {
                    $('$this').addClass('active');
                }); 
            
                $('.burger-menu').click(function() {
                    $('.responsive-menu').addClass('active');
                }); 
                $('#close').click(function() {
                    $('.responsive-menu').removeClass('active');
                }); 
	    })
	}(jQuery));	    	
</script>
</body>
</html>