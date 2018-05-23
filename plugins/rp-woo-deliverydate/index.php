<?php

/*
  Plugin Name:WooCommerce Order Delivery OR Pick up Date
  Plugin URI: http://www.magerips.com
  Description: WooCommerce Order  Delivery OR Pick up Date allows your customers to select the date on which they want to receive the delivery/pick up of products.
  Author: Magerips
  Version: 1.4
  Author URI: http://www.magerips.com
 */

global $rpodd_plugin_url, $rpodd_plugin_dir;

$rpodd_plugin_dir = dirname(__FILE__) . "/";
$rpodd_plugin_url = plugins_url() . "/" . basename($rpodd_plugin_dir) . "/";
include_once $rpodd_plugin_dir . 'lib/main.php';

