<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<div class="page-wrapper">
	<div class="livraison photos" style="background:url(<?php the_field("photo_on_livre");?>)">
		<h1 class="titre on-livre"><?php the_field("titre_on_livre")?></h1>
		<div class="cadre-bas">
			<img class="map" src="<?php the_field("map");?>"/>
			<div class="texte-droite"><?php the_field("texte_droite_3");?></div>
		</div>
	</div>
<?php endwhile; else : ?>
	<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>