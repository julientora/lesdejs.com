<?php 

//Ensure the $wp_rewrite global is loaded
global $wp_rewrite;
//Call flush_rules() as a method of the $wp_rewrite object
//$wp_rewrite->flush_rules();
//flush_rewrite_rules(true);


function get_asset( $asset, $display = true, $uncache = false ) {

	$asset = get_template_directory_uri() . "/assets/{$asset}";

	if ( $uncache ) {
		if (ENV == PRODUCTION) {
			$asset .= "?version=" . VERSION;
		} else {
			$asset .= "?burst=".rand(100000,999999);
		}
		
	}

	if ( $display ) echo $asset;

	return $asset;
	
}

//Page Slug Body Class
function add_slug_body_class( $classes ) {
global $post;
if ( isset( $post ) ) {
$classes[] = $post->post_type . '-' . $post->post_name;
}
return $classes;
}
add_filter( 'body_class', 'add_slug_body_class' );


//Enqueue the Dashicons script
add_action( 'wp_enqueue_scripts', 'load_dashicons_front_end' );
function load_dashicons_front_end() {
wp_enqueue_style( 'dashicons' );
}

function bbx_enqueue_scripts() {
wp_enqueue_script( 'jquery' );
}
add_action( 'wp_enqueue_scripts', 'bbx_enqueue_scripts' );

add_theme_support( 'post-thumbnails' );

function register_my_menu(){
	register_nav_menu( 'primary', 'Primary Menu' );
	register_nav_menu( 'secondary', 'Secondary Menu' );
}

add_action( 'init', 'register_my_menu' );

// register menus
register_nav_menus( array(
	'menu_principal' => 'Menu principal'
) );


//INITIALIZE WOOCOMMERCE
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10);
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10);

add_action('woocommerce_before_main_content', 'my_theme_wrapper_start', 10);
add_action('woocommerce_after_main_content', 'my_theme_wrapper_end', 10);

function my_theme_wrapper_start() {
  echo '<div class="page-wrapper">';
}

function my_theme_wrapper_end() {
  echo '</div>';
}

add_action( 'after_setup_theme', 'woocommerce_support' );
function woocommerce_support() {
    add_theme_support( 'woocommerce' );
}

// WOOCOMMERCE Remove each style one by one
add_filter( 'woocommerce_enqueue_styles', 'jk_dequeue_styles' );
function jk_dequeue_styles( $enqueue_styles ) {
	unset( $enqueue_styles['woocommerce-general'] );	// Remove the gloss
	unset( $enqueue_styles['woocommerce-layout'] );		// Remove the layout
	unset( $enqueue_styles['woocommerce-smallscreen'] );	// Remove the smallscreen optimisation
	return $enqueue_styles;
}

// Or just remove them all in one line
add_filter( 'woocommerce_enqueue_styles', '__return_false' );

add_filter( 'woocommerce_product_tabs', 'wcs_woo_remove_reviews_tab', 98 );
function wcs_woo_remove_reviews_tab($tabs) {
 unset($tabs['reviews']);
 return $tabs;
}

// Disable Link to Products
remove_action( 'woocommerce_before_shop_loop_item', 'woocommerce_template_loop_product_link_open', 10 );
remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_product_link_close', 5 );

// Remove shop page title
add_filter( 'woocommerce_show_page_title' , 'woo_hide_page_title' );
function woo_hide_page_title() {
	return false;
}
// Remove the sorting dropdown from Woocommerce
remove_action( 'woocommerce_before_shop_loop' , 'woocommerce_catalog_ordering', 30 );
// Remove the result count from WooCommerce
remove_action( 'woocommerce_before_shop_loop' , 'woocommerce_result_count', 20 );

// Remove sidebar
function remove_sidebar_in_wcmp_vendor_shop()
{ 
    remove_action('woocommerce_sidebar', 'woocommerce_get_sidebar', 10);
}
add_action( 'template_redirect', 'remove_sidebar_in_wcmp_vendor_shop', 999 );

// Show product description on archive page
function show_description() {
    global $product;
    $description = $product->get_description();
        echo '<div class="menu-description">' . $description . '</div></div>';
}
add_action( 'woocommerce_after_shop_loop_item_title', 'show_description', 9 );

// Put an "ingredients" button for each photo
function bouton_ingredients() {
        echo '<div class="detail-menu"><div class="bouton-ingredients">MENU</div>';
}
add_action( 'woocommerce_after_shop_loop_item_title', 'bouton_ingredients', 8 );

// Change "add to cart" button text
add_filter( 'woocommerce_product_add_to_cart_text' , 'custom_woocommerce_product_add_to_cart_text' );
function custom_woocommerce_product_add_to_cart_text() {
	return __( 'Order', 'woocommerce' );
}

/**
 * Add quantity field on the archive page.
 */
function custom_quantity_field_archive() {
	$product = wc_get_product( get_the_ID() );
	if ( ! $product->is_sold_individually() && 'variable' != $product->product_type && $product->is_purchasable() ) {
		woocommerce_quantity_input( array( 'min_value' => 1, 'max_value' => $product->backorders_allowed() ? '' : $product->get_stock_quantity() ) );
	}
}
add_action( 'woocommerce_after_shop_loop_item', 'custom_quantity_field_archive', 0, 9 );
/**
 * Add requires JavaScript.
 */
function custom_add_to_cart_quantity_handler() {
	wc_enqueue_js( '
		jQuery( ".post-type-archive-product" ).on( "click", ".quantity input", function() {
			return false;
		});
		jQuery( ".post-type-archive-product" ).on( "change input", ".quantity .qty", function() {
			var add_to_cart_button = jQuery( this ).parents( ".product" ).find( ".add_to_cart_button" );
			// For AJAX add-to-cart actions
			add_to_cart_button.data( "quantity", jQuery( this ).val() );
			// For non-AJAX add-to-cart actions
			add_to_cart_button.attr( "href", "?add-to-cart=" + add_to_cart_button.attr( "data-product_id" ) + "&quantity=" + jQuery( this ).val() );
		});
	' );
}
add_action( 'init', 'custom_add_to_cart_quantity_handler' );


/**
 * Check if WooCommerce is active
 **/
if ( in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {
    // remove product thumbnail and title from the shop loop
    remove_action( 'woocommerce_shop_loop', 'woocommerce_template_loop', 10);
    remove_action( 'woocommerce_shop_loop_item_title', 'woocommerce_template_loop_product_title', 10 );
    remove_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10 );
    
    // add the product thumbnail and title back in with custom structure
    add_action( 'woocommerce_before_shop_loop_item_title', 'sls_woocommerce_template_loop_product_thumbnail', 10 );
    function sls_woocommerce_template_loop_product_thumbnail() {
       echo '<div class="product-image" style="background:url('.get_the_post_thumbnail_url().')"></div>';
       echo '<h3><a href="'.get_the_permalink().'">'.get_the_title().'</a></h3>';
    } 
    
}
//add_drinks_products_to_cart
//add a reminder for drinks
add_action('woocommerce_after_cart_table', 'add_drinks_products_to_cart', 20);

function add_drinks_products_to_cart() {
	$args = array(
    'category' => array( 'boissons' ),
	);
	$products = wc_get_products( $args );
	foreach ($products as $indiv_product) {
		echo 'Avez-vous pensé aux boissons ?';
		echo '<div class="thumb">'.$indiv_product->get_image().'</div>';
		echo '<div class="product-title">'.$indiv_product->get_title().'</div';
		woocommerce_quantity_input();
		woocommerce_add_to_cart();
	}
}
