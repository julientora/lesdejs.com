<?php get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div class="page-wrapper">
	<?php
	if(get_field('image_bandeau')):
	?>
		<div id="image_bandeau" class="photos" style="background-image:url('<?php the_field('image_bandeau');?>')">
			<?php if(is_page('partenaires')):
				?>
				<div class="titre-bas">
				<?php else :
				?>
				<div class="titre">
				<?php endif ?>
				<h3><?php the_title();?></h3>
			</div>
		</div>
	<?php
	endif;
	the_content(); ?>
	<?php
	if( have_rows('logos_partenaires') ):
		?>
		<div id="logos_partenaires">
			<?php
	    while ( have_rows('logos_partenaires') ) : the_row();
	?>
	        <div class="logo_partenaire" style="background-image:url('<?php the_sub_field('logo_partenaire');?>')"></div>
	<?php
	    endwhile;
	?>
	</div>
	<?php
	else :
	endif;
	?>
</div>
<?php endwhile; else : ?>
	<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>
