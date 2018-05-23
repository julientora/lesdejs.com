<?php
if (!class_exists('rp_order_deliverydate')) {

    class rp_order_deliverydate {

        private static $plugin_url;
        private static $plugin_dir;
        private static $plugin_title = "Delivery Date";
        private static $plugin_slug = "rpodd-setting";
        private static $rpodd_option_key = "rpodd-setting";
        private static $datepicker_language;
        private static $datepicker_theme;
        private static $delivery_order_key = "__rp_order_date";
        private static $day;
        private static $month;
        private $rpodd_settings;
        public static $default_setting = array(
            "date_title" => "Delivery Date",
            "date_format" => "yy-mm-dd",
            "time_format" => "hh:mm TT",
            "time_to" => "24",
        );

        public function __construct()
        {
            global $rpodd_plugin_dir, $rpodd_plugin_url;

            /* plugin url and directory variable */
            self::$plugin_dir = $rpodd_plugin_dir;
            self::$plugin_url = $rpodd_plugin_url;
            self::$day = array(
                '0' => __("Sunday", "rpodd"),
                '1' => __("Monday", "rpodd"),
                '2' => __("Tuesday", "rpodd"),
                '3' => __("Wednesday", "rpodd"),
                '4' => __("Thursday", "rpodd"),
                '5' => __("Friday", "rpodd"),
                '6' => __("Saturday", "rpodd"),
            );
            self::$month = array(
                '01' => __('January', 'rpodd'),
                '02' => __('February', 'rpodd'),
                '03' => __('March', 'rpodd'),
                '04' => __('April', 'rpodd'),
                '05' => __('May', 'rpodd'),
                '06' => __('June', 'rpodd'),
                '07' => __('July', 'rpodd'),
                '08' => __('August', 'rpodd'),
                '09' => __('September', 'rpodd'),
                '10' => __('October', 'rpodd'),
                '11' => __('November', 'rpodd'),
                '12' => __('December', 'rpodd'),
            );
            self::$datepicker_language = array(
                '' => __('English', 'woocommerce'),
                'af' => __('Afrikaans', 'woocommerce'),
                'ar-DZ' => __('Algerian Arabic', 'woocommerce'),
                'ar' => __('Arabic', 'woocommerce'),
                'az' => __('Azerbaijani', 'woocommerce'),
                'be' => __('Belarusian', 'woocommerce'),
                'bg' => __('Bulgarian', 'woocommerce'),
                'bs' => __('Bosnian', 'woocommerce'),
                'ca' => __('Inicialització', 'woocommerce'),
                'cs' => __('Czech', 'woocommerce'),
                'cy-GB' => __('Welsh/UK', 'woocommerce'),
                'da' => __('Danish', 'woocommerce'),
                'de' => __('German', 'woocommerce'),
                'el' => __('Greek', 'woocommerce'),
                'en-AU' => __('English/Australia', 'woocommerce'),
                'en-GB' => __('English/UK', 'woocommerce'),
                'en-NZ' => __('English/New Zealand', 'woocommerce'),
                'eo' => __('Esperanto', 'woocommerce'),
                'es' => __('Spanish', 'woocommerce'),
                'et' => __('Estonian', 'woocommerce'),
                'eu' => __('Euskarako', 'woocommerce'),
                'fa' => __('Persian (Farsi)', 'woocommerce'),
                'fi' => __('Finnish', 'woocommerce'),
                'fo' => __('Faroese', 'woocommerce'),
                'fr-CA' => __('Canadian-French', 'woocommerce'),
                'fr-CH' => __('Swiss-French', 'woocommerce'),
                'fr' => __('French', 'woocommerce'),
                'gl' => __('Galician', 'woocommerce'),
                'he' => __('Hebrew', 'woocommerce'),
                'hi' => __('Hindi', 'woocommerce'),
                'hr' => __('Croatian', 'woocommerce'),
                'hu' => __('Hungarian', 'woocommerce'),
                'hy' => __('Armenian', 'woocommerce'),
                'id' => __('Indonesian', 'woocommerce'),
                'is' => __('Icelandic', 'woocommerce'),
                'it-CH' => __('Italian/Switzerland', 'woocommerce'),
                'it' => __('Italian', 'woocommerce'),
                'ja' => __('Japanese', 'woocommerce'),
                'ka' => __('Georgian', 'woocommerce'),
                'kk' => __('Kazakh', 'woocommerce'),
                'km' => __('Khmer', 'woocommerce'),
                'ko' => __('Korean', 'woocommerce'),
                'ky' => __('Kyrgyz', 'woocommerce'),
                'lb' => __('Luxembourgish', 'woocommerce'),
                'lt' => __('Lithuanian', 'woocommerce'),
                'lv' => __('Latvian', 'woocommerce'),
                'mk' => __('Macedonian', 'woocommerce'),
                'ml' => __('Malayalam', 'woocommerce'),
                'ms' => __('Malaysian', 'woocommerce'),
                'nb' => __('Norwegian', 'woocommerce'),
                'nl-BE' => __('Dutch/Belgium', 'woocommerce'),
                'nl' => __('Dutch', 'woocommerce'),
                'nn' => __('Norwegian', 'woocommerce'),
                'no' => __('Norwegian/Nynorsk', 'woocommerce'),
                'pl' => __('Polish', 'woocommerce'),
                'pt-BR' => __('Brazilian', 'woocommerce'),
                'pt' => __('Portuguese', 'woocommerce'),
                'rm' => __('Romansh', 'woocommerce'),
                'ro' => __('Romanian', 'woocommerce'),
                'ru' => __('Russian', 'woocommerce'),
                'sk' => __('Slovak', 'woocommerce'),
                'sl' => __('Slovenian', 'woocommerce'),
                'sq' => __('Albanian', 'woocommerce'),
                'sr-SR' => __('Serbian (Latin)', 'woocommerce'),
                'sr' => __('Serbian (Cyrillic)', 'woocommerce'),
                'sv' => __('Swedish', 'woocommerce'),
                'ta' => __('Tamil', 'woocommerce'),
                'th' => __('Thai', 'woocommerce'),
                'tj' => __('Tajiki', 'woocommerce'),
                'tr' => __('Turkish', 'woocommerce'),
                'uk' => __('Ukrainian', 'woocommerce'),
                'vi' => __('Vietnamese', 'woocommerce'),
                'zh-CN' => __('Chinese/Mainland', 'woocommerce'),
                'zh-HK' => __('Chinese/Hong Kong', 'woocommerce'),
                'zh-TW' => __('Chinese/Taiwan', 'woocommerce'),
            );

            /* load delivery date  setting */
            $this->rpodd_settings = get_option(self::$rpodd_option_key);

            /* validate delivery date field */
            add_filter('woocommerce_checkout_fields', array($this, 'validate_delivery_field'), 20, 1);

            /* admin menu for delivery date */
            add_action("admin_menu", array($this, "admin_menu"));
            add_action("admin_init", array($this, "admin_init"));

            /* register delivery date js */
            add_action('wp_enqueue_scripts', array($this, 'enqueue_scripts'));
            add_action('admin_enqueue_scripts', array($this, 'enqueue_scripts'));

            /* display field on checkout page */
            add_action('woocommerce_before_order_notes', array($this, 'display_field_oncheckout'), 20);

            /* Save order delivery date */
            add_action('woocommerce_checkout_update_order_meta', array($this, 'save_delivery_date'));
            add_action("save_post", array($this, "save_admin_date"));

            /* Show time delivery on order detail page in admin area */
            add_action('woocommerce_admin_order_data_after_shipping_address', array($this, 'display_field_admin'));

            /* show delivery dateon customer order detail page */
            add_action('woocommerce_order_details_after_customer_details', array($this, "show_date_on_order_detail"), 10, 1);


            add_filter('woocommerce_email_order_meta', array($this, 'delivery_date_email'), 10, 1);
        }

        /**
         * show delivery date on customer order detail page
         *
         * @return Mixed
         */
        public function show_date_on_order_detail($order)
        {
            if (version_compare(WOOCOMMERCE_VERSION, "3.0") <= 0) {
                $orderId=$order->id;
            }else{
                $orderId=$order->get_id();
            }
            if ($delivery_time = get_post_meta($orderId, self::$delivery_order_key, true)) {
                $label = ($this->get_setting('date_title') != "") ? $this->get_setting('date_title') : __('Delivery Time', 'woocommerce');
                ?>
                <tr>
                    <td><strong><?php echo $label ?>:</strong></td>
                    <td><?php echo $delivery_time; ?></td>
                </tr>
                <?php
            }
        }

        /**
         * save date from admin
         *
         * @return Mixed
         */
        public function save_admin_date($post_id)
        {
            if (isset($_POST['delivery_datetime'])) {
                update_post_meta($post_id, self::$delivery_order_key, $_POST['delivery_datetime']);
            }
        }

        /**
         * display date in admin
         *
         * @return Mixed
         */
        function display_field_admin($order)
        {

            if (version_compare(WOOCOMMERCE_VERSION, "3.0") <= 0) {
                $orderId=$order->id;
            }else{
                $orderId=$order->get_id();
            }
            $delivery_time = get_post_meta($orderId, self::$delivery_order_key, true);
            $label = ($this->get_setting('date_title') != "") ? $this->get_setting('date_title') : __('Delivery Time', 'woocommerce');

            echo "<p><strong>{$label}:</strong></p><input id='delivery_datetime' name='delivery_datetime' type='text' value='" . $delivery_time . "' />";
        }

        /**
         * validate delivery date on checkout page
         *
         * @return Mixed
         */
        function validate_delivery_field($checkout_fields)
        {
            global $woocommerce;



            if (!$this->get_setting('enable_delivery_date'))
                return $checkout_fields;

            $required = $this->get_setting('required_delivery_date');
            if (empty($required))
                return $checkout_fields;

            $label = ($this->get_setting('date_title') != "") ? $this->get_setting('date_title') : __('Delivery Time', 'woocommerce');


            $checkout_fields['rpodd'] = array(
                'delivery_datetime' => array(
                    'label' => $label,
                    'placeholder' => $label,
                    'required' => !empty($required),
                )
            );

            return $checkout_fields;
        }

        function save_delivery_date($order_id)
        {
            if (!empty($_POST['delivery_datetime']))
                update_post_meta($order_id, self::$delivery_order_key, $_POST['delivery_datetime']);
        }

        /**
         * register javascript and css
         *
         * @return Mixed
         */
        public function enqueue_scripts()
        {
            // Enqueue scripts & styles for checkout page only
            if (!is_checkout() && !is_admin())
                return;

            wp_enqueue_style('jquery-datetimepicker', self::$plugin_url . 'assets/css/jquery.datetimepicker.min.css');
            // Timepicker script
            $dateFormate = ($this->get_setting('date_format') != "") ? $this->get_setting('date_format') : "mm/dd/yy";
            $timeFormate = ($this->get_setting('date_format') != "") ? $this->get_setting('time_format') : 'hh:mm TT';
            $weekDayBlock = $this->get_block_weekday();


            $daysBlock = array();
            $rangeBlock = $this->get_period_blockday();
            $specificDaysBlock = $this->get_specific_blockday();
            if ($specificDaysBlock && count($specificDaysBlock) > 0):
                foreach ($specificDaysBlock as $sday):
                    $daysBlock[] = $sday;
                endforeach;
            endif;
            $daysBlock = array_unique($daysBlock);
            $time_from=$this->get_setting('time_from');
            $time_to=$this->get_setting('time_to');
            $current_weekday=date('w');
            $current_date = sprintf('F j, Y %s:00:00', $time_from[$current_weekday]);
            $currentTime = time();
            if ($this->get_setting('disable_x_days') > 0) {
                $currentTime = $currentTime + (60 * 60 * 24 * $this->get_setting('disable_x_days'));
            }
            $language = $this->get_setting('datepicker_language');
            $theme = $this->get_setting('datepicker_theme');
            $minDateTime = date($current_date, $currentTime);
            $minDateTime2 = date('Y/m/d', $currentTime);
            $showTimepicer = $this->get_setting('enable_timepicker');
            $optionParams = array(
                'dtFormat' => $dateFormate,
                'theme' => $theme,
                'language' => $language,
                'tFormat' => $timeFormate,
                'hideWeekDays' => $weekDayBlock,
                'hideDates' => $daysBlock,
                'hideRange' => $rangeBlock,
                'lang' => $this->get_setting('datepicker_language'),
                'minDt' => $minDateTime,
                'minDt2' => $minDateTime2,
                'displayTimepicker' => $showTimepicer ? 1 : 0,
                'curMinHours' => $time_from[$current_weekday],
                'curMaxHour' => $time_to[$current_weekday],
                'minHours' => $time_from,
                'maxHour' => $time_to,
            );
            wp_register_script('jquery-ui-timepicker', self::$plugin_url . 'assets/js/jquery.datetimepicker.full.min.js', array('jquery'), false, true);
            wp_enqueue_script('rp-delivery-date', self::$plugin_url . 'assets/js/delivery-date.js', array('jquery-ui-timepicker'), false, true);
            wp_localize_script('rp-delivery-date', 'RPODD', $optionParams);
        }

        /**
         * get block days
         *
         * @return Mixed
         */
        public function get_block_weekday()
        {
            $weekday_block = array();
            $weekday = $this->get_setting('weekdayoff');
            if ($weekday && !empty($weekday)) {
                foreach ($weekday as $bday):
                    $weekday_block[] = intval($bday);
                endforeach;
            }
            return $weekday_block;
        }

        /**
         * display field on checkout page
         *
         * @return Mixed
         */
        function display_field_oncheckout()
        {
            global $woocommerce;



            if (!$this->get_setting('enable_delivery_date'))
                return $checkout_fields;

            $label = ($this->get_setting('date_title') != "") ? $this->get_setting('date_title') : __('Delivery Time', 'woocommerce');
            $required = $this->get_setting('required_delivery_date') ? 1 : 0;

            woocommerce_form_field(
                    'delivery_datetime', array(
                'label' => $label,
                'placeholder' => $label,
                'clear' => true,
                'class' => array('clear'),
                'required' => $required,
                'custom_attributes' => array('readonly')
                    ), ''
            );
        }

        /* return specific block day */

        public function get_specific_blockday()
        {
            $specificday_block = array();

            $blockday = $this->get_setting('specific_day');

            if ($blockday && !empty($blockday['day']) && count($blockday['day']) > 0) {
                for ($i = 0; $i < count($blockday['day']); $i++):
                    if ($blockday['day'][$i] == 0)
                        continue;
                    if ($blockday['month'][$i] == 0)
                        continue;
                    if ($blockday['year'][$i] == 0)
                        continue;
                    $date = $blockday['year'][$i] . "-" . $blockday['month'][$i] . "-" . $blockday['day'][$i];

                    $specificday_block[] = $date;
                endfor;
            }

            return $specificday_block;
        }

        /* return period block day */

        public function get_period_blockday()
        {
            $blockDates = array();
            $blockPeriod = $this->get_setting('specific_period');
            if ($blockPeriod && !empty($blockPeriod['fday']) && count($blockPeriod['fday']) > 0) {
                for ($i = 0; $i < count($blockPeriod['fday']); $i++):
                    if ($blockPeriod['fday'][$i] == 0)
                        continue;
                    if ($blockPeriod['fmonth'][$i] == 0)
                        continue;
                    if ($blockPeriod['fyear'][$i] == 0)
                        continue;
                    if ($blockPeriod['tday'][$i] == 0)
                        continue;
                    if ($blockPeriod['tmonth'][$i] == 0)
                        continue;
                    if ($blockPeriod['tyear'][$i] == 0)
                        continue;

                    $fromDate = $blockPeriod['fyear'][$i] . "-" . $blockPeriod['fmonth'][$i] . "-" . $blockPeriod['fday'][$i];
                    $toDate = $blockPeriod['tyear'][$i] . "-" . $blockPeriod['tmonth'][$i] . "-" . $blockPeriod['tday'][$i];
                    $fromTimeDate = strtotime($fromDate);
                    $toTimeDate = strtotime($toDate);

                    if ($fromTimeDate > $toTimeDate)
                        continue;

                    $blockDates[] = array("form" => $fromDate, "to" => $toDate);


                endfor;
            }
            return $blockDates;
        }

        public function admin_init()
        {
            wp_enqueue_script('rpodd-admin', self::$plugin_url . "assets/js/admin.js");
            wp_enqueue_style('rpodd-admin', self::$plugin_url . "assets/css/admin.css");
        }

        public function admin_menu()
        {
            $wc_page = 'woocommerce';
            add_submenu_page($wc_page, self::$plugin_title, self::$plugin_title, "install_plugins", self::$plugin_slug, array($this, "setting_delivery_date"));
        }

        public function setting_delivery_date()
        {
            /* save delivery date setting */
            if (isset($_POST[self::$plugin_slug])) {
                $this->saveSetting();
            }

            /* include admin  delivery date setting file */
            include_once self::$plugin_dir . "view/delivery-date-setting.php";
        }

        public function saveSetting()
        {
            $arrayRemove = array(self::$plugin_slug, "btn-rpodd-submit");
            $saveData = array();
            foreach ($_POST as $key => $value):
                if (in_array($key, $arrayRemove))
                    continue;
                $saveData[$key] = $value;
            endforeach;
            $this->rpodd_settings = $saveData;
            update_option(self::$rpodd_option_key, $saveData);
        }

        public function get_setting($key)
        {

            if (!$key || $key == "")
                return;

            if (isset($this->rpodd_settings[$key]))
                return $this->rpodd_settings[$key];

            if (isset(self::$default_setting[$key]))
                return self::$default_setting[$key];
        }

        public function delivery_date_email($order)
        {
            if (version_compare(WOOCOMMERCE_VERSION, "3.0") <= 0) {
                $orderId=$order->id;
            }else{
                $orderId=$order->get_id();
            }
            if ($delivery_time = get_post_meta($orderId, self::$delivery_order_key, true)) {
                $label = ($this->get_setting('date_title') != "") ? $this->get_setting('date_title') : __('Delivery Time', 'woocommerce');
                ?>
                <br>
                <h2><?php echo $label ?></h2>
                <p><?php echo $delivery_time; ?></p>
                <br>
                <?php
            }
        }

    }

}
/* load plugin if woocommerce plugin is activated */
if (in_array('woocommerce/woocommerce.php', apply_filters('active_plugins', get_option('active_plugins')))) {
    /* load shipping calculator plugin code */
    new rp_order_deliverydate();
}
