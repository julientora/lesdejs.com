<!DOCTYPE html>
<html>
<head>
	<title><?php echo bloginfo('name'); wp_title( "|", true); ?> </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:image" content="<?php get_asset("", true, true); ?>" />
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png" />
<?php if( ENV == LOCAL ): ?>
    <link rel="stylesheet/less" type="text/css" href="<?php get_asset("less/main.less", true, true); ?>" />
    <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.5.3/less.min.js"></script>
<?php else: ?>
    <link rel="stylesheet" type="text/css" href="<?php get_asset("css/main.css", true, true); ?>">
<?php endif; ?>
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text|Libre+Franklin:400,500" rel="stylesheet">
	
	
	<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
<![endif]-->
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<header>
	<?php wp_nav_menu( array( 'theme_location' => 'menu_principal' ) ); ?>
    <div class="burger-menu">
        <span></span>
        <span></span>
        <span></span>
    </div>
	<div class="responsive-menu">
        <button id="close"></button>
        <?php wp_nav_menu( array( 'theme_location' => 'menu_principal' ) ); ?>
    </div>
	<?php
	$logo_query = new WP_Query( array ('pagename' => 'logo') );
	if ( $logo_query->have_posts() ) {
		while ( $logo_query->have_posts() ) {
			$logo_query->the_post(); ?>
			<div id="logo"><img src="<?php echo get_field("logo")?>"/></div>
		<?php }
		wp_reset_postdata();
	} else {
		// no posts found
	} ?>
</header>
