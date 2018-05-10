<?php
/*
Template Name: Page Cuisine
*/

get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<div class="page-wrapper">
	<div class="portrait photos" style="background: url(<?php the_field("portraits");?>)">
        <div class="presentation">
            <h3 class="titre noms1"><?php the_field("nom_1")?></h3>
            <h3 class="titre noms2"><?php the_field("nom_2")?></h3>
        </div>
	</div>
    <div class="cadre-bas">
        <div class="container-1200">
            <h2 class="titre-gauche"><?php the_field("titre_gauche");?></h2>
            <div class="texte-droite"><?php the_field("texte_droite");?></div>
        </div>
    </div>
	<div class="producteurs photos" id="background-producteur" style="background:url(<?php the_field("photo_produits");?>)">
		<h2 class="titre nos-producteurs h3"><?php the_field("titre")?></h2>
	</div>
    <div class="cadre-bas">
        <div class="container-1200">
            <h3 class="titre-gauche"><?php the_field("titre_gauche_2");?></h3>
            <div class="texte-droite"><?php the_field("texte_droite_2");?></div>
        </div>
    </div>
<?php endwhile; else : ?>
	<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>