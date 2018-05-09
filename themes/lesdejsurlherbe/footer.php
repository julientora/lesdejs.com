
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
?>
    <?php wp_nav_menu( array( 'theme_location' => 'menu_footer' ) ); ?>

</footer>

<script src="https://cdn.jsdelivr.net/parallax.js/1.4.2/parallax.min.js"></script>
<script>
(function ($){
	// $(document).ready(function() {
	// 	$('.js-scrollTo').on('click', function() { // Au clic sur un élément
	// 		var page = $(this).attr('href'); // Page cible
	// 		var speed = 750; // Durée de l'animation (en ms)
	// 		$('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
	// 		return false;
	// 	});
	// })
}(jQuery));
</script>
<script>	
	(function ($){
		$(document).ready(function(){	
		    	//$('.product-image').parallax(0.2, 0, true);
  
// 	Petit cours de jQuery --> .toggleClass() pour ajouter/virer une classe
//	.toggle() pour faire un display:none ou :block. 
//	Cela permet d'éviter les répétitions du genre : addClass/removeClass, puisqu'à chaque événement, la classe ou le display sont changés. 
//	Pour qu'un élément ayant une class commune avec d'autres soit ciblé, il faut appeler $(this) dans la fonction. Pour rappel, tu avais 
//	écrit $('$this'), ce qui n'est pas correct. 
				//Voici donc une fonction qui "fonctionne" : 
//            	$('.bouton-ingredients').click(function() {
//               		$(this).toggleClass('active');
//               		$(this).next().slideToggle(500, 'linear');
//            	}); 
            // 	Je te laisse faire apparaître le menu comme tu préfères

            // Ton code. 
                $('.burger-menu').click(function() {
                    $('.responsive-menu').addClass('active');
                }); 
                $('#close').click(function() {
                    $('.responsive-menu').removeClass('active');
                }); 

                $(".drinks-choice .h3").click(function(){
                	$(".drinks-choice").toggleClass('open');
                });
                $(".woocommerce-form__label span").click(function(){
                	$(".woocommerce-form__label span").toggleClass('active');
                });
                $(".woocommerce").ajaxStop(function(){
                	$(".drinks-choice .h3").click(function(){
                		$(".drinks-choice").toggleClass('open');
                	});
                	$('.burger-menu').click(function() {
	                    $('.responsive-menu').addClass('active');
	                }); 
                	$('#close').click(function() {
                    	$('.responsive-menu').removeClass('active');
                	}); 
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
		$(".woocommerce").ajaxStop(function(){
			if($(".bouton").length == 0){
				moreOrLess();
			}
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