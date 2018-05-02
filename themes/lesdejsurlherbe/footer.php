
<?php wp_footer(); ?>
<footer>
    <h4>Commandez avant 12h, c’est livré entre 11h et 15h.</h4>
    <h5>Les dejeuners sur l’herbe . Lourmarin</h5>
    <?php wp_nav_menu( array( 'theme_location' => 'menu_footer' ) ); ?>

</footer>

<script src="https://cdn.jsdelivr.net/parallax.js/1.4.2/parallax.min.js"></script>
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
		    	//$('.product-image').parallax(0.2, 0, true);
  
// 	Petit cours de jQuery --> .toggleClass() pour ajouter/virer une classe
//	.toggle() pour faire un display:none ou :block. 
//	Cela permet d'éviter les répétitions du genre : addClass/removeClass, puisqu'à chaque événement, la classe ou le display sont changés. 
//	Pour qu'un élément ayant une class commune avec d'autres soit ciblé, il faut appeler $(this) dans la fonction. Pour rappel, tu avais 
//	écrit $('$this'), ce qui n'est pas correct. 
				//Voici donc une fonction qui "fonctionne" : 
            	$('.bouton-ingredients').click(function() {
               		$(this).toggleClass('active');
               		$(this).next().slideToggle(500, 'linear');
            	}); 
            // 	Je te laisse faire apparaître le menu comme tu préfères

            // Ton code. 
                $('.burger-menu').click(function() {
                    $('.responsive-menu').addClass('active');
                }); 
                $('#close').click(function() {
                    $('.responsive-menu').removeClass('active');
                }); 
	    })
	    $(function() {
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
				$bouton.parent().find("input").val(newVal);
			});
		});
	}(jQuery));	    	
</script>
</body>
</html>