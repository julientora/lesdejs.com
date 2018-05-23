
<?php wp_footer(); ?>


<footer>
<?php

$the_query = new WP_Query( array( 'pagename' => 'footer' ) );

if ( $the_query->have_posts() ) {
	while ( $the_query->have_posts() ) {
		$the_query->the_post();
		the_content();
	}
	wp_reset_postdata();
} else {
}
wp_nav_menu( array( 'theme_location' => 'menu_footer' ) ); 

?>

</footer>

<script>	
(function ($){
	$(window).ready(function(){	
        $('.burger-menu').click(function() {
            $('.responsive-menu').addClass('active');
        }); 
        $('#close').click(function() {
            $('.responsive-menu').removeClass('active');
        }); 

        $(".page-wrapper").on('click', '.h3', function(){
        	$(".drinks-choice").toggleClass('open');
        });
        $(".woocommerce-form__label span").click(function(){
        	$(".woocommerce-form__label span").toggleClass('active');
        });
        $(".add_to_cart_button").append('<span class="triangle">&#x25B6;</span>');

	    function moreOrLess() {
	    	$(".quantity").append('<div class="inc bouton">+</div>');
	    	$(".quantity").prepend('<div class="dec bouton">-</div>');
			$(".bouton").click(function(){
				var $bouton = $(this);
				var oldValue = $bouton.parent().find("input").val();
				if ($bouton.text() == "+") {
					var newVal = parseFloat(oldValue) + 1;
				} else {
				   // n'allons pas en-dessous de zéro...
					if (oldValue > 0) {
				      var newVal = parseFloat(oldValue) - 1;
				    } else {
				      newVal = 0;
				    }
				  }
				$bouton.parent().find("input").attr('value', newVal);
			});
		};
		moreOrLess();
		$(window).ajaxStop(function(){
			if($(".bouton").length == 0){
				moreOrLess();
			}
        	$('.burger-menu').click(function() {
                $('.responsive-menu').addClass('active');
            }); 
        	$('#close').click(function() {
            	$('.responsive-menu').removeClass('active');
        	}); 
		});

		$(document).on("click",".bouton", function (e) {
			var myButton = $('.button' );
			myButton.removeProp( 'disabled');
	});
});

}(jQuery));	    	
</script>
</body>
</html>