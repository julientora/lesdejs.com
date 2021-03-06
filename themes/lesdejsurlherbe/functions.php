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
$classes[] = $post->post_type . '-' . $post->post_name . ' ' . pll_current_language();
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
wp_enqueue_script( 'jquery_ui', 'https://code.jquery.com/ui/1.12.1/jquery-ui.min.js', array() );
}
add_action( 'wp_enqueue_scripts', 'bbx_enqueue_scripts' );

remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');

remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
remove_action( 'admin_print_styles', 'print_emoji_styles' );

add_theme_support( 'post-thumbnails' );

// function register_my_menu(){
// 	register_nav_menu( 'menu-principal', 'Menu Principal');
// 	register_nav_menu( 'secondary', 'Secondary Menu' );
// }
//
// add_action( 'init', 'register_my_menu' );

// register menus
register_nav_menus( array(
	'menu-principal' => 'Menu principal',
	'panier' => 'Panier',
	'menu-footer' => 'Menu footer'
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
        echo '<div class="detail-menu"><div class="menu-description">' . $description . '</div></div>';
}
add_action( 'woocommerce_after_shop_loop_item_title', 'show_description', 9 );

// Get short description
function woocommerce_after_shop_loop_item_title_short_description() {
	global $product;
	if ( ! $product->get_short_description() ) return;
	?>
	<div class="short-description">
		<?php echo apply_filters( 'woocommerce_short_description', $product->get_short_description() ) ?>
	</div>
	<?php
}
add_action('woocommerce_after_shop_loop_item_title', 'woocommerce_after_shop_loop_item_title_short_description', 5);

//Change "add to cart" button text
add_filter( 'woocommerce_product_add_to_cart_text' , 'custom_woocommerce_product_add_to_cart_text' );
function custom_woocommerce_product_add_to_cart_text() {
	return __( 'Order', 'woocommerce' );
}

remove_action('woocommerce_after_shop_loop_item_price', 'woocommerce_quantity_input');
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
			add_to_cart_button.data( "quantity", jQuery( this ).attr("value") );
			// For non-AJAX add-to-cart actions
			add_to_cart_button.attr( "href", "?add-to-cart=" + add_to_cart_button.attr( "data-product_id" ) + "&quantity=" + jQuery( this ).attr("value") );
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
       echo '<h3>'.get_the_title().'</a></h3>';
    }

}
// add_drinks_products_to_cart
add_action('woocommerce_after_cart_table', 'add_drinks_products_to_cart', 20);

function add_drinks_products_to_cart() {

	if (pll_current_language() == 'en') {
		echo '<div class="drinks-choice"><p class="h3">Beverages<span>&#8595;</span></p>';
	}else{
	echo '<div class="drinks-choice"><p class="h3">Nos boissons <span>&#8595;</span></p>';
	}

	$taxonomy = "product_cat";
	$args = array(
		'taxonomy' => $taxonomy
	);
	$allcategories = get_categories( $args );
	foreach ($allcategories as $cat) {
		$cat_id = $cat->term_id;
		$cat_slug = $cat->slug;
		if($cat->category_parent == 0) {
			$args2 = array(
                'child_of' => 0,
        		'taxonomy' => $taxonomy,
        		'parent' => $cat_id
        	);
	        $sub_cats = get_categories( $args2 );
	        if($sub_cats) {
	            foreach($sub_cats as $sub_category) {
	                $subcat_name = $sub_category->name;
	                $subcat_slug = $sub_category->slug;
	                echo '<div class="drinks-categories">' . $subcat_name . '</div>';
	                //product-level
	                $args3 = array(
	                	'category' => array( $subcat_slug )
	                );
					$products = wc_get_products( $args3 );
					foreach ($products as $indiv_product) {
						//echo '<div class="thumb">'.$indiv_product->get_image().'</div>';
				        echo '<div class="drinks-line">';
						echo '<div class="product-title">'.$indiv_product->get_title().'</div>';
						echo '<div class="product-price">'.$indiv_product->get_price().'€</div>';
						//woocommerce_quantity_input();

						echo apply_filters( 'woocommerce_loop_add_to_cart_link',
							sprintf( '<a href="%s" data-quantity="%s" class="%s" %s>%s</a></div>',
							esc_url( $indiv_product->add_to_cart_url() ),
							esc_attr( isset( $args['quantity'] ) ? $args['quantity'] : 1 ),
							esc_attr( isset( $args['class'] ) ? $args['class'] : 'button' ),
							isset( $args['attributes'] ) ? wc_implode_html_attributes( $args['attributes'] ) : '',
							esc_html( $indiv_product->add_to_cart_text() )
						),
					$indiv_product, $args );
					}
	            }
	        }
		}
	}

    echo '</div>';
}

add_action('woocommerce_after_cart_totals','back_to_shop_button', 10);
function back_to_shop_button(){
	$site_url = get_site_url();
	if (pll_current_language() == 'fr'){
		echo '<p class="return-to-shop"><a class="button backward" href="' . $site_url .'">Retour à la boutique</a></p>';
	}else{
		echo '<p class="return-to-shop"><a class="button backward" href="' . $site_url .'">Return to shop</a></p>';
	}
}

/**
 * This function adds the WooCommerce cart icons/items to the top_nav menu area as the last item.
 */
add_filter( 'wp_nav_menu_items', 'my_wp_nav_menu_items', 10, 2 );
function my_wp_nav_menu_items( $items, $args, $ajax = false ) {
	// Top Navigation Area Only
	if ( ( isset( $ajax ) && $ajax ) || ( property_exists( $args, 'theme_location' ) && $args->theme_location === 'panier' ) ) {
		// WooCommerce
		if ( class_exists( 'woocommerce' ) ) {
			$css_class = 'menu-item menu-item-type-cart menu-item-type-woocommerce-cart';
			// Is this the cart page?
			if ( is_cart() ) {
				$css_class .= ' current-menu-item';
			}
			$items .= '<li class="' . esc_attr( $css_class ) . '">';
				$items .= '<a class="cart-contents" href="' . esc_url( WC()->cart->get_cart_url() ) . '">';
					$items .= __('Cart', 'woocommerce') .' : '. wp_kses_data( WC()->cart->get_cart_total() ) . '<span class="count">' .  wp_kses_data( sprintf( _n( '%d ' . __('Item', 'woocommerce'), '%d '. __('Items', 'woocommerce'), WC()->cart->get_cart_contents_count(), 'simple-shop' ), WC()->cart->get_cart_contents_count() ) ) . '</span>';
				$items .= '</a>';
			$items .= '</li>';
		}
	}
	return $items;
}
/**
 * This function updates the Top Navigation WooCommerce cart link contents when an item is added via AJAX.
 */
add_filter( 'woocommerce_add_to_cart_fragments', 'my_woocommerce_add_to_cart_fragments' );
function my_woocommerce_add_to_cart_fragments( $fragments ) {
	// Add our fragment
	$fragments['li.menu-item-type-woocommerce-cart'] = my_wp_nav_menu_items( '', new stdClass(), true );
	return $fragments;
}

add_filter('pll_get_post_types', 'unset_cpt_pll', 10, 2);
function unset_cpt_pll( $post_types, $is_settings ) {

    $post_types['acf'] = 'acf';

    return $post_types;
}

/**
 * Exclude products from a particular category on the shop page
 */
function custom_pre_get_posts_query( $q ) {

    $tax_query = (array) $q->get( 'tax_query' );

    $tax_query[] = array(
           'taxonomy' => 'product_cat',
           'field' => 'slug',
           'terms' => array( 'beverages', 'boissons'),
           'operator' => 'NOT IN'
    );


    $q->set( 'tax_query', $tax_query );

}
add_action( 'woocommerce_product_query', 'custom_pre_get_posts_query' );


// // Hook in
// add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
// // Our hooked in function - $fields is passed via the filter!
// function custom_override_checkout_fields( $fields ) {
// 	$fields['order']['order_comments']['style'] = 'textarea';
// 	if (pll_current_language() == 'fr'){
// 		$fields['order']['order_comments']['label'] = "Date et heure de livraison";
// 		$fields['order']['order_comments']['placeholder'] = "Indiquez la date et l'heure de livraison, ainsi que tout détail utile." ;
// 	}
// 	if (pll_current_language() == 'en'){
// 		$fields['order']['order_comments']['label'] = "Date and time of delivery";
// 		$fields['order']['order_comments']['placeholder'] = "Please give us the date and time of delivery and any other useful detail." ;
// 	}
//     $fields['order']['order_comments']['required'] = true;
//      return $fields;
// }
