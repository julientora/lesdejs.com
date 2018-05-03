<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<div class="page-wrapper">
	<div class="livraison photos">
		<h2 class="titre on-livre h3"><?php the_field("titre_on_livre")?></h2>
		<div class="cadre-bas">
            <div class="container-1200">
                <img class="map" src="<?php the_field("map");?>"/>
                <div class="texte-droite"><?php the_field("texte_droite_3");?></div>
            </div>
		</div>
	</div>
    <div id="photo-livraison" style="background:url(<?php the_field("photo_on_livre");?>)"></div>
<?php endwhile; else : ?>
	<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>