<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<div class="page-wrapper">
	<div class="portrait photos" style="background:url(<?php the_field("portraits");?>)">
		<h1 class="titre noms1"><?php the_field("nom_1")?></h1>
		<h1 class="titre noms2"><?php the_field("nom_2")?></h1>
		<div class="cadre-bas">
			<h1 class="titre-gauche"><?php the_field("titre_gauche");?></h1>
			<div class="texte-droite"><?php the_field("texte_droite");?></div>
		</div>
	</div>
	<div class="producteurs photos" style="background:url(<?php the_field("photo_produits");?>)">
		<h1 class="titre nos-producteurs"><?php the_field("titre")?></h1>
		<div class="cadre-bas">
			<h1 class="titre-gauche"><?php the_field("titre_gauche_2");?></h1>
			<div class="texte-droite"><?php the_field("texte_droite_2");?></div>
		</div>
	</div>
<?php endwhile; else : ?>
	<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>