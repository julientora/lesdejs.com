-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 30 avr. 2018 à 15:53
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lesdejsurlherbe`
--

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_cf_form_entries`
--

CREATE TABLE `ldsl_cf_form_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_cf_form_entry_meta`
--

CREATE TABLE `ldsl_cf_form_entry_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_cf_form_entry_values`
--

CREATE TABLE `ldsl_cf_form_entry_values` (
  `id` int(11) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `field_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_cf_tracking`
--

CREATE TABLE `ldsl_cf_tracking` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_cf_tracking_meta`
--

CREATE TABLE `ldsl_cf_tracking_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_commentmeta`
--

CREATE TABLE `ldsl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_comments`
--

CREATE TABLE `ldsl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_comments`
--

INSERT INTO `ldsl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-17 21:28:03', '2017-07-17 19:28:03', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_links`
--

CREATE TABLE `ldsl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_options`
--

CREATE TABLE `ldsl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_options`
--

INSERT INTO `ldsl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/lesdejsurlherbe', 'yes'),
(2, 'home', 'http://localhost:8888/lesdejsurlherbe', 'yes'),
(3, 'blogname', 'Les déjeuners sur l&#039;herbe', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lasoupe@agencemyso.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:30:\"bowls-brunchs-petites-faims/?$\";s:27:\"index.php?post_type=product\";s:60:\"bowls-brunchs-petites-faims/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:55:\"bowls-brunchs-petites-faims/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:47:\"bowls-brunchs-petites-faims/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=69&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:21:\"flamingo/flamingo.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:6;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lesdejsurlherbe', 'yes'),
(41, 'stylesheet', 'lesdejsurlherbe', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '69', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'ldsl_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:6:\"Client\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:21:\"Gestionnaire boutique\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:11:{i:1525116484;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1525116510;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525116795;a:1:{s:32:\"caldera_forms_tracking_send_rows\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525116796;a:1:{s:32:\"caldera_forms_tracking_send_rows\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525125600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525132800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}i:1525138101;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1525164443;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525174653;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525181301;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1500322147;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'CF_DB', '5', 'yes'),
(152, 'widget_caldera_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, '_calderaforms_lastupdate', '1.5.2.1', 'yes'),
(155, '_caldera_forms_styleincludes', 'a:3:{s:5:\"alert\";b:1;s:4:\"form\";b:1;s:4:\"grid\";b:1;}', 'yes'),
(156, '_caldera_forms_forms', 'a:1:{s:15:\"CF596d115ed71c8\";s:15:\"CF596d115ed71c8\";}', 'no'),
(157, 'CF596d115ed71c8', 'a:21:{s:13:\"_last_updated\";s:31:\"Mon, 17 Jul 2017 19:45:11 +0000\";s:2:\"ID\";s:15:\"CF596d115ed71c8\";s:10:\"cf_version\";s:7:\"1.5.2.1\";s:4:\"name\";s:13:\"Réservations\";s:10:\"scroll_top\";i:1;s:11:\"description\";s:7:\"             \";s:7:\"success\";s:64:\"Le formulaire a été envoyé. Merci pour votre contribution.      \";s:10:\"db_support\";i:1;s:6:\"pinned\";i:0;s:9:\"hide_form\";i:1;s:11:\"check_honey\";i:1;s:12:\"avatar_field\";s:0:\"\";s:9:\"form_ajax\";i:1;s:15:\"custom_callback\";s:0:\"\";s:11:\"layout_grid\";a:2:{s:6:\"fields\";a:9:{s:10:\"fld_185917\";s:3:\"1:1\";s:11:\"fld_6892512\";s:3:\"1:2\";s:11:\"fld_2254781\";s:3:\"2:1\";s:11:\"fld_7900587\";s:3:\"2:1\";s:11:\"fld_4295127\";s:3:\"3:1\";s:11:\"fld_6496615\";s:3:\"4:1\";s:11:\"fld_5630664\";s:3:\"4:2\";s:11:\"fld_4089741\";s:3:\"5:1\";s:11:\"fld_7167496\";s:3:\"5:1\";}s:9:\"structure\";s:19:\"6:6|12|12|6:6|12|12\";}s:6:\"fields\";a:9:{s:10:\"fld_185917\";a:8:{s:2:\"ID\";s:10:\"fld_185917\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:7:\"Prénom\";s:4:\"slug\";s:6:\"prenom\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:8:\"required\";i:1;s:7:\"caption\";s:0:\"\";s:6:\"config\";a:5:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"type_override\";s:4:\"text\";s:4:\"mask\";s:0:\"\";}}s:11:\"fld_6892512\";a:8:{s:2:\"ID\";s:11:\"fld_6892512\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:3:\"Nom\";s:4:\"slug\";s:3:\"nom\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:8:\"required\";i:1;s:7:\"caption\";s:0:\"\";s:6:\"config\";a:5:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"type_override\";s:4:\"text\";s:4:\"mask\";s:0:\"\";}}s:11:\"fld_2254781\";a:9:{s:2:\"ID\";s:11:\"fld_2254781\";s:4:\"type\";s:12:\"phone_better\";s:5:\"label\";s:22:\"Numéro de téléphone\";s:4:\"slug\";s:16:\"numero_telephone\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:8:\"required\";i:1;s:7:\"caption\";s:0:\"\";s:10:\"entry_list\";i:1;s:6:\"config\";a:4:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:12:\"nationalMode\";s:2:\"on\";}}s:11:\"fld_7900587\";a:8:{s:2:\"ID\";s:11:\"fld_7900587\";s:4:\"type\";s:5:\"email\";s:5:\"label\";s:13:\"Adresse Email\";s:4:\"slug\";s:13:\"adresse_email\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:8:\"required\";i:1;s:7:\"caption\";s:0:\"\";s:6:\"config\";a:3:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";}}s:11:\"fld_6496615\";a:8:{s:2:\"ID\";s:11:\"fld_6496615\";s:4:\"type\";s:6:\"number\";s:5:\"label\";s:16:\"Nombre d\'adultes\";s:4:\"slug\";s:15:\"nombre_dadultes\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:8:\"required\";i:1;s:7:\"caption\";s:0:\"\";s:6:\"config\";a:6:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";i:1;s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:4:\"step\";i:1;}}s:11:\"fld_5630664\";a:7:{s:2:\"ID\";s:11:\"fld_5630664\";s:4:\"type\";s:6:\"number\";s:5:\"label\";s:16:\"Nombre d\'enfants\";s:4:\"slug\";s:15:\"nombre_denfants\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:7:\"caption\";s:0:\"\";s:6:\"config\";a:6:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";i:0;s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";i:1;}}s:11:\"fld_4089741\";a:7:{s:2:\"ID\";s:11:\"fld_4089741\";s:4:\"type\";s:9:\"paragraph\";s:5:\"label\";s:12:\"Commentaires\";s:4:\"slug\";s:12:\"commentaires\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:7:\"caption\";s:79:\"Y a-t-il des allergies ? Vos enfants ne mangent pas de tout ? Dites-nous tout !\";s:6:\"config\";a:4:{s:12:\"custom_class\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"rows\";i:4;s:7:\"default\";s:0:\"\";}}s:11:\"fld_7167496\";a:7:{s:2:\"ID\";s:11:\"fld_7167496\";s:4:\"type\";s:6:\"button\";s:5:\"label\";s:6:\"Submit\";s:4:\"slug\";s:6:\"submit\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:7:\"caption\";s:0:\"\";s:6:\"config\";a:4:{s:12:\"custom_class\";s:0:\"\";s:4:\"type\";s:6:\"submit\";s:5:\"class\";s:15:\"btn btn-default\";s:6:\"target\";s:0:\"\";}}s:11:\"fld_4295127\";a:7:{s:2:\"ID\";s:11:\"fld_4295127\";s:4:\"type\";s:11:\"date_picker\";s:5:\"label\";s:4:\"Date\";s:4:\"slug\";s:4:\"date\";s:10:\"conditions\";a:1:{s:4:\"type\";s:0:\"\";}s:7:\"caption\";s:41:\"À quelle date souhaitez-vous picniquer ?\";s:6:\"config\";a:7:{s:12:\"custom_class\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"format\";s:10:\"yyyy-mm-dd\";s:10:\"start_view\";s:5:\"month\";s:10:\"start_date\";s:0:\"\";s:8:\"end_date\";s:0:\"\";s:8:\"language\";s:0:\"\";}}}s:10:\"page_names\";a:1:{i:0;s:6:\"Page 1\";}s:6:\"mailer\";a:9:{s:9:\"on_insert\";i:1;s:11:\"sender_name\";s:29:\"Notification de Caldera Forms\";s:12:\"sender_email\";s:22:\"lasoupe@agencemyso.com\";s:8:\"reply_to\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";s:10:\"recipients\";s:0:\"\";s:6:\"bcc_to\";s:0:\"\";s:13:\"email_subject\";s:13:\"Réservations\";s:13:\"email_message\";s:9:\"{summary}\";}s:18:\"conditional_groups\";a:1:{s:15:\"_open_condition\";s:0:\"\";}s:8:\"settings\";a:1:{s:10:\"responsive\";a:1:{s:11:\"break_point\";s:2:\"sm\";}}s:7:\"version\";s:7:\"1.5.2.1\";}', 'yes'),
(163, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1500327959;s:7:\"version\";s:3:\"4.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(173, 'current_theme', '', 'yes'),
(174, 'theme_mods_Agence Myso', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1500322141;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(176, 'theme_mods_lesdejsurlherbe', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:18;s:11:\"menu_footer\";i:24;}}', 'yes'),
(328, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"lasoupe@agencemyso.com\";s:7:\"version\";s:5:\"4.8.6\";s:9:\"timestamp\";i:1523537650;}', 'no'),
(359, 'acf_version', '4.4.12', 'yes'),
(383, 'category_children', 'a:0:{}', 'yes'),
(384, 'flamingo_inbound_channel_children', 'a:1:{i:2;a:1:{i:0;i:3;}}', 'yes'),
(465, 'woocommerce_store_address', 'Lourmarin', 'yes'),
(466, 'woocommerce_store_address_2', '', 'yes'),
(467, 'woocommerce_store_city', 'Lourmarin', 'yes'),
(468, 'woocommerce_default_country', 'FR', 'yes'),
(469, 'woocommerce_store_postcode', '84160', 'yes'),
(470, 'woocommerce_allowed_countries', 'all', 'yes'),
(471, 'woocommerce_all_except_countries', '', 'yes'),
(472, 'woocommerce_specific_allowed_countries', '', 'yes'),
(473, 'woocommerce_ship_to_countries', '', 'yes'),
(474, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(475, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(476, 'woocommerce_calc_taxes', 'no', 'yes'),
(477, 'woocommerce_currency', 'EUR', 'yes'),
(478, 'woocommerce_currency_pos', 'right', 'yes'),
(479, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(480, 'woocommerce_price_decimal_sep', ',', 'yes'),
(481, 'woocommerce_price_num_decimals', '2', 'yes'),
(482, 'woocommerce_shop_page_id', '69', 'yes'),
(483, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(484, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(485, 'woocommerce_weight_unit', 'kg', 'yes'),
(486, 'woocommerce_dimension_unit', 'cm', 'yes'),
(487, 'woocommerce_enable_reviews', 'no', 'yes'),
(488, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(489, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(490, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(491, 'woocommerce_review_rating_required', 'yes', 'no'),
(492, 'woocommerce_manage_stock', 'no', 'yes'),
(493, 'woocommerce_hold_stock_minutes', '60', 'no'),
(494, 'woocommerce_notify_low_stock', 'yes', 'no'),
(495, 'woocommerce_notify_no_stock', 'yes', 'no'),
(496, 'woocommerce_stock_email_recipient', 'lasoupe@agencemyso.com', 'no'),
(497, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(498, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(499, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(500, 'woocommerce_stock_format', 'no_amount', 'yes'),
(501, 'woocommerce_file_download_method', 'force', 'no'),
(502, 'woocommerce_downloads_require_login', 'no', 'no'),
(503, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(504, 'woocommerce_prices_include_tax', 'no', 'yes'),
(505, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(506, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(507, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(508, 'woocommerce_tax_classes', 'Taux réduit\nTaux Zéro', 'yes'),
(509, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(510, 'woocommerce_tax_display_cart', 'excl', 'no'),
(511, 'woocommerce_price_display_suffix', '', 'yes'),
(512, 'woocommerce_tax_total_display', 'itemized', 'no'),
(513, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(514, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(515, 'woocommerce_ship_to_destination', 'billing', 'no'),
(516, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(517, 'woocommerce_enable_coupons', 'no', 'yes'),
(518, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(519, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(520, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(521, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(522, 'woocommerce_cart_page_id', '70', 'yes'),
(523, 'woocommerce_checkout_page_id', '71', 'yes'),
(524, 'woocommerce_terms_page_id', '', 'no'),
(525, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(526, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(527, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(528, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(529, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(530, 'woocommerce_myaccount_page_id', '72', 'yes'),
(531, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(532, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(533, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(534, 'woocommerce_registration_generate_username', 'yes', 'no'),
(535, 'woocommerce_registration_generate_password', 'no', 'no'),
(536, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(537, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(538, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(539, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(540, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(541, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(542, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(543, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(544, 'woocommerce_email_from_name', 'Les déjeuners sur l&#039;herbe', 'no'),
(545, 'woocommerce_email_from_address', 'lasoupe@agencemyso.com', 'no'),
(546, 'woocommerce_email_header_image', '', 'no'),
(547, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(548, 'woocommerce_email_base_color', '#96588a', 'no'),
(549, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(550, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(551, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(552, 'woocommerce_api_enabled', 'yes', 'yes'),
(553, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(554, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(555, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(556, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(558, 'default_product_cat', '17', 'yes'),
(561, 'woocommerce_version', '3.3.5', 'yes'),
(562, 'woocommerce_db_version', '3.3.5', 'yes'),
(563, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(564, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(565, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(566, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(567, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(568, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(569, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(570, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(571, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(572, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(573, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(574, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(575, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(576, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(578, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(579, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(582, 'woocommerce_product_type', 'physical', 'yes'),
(583, 'woocommerce_sell_in_person', '1', 'yes'),
(584, 'woocommerce_allow_tracking', 'yes', 'yes'),
(585, 'woocommerce_tracker_last_send', '1524835745', 'yes'),
(587, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";s:22:\"lasoupe@agencemyso.com\";}', 'yes'),
(589, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:22:\"lasoupe@agencemyso.com\";}', 'yes'),
(590, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(591, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(592, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(593, 'wc_ppec_version', '1.5.3', 'yes'),
(601, '_transient_shipping-transient-version', '1524215950', 'yes'),
(612, '_transient_product_query-transient-version', '1525103480', 'yes'),
(613, 'wc_stripe_show_ssl_notice', 'no', 'yes'),
(614, 'wc_stripe_show_keys_notice', 'no', 'yes'),
(615, 'wc_gateway_ppec_bootstrap_warning_message_dismissed', 'yes', 'yes'),
(616, '_transient_product-transient-version', '1525103480', 'yes'),
(641, 'woocommerce_thumbnail_image_width', '0', 'yes'),
(642, 'woocommerce_maybe_regenerate_images_hash', '085be593f59532191419f2147ccb0d83', 'yes'),
(661, 'woocommerce_catalog_columns', '1', 'yes'),
(662, 'woocommerce_catalog_rows', '100', 'yes'),
(663, 'woocommerce_thumbnail_cropping', 'uncropped', 'yes'),
(682, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(701, 'woocommerce_tracker_ua', 'a:3:{i:0;s:121:\"mozilla/5.0 (macintosh; intel mac os x 10_13_4) applewebkit/537.36 (khtml, like gecko) chrome/65.0.3325.181 safari/537.36\";i:1;s:121:\"mozilla/5.0 (macintosh; intel mac os x 10_13_4) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.117 safari/537.36\";i:2;s:82:\"mozilla/5.0 (macintosh; intel mac os x 10.13; rv:59.0) gecko/20100101 firefox/59.0\";}', 'yes'),
(749, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(763, 'wc_stripe_version', '4.1.1', 'yes'),
(810, '_transient_timeout_wc_shipping_method_count_1_1524215950', '1526807956', 'no'),
(811, '_transient_wc_shipping_method_count_1_1524215950', '1', 'no'),
(812, '_transient_timeout_wc_shipping_method_count_0_1524215950', '1526808034', 'no'),
(813, '_transient_wc_shipping_method_count_0_1524215950', '1', 'no'),
(814, 'woocommerce_gateway_order', 'a:15:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:6:\"stripe\";i:4;s:11:\"stripe_sepa\";i:5;s:17:\"stripe_bancontact\";i:6;s:13:\"stripe_sofort\";i:7;s:14:\"stripe_giropay\";i:8;s:10:\"stripe_eps\";i:9;s:12:\"stripe_ideal\";i:10;s:10:\"stripe_p24\";i:11;s:13:\"stripe_alipay\";i:12;s:14:\"stripe_bitcoin\";i:13;s:17:\"stripe_multibanco\";i:14;}', 'yes'),
(833, '_site_transient_timeout_browser_8cbcc8c29147223f61dce1198d00ef94', '1525155647', 'no'),
(834, '_site_transient_browser_8cbcc8c29147223f61dce1198d00ef94', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.117\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(864, '_site_transient_timeout_browser_41ae052b7cb95d34944d8bb4821ad6cc', '1525202884', 'no');
INSERT INTO `ldsl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(865, '_site_transient_browser_41ae052b7cb95d34944d8bb4821ad6cc', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"59.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(941, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(971, '_transient_timeout_external_ip_address_::1', '1525417074', 'no'),
(972, '_transient_external_ip_address_::1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(997, '_site_transient_timeout_theme_roots', '1525103465', 'no'),
(998, '_site_transient_theme_roots', 'a:4:{s:15:\"lesdejsurlherbe\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1001, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1525101674;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(1002, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1525101675;s:7:\"checked\";a:4:{s:15:\"lesdejsurlherbe\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1003, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1525101676;s:7:\"checked\";a:11:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.0.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:30:\"caldera-forms/caldera-core.php\";s:5:\"1.6.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:21:\"flamingo/flamingo.php\";s:3:\"1.8\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.15\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.5\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.5.3\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.1.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:1:{s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1799707\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1799707\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1799707\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1799707\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"caldera-forms/caldera-core.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/caldera-forms\";s:4:\"slug\";s:13:\"caldera-forms\";s:6:\"plugin\";s:30:\"caldera-forms/caldera-core.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/caldera-forms/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/caldera-forms.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/caldera-forms/assets/icon-256x256.png?rev=1522173\";s:2:\"1x\";s:66:\"https://ps.w.org/caldera-forms/assets/icon-128x128.png?rev=1522173\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/caldera-forms/assets/banner-1544x500.png?rev=1657327\";s:2:\"1x\";s:68:\"https://ps.w.org/caldera-forms/assets/banner-772x250.png?rev=1657327\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.5.3\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wordpress-importer_5696b3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1004, '_transient_timeout_wc_report_sales_by_date', '1525188154', 'no'),
(1005, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"c290ce0b659c216d40bdcbd7812827a6\";a:0:{}s:32:\"3709c83d075a18d43b615d2b865c0d77\";a:0:{}s:32:\"59fdb05cf5c5753ec26b39a97d296518\";a:0:{}s:32:\"201089e6b0df2d833ac2aabf71f16e16\";N;s:32:\"1b411dc268c1dee2d82817eb3357bd9f\";a:0:{}s:32:\"e52b9d515fe64ae2e59e4502bec59b78\";a:0:{}s:32:\"2bf995ed64e73062961d3a0c5b3ee049\";a:0:{}s:32:\"6e3c394add44416deca62778513a59bb\";a:0:{}}', 'no'),
(1006, '_transient_timeout_wc_admin_report', '1525188154', 'no'),
(1007, '_transient_wc_admin_report', 'a:1:{s:32:\"598b16cbc713d1d2b83d427914fab1f8\";a:0:{}}', 'no'),
(1008, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1525144959', 'no');
INSERT INTO `ldsl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1009, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Apr 2018 15:17:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"MoUTJzS4E+QzGfjMNCnr56T43Ss\";s:13:\"last-modified\";s:29:\"Mon, 30 Apr 2018 15:17:55 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 30 Apr 2018 15:22:39 GMT\";s:7:\"expires\";s:29:\"Mon, 30 Apr 2018 15:22:39 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130911020210\";}', 'no');
INSERT INTO `ldsl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1010, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1525144959', 'no'),
(1011, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1525101759', 'no'),
(1012, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1525144959', 'no'),
(1013, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTECH et Les French Days = -20% ce jour sur les entrées WPNDIGITAL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/fYC57Ag_Hdo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://www.wpnormandie.fr/wptech-et-les-french-days-20-sur-les-entrees-wpndigital-ce-jour/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 22:05:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:369:\"\n		        Si vous êtes un fan de WordPress, alors vous êtes sûrement au courant que le WPTECH ouvre ses portes aujourd’hui à Lyon. Peut-être même que vous lisez cet article depuis Lyon dans les allées de ce RDV. Pour fêter cet événement, nous avons décidé de vous faire profiter d’une offre exceptionnelle valable uniquement ce jour [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:439:\"Si vous êtes un fan de WordPress, alors vous êtes sûrement au courant que le WPTECH ouvre ses portes aujourd’hui à Lyon. Peut-être même que vous lisez cet article depuis Lyon dans les allées de ce RDV. Pour fêter cet événement, nous avons décidé de vous faire profiter d’une offre exceptionnelle valable uniquement ce jour [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/fYC57Ag_Hdo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://www.wpnormandie.fr/wptech-et-les-french-days-20-sur-les-entrees-wpndigital-ce-jour/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le programme officiel du salon WPNDIGITAL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Mxscz7p3hgQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.wpnormandie.fr/le-programme-officiel-du-salon-wpndigital/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:33:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:382:\"\n		        Votre patience va être récompensée, nous sommes heureux de vous annoncer le programme officiel du salon WPNDIGITAL ! Pour notre 1ère édition, qui se déroulera le 2 juin 2018 au Centre des Congrès de Caen, nous vous dévoilons un programme riche, articulé autour d’exposants, de conférences et de tables rondes et réunissant 3 thèmes : le [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:452:\"Votre patience va être récompensée, nous sommes heureux de vous annoncer le programme officiel du salon WPNDIGITAL ! Pour notre 1ère édition, qui se déroulera le 2 juin 2018 au Centre des Congrès de Caen, nous vous dévoilons un programme riche, articulé autour d’exposants, de conférences et de tables rondes et réunissant 3 thèmes : le [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Mxscz7p3hgQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.wpnormandie.fr/le-programme-officiel-du-salon-wpndigital/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"AMP pour WordPress : 0.7 RC 1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/YtWdVSyVQag/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://www.wpnormandie.fr/amp-pour-wordpress-0-7-rc-1-released/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 19:55:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:409:\"\n		        Automattic et l&#8217;équipe AMP de Google ont publié 0.7 Release Candidate 1 (RC1) du plugin AMP pour WordPress. Cette RC1 est une version majeure qui contient de nouvelles fonctionnalités significatives. Cette version ajoute la prise en charge AMP native pour tous les widgets, les « embeds » et commentaires par défaut. Les notifications seront déclenchées pour les [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:479:\"Automattic et l&#8217;équipe AMP de Google ont publié 0.7 Release Candidate 1 (RC1) du plugin AMP pour WordPress. Cette RC1 est une version majeure qui contient de nouvelles fonctionnalités significatives. Cette version ajoute la prise en charge AMP native pour tous les widgets, les « embeds » et commentaires par défaut. Les notifications seront déclenchées pour les [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/YtWdVSyVQag\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://www.wpnormandie.fr/amp-pour-wordpress-0-7-rc-1-released/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"UpdraftPlus : télécharger des sauvegardes locales vers un stockage distant\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/_lLso6Uryqs/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://www.wpnormandie.fr/updraftplus-telecharger-des-sauvegardes-locales-vers-un-stockage-distant/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 19:22:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:411:\"\n		        La sauvegarde de vos sites WordPress est un élément essentiel. Peut être utilisez vous le plugin UpdraftPlus. Si c&#8217;est le cas vous serez content d&#8217;apprendre que vous pouvez télécharger des sauvegardes locales existantes vers un stockage distant. Il est très important de stocker vos sauvegardes WordPress sur un stockage distant (comme Dropbox) pour se protéger [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:481:\"La sauvegarde de vos sites WordPress est un élément essentiel. Peut être utilisez vous le plugin UpdraftPlus. Si c&#8217;est le cas vous serez content d&#8217;apprendre que vous pouvez télécharger des sauvegardes locales existantes vers un stockage distant. Il est très important de stocker vos sauvegardes WordPress sur un stockage distant (comme Dropbox) pour se protéger [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/_lLso6Uryqs\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://www.wpnormandie.fr/updraftplus-telecharger-des-sauvegardes-locales-vers-un-stockage-distant/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Mon premier WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/gQkNAC8910k/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://www.echodesplugins.li-an.fr/tutoriaux/mon-premier-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 10:06:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"\n		        WordPress (ce n’est pas) pour les nuls		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"WordPress (ce n’est pas) pour les nuls<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/gQkNAC8910k\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://www.echodesplugins.li-an.fr/tutoriaux/mon-premier-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Améliorer le changelog de votre extension\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"http://feedproxy.google.com/~r/wpfr/~3/eqr5rp8aevY/ameliorer-le-changelog-de-votre-extension-97602.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://boiteaweb.fr/ameliorer-le-changelog-de-votre-extension-97602.html\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 14:59:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:442:\"\n		        Je voudrais vous partager un code que j&#8217;ai fait pour SecuPress, pour modifier la façon dont le changelog est affiché. Je parle de la boite qui s&#8217;ouvre quand on clique sur « Voir les détails de la version x.x » quand une mise à jour est disponible. Popup du changelog SecuPress Cet article est donc non seulement&#160;…\nThe post Améliorer le changelog de votre extension appeared first on BoiteAWeb.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:679:\"<p>Je voudrais vous partager un code que j&#8217;ai fait pour SecuPress, pour modifier la façon dont le changelog est affiché. Je parle de la boite qui s&#8217;ouvre quand on clique sur « Voir les détails de la version x.x » quand une mise à jour est disponible. Popup du changelog SecuPress Cet article est donc non seulement&#160;…</p>\n<p>The post <a rel=\"nofollow\" href=\"https://boiteaweb.fr/ameliorer-le-changelog-de-votre-extension-97602.html\">Améliorer le changelog de votre extension</a> appeared first on <a rel=\"nofollow\" href=\"https://boiteaweb.fr\">BoiteAWeb</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/eqr5rp8aevY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://boiteaweb.fr/ameliorer-le-changelog-de-votre-extension-97602.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"L’ultime liste des plugins WordPress Made in France !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/QvkutwYe-1g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpformation.com/plugins-wordpress-made-in-france/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 06:45:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:636:\"\n		        Savez-vous que la France n&#8217;excelle pas uniquement dans la production de vin et de fromage ? Vous n&#8217;imaginez peut-être pas que la France regorge de développeurs qui s&#8217;investissent dans la communauté WordPress. Certains de ces plugins, vous les connaissez déjà, vous les utilisez peut-être sans même savoir que derrière, c&#8217;est une équipe de développeurs français. [&#8230;]\n\nL’article L&#8217;ultime liste des plugins WordPress Made in France ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1498:\"<p><img width=\"1200\" height=\"800\" src=\"https://wpformation.com/wp-content/uploads/2018/04/liste-plugins-made-in-france.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"La liste des plugins Made in France\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Savez-vous que la France n&#8217;excelle pas uniquement dans la production de vin et de fromage ? Vous n&#8217;imaginez peut-être pas que la France regorge de développeurs qui s&#8217;investissent dans la communauté WordPress. Certains de ces plugins, vous les connaissez déjà, vous les utilisez peut-être sans même savoir que derrière, c&#8217;est une équipe de développeurs français. [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/plugins-wordpress-made-in-france/\">L&#8217;ultime liste des plugins WordPress Made in France !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/QvkutwYe-1g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpformation.com/plugins-wordpress-made-in-france/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Accéder à la liste des modules Jetpack par WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/xrWz_3r69kE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wpchannel.com/wordpress/tutoriels-wordpress/acceder-a-liste-modules-jetpack-wordpress-com/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 06:30:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:474:\"\n		        Jetpack par WordPress.com est une extension pour WordPress proposée à l&#8217;origine pour la plateforme commerciale wordpress.com qui incorpore de nombreux modules plus ou moins utiles. Avec la disparition de la liste complète des modules Jetpack, il reste un moyen d&#8217;accéder à celle-ci afin d&#8217;obtenir une vue simple des modules actifs ou inactifs. Rendez-vous dans Jetpack puis Réglages et descendez en bas de page. Cliquez [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:742:\"<div class=\"post-thumbnail\"><img width=\"508\" height=\"300\" src=\"https://wpchannel.com/images/2018/04/patrouille-aerienne-508x300.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Jetpack par WordPress.com est une extension pour WordPress proposée à l&#8217;origine pour la plateforme commerciale wordpress.com qui incorpore de nombreux modules plus ou moins utiles. Avec la disparition de la liste complète des modules Jetpack, il reste un moyen d&#8217;accéder à celle-ci afin d&#8217;obtenir une vue simple des modules actifs ou inactifs. Rendez-vous dans Jetpack puis Réglages et descendez en bas de page. Cliquez [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/xrWz_3r69kE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wpchannel.com/wordpress/tutoriels-wordpress/acceder-a-liste-modules-jetpack-wordpress-com/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"u9/qdOIQRpyTT/u1obBMviPzpok\";s:13:\"last-modified\";s:29:\"Mon, 30 Apr 2018 15:02:47 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 30 Apr 2018 15:22:39 GMT\";s:7:\"expires\";s:29:\"Mon, 30 Apr 2018 15:22:39 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130911020210\";}', 'no'),
(1014, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1525144959', 'no'),
(1015, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1525101759', 'no'),
(1016, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1525144959', 'no'),
(1017, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1525144959', 'no'),
(1018, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/fYC57Ag_Hdo/\'>WPTECH et Les French Days = -20% ce jour sur les entrées WPNDIGITAL</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Mxscz7p3hgQ/\'>Le programme officiel du salon WPNDIGITAL</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/YtWdVSyVQag/\'>AMP pour WordPress : 0.7 RC 1 Released</a></li></ul></div>', 'no'),
(1019, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Retreat Soltau\";s:3:\"url\";s:40:\"https://2018-soltau.retreat.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-05-04 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Soltau, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:53.0016247;s:9:\"longitude\";d:9.8596895;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:36:\"WordPress Meetup Nijmegen 9 mei 2018\";s:3:\"url\";s:66:\"https://www.meetup.com/WordPress-Meetup-Nijmegen/events/248503815/\";s:6:\"meetup\";s:25:\"WordPress Meetup Nijmegen\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/WordPress-Meetup-Nijmegen/\";s:4:\"date\";s:19:\"2018-05-09 19:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Nijmegen, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:51.847889;s:9:\"longitude\";d:5.86838;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:23:\"WordPress Meetup Zwolle\";s:3:\"url\";s:64:\"https://www.meetup.com/Zwolle-WordPress-Meetup/events/248897753/\";s:6:\"meetup\";s:23:\"Zwolle WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/Zwolle-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-05-15 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Zwolle, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:52.508583;s:9:\"longitude\";d:6.093302;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:30:\"15 Years of WordPress picknick\";s:3:\"url\";s:66:\"https://www.meetup.com/WordPress-Meetup-Nijmegen/events/249025857/\";s:6:\"meetup\";s:25:\"WordPress Meetup Nijmegen\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/WordPress-Meetup-Nijmegen/\";s:4:\"date\";s:19:\"2018-05-27 11:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Nijmegen, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:51.828438;s:9:\"longitude\";d:5.839187;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:46:\"🎉Happy WordPress Anniversary! ~ Arnhem 🎉\";s:3:\"url\";s:64:\"https://www.meetup.com/WordPress-Meetup-Arnhem/events/249027286/\";s:6:\"meetup\";s:23:\"WordPress Meetup Arnhem\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/WordPress-Meetup-Arnhem/\";s:4:\"date\";s:19:\"2018-05-27 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Arnhem, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:51.98737;s:9:\"longitude\";d:5.945414;}}}}', 'no'),
(1020, '_transient_timeout_external_ip_address_127.0.0.1', '1525708019', 'no'),
(1021, '_transient_external_ip_address_127.0.0.1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(1023, 'product_cat_children', 'a:1:{i:19;a:2:{i:0;i:25;i:1;i:26;}}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_postmeta`
--

CREATE TABLE `ldsl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_postmeta`
--

INSERT INTO `ldsl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_form', '<div class=\"formulaire-first-part\">\n<label>[text* your-name placeholder \"Nom\"] </label><label>[text* your-firstname placeholder \"Prénom\"] </label><label>[email* your-email placeholder \"Email\"] </label><label>[tel* tel-38 placeholder \"Numéro de téléphone\"]</label>\n</div>\n\n<label> Choisissez votre date : \n[date date-22]</label>\n\n<label> Lieu de livraison : \n[textarea* textarea-383 placeholder \"Merci d\'être le plus précis possible...\"]</label>\n\n<div class=\"menus\">\n<div class=\"menu1\">\n<label> Choisissez un menu : \n[select menu-86 \"Rando\" \"Made in Provence\" \"En amoureux\" \"Prestige\" \"Apéro champêtre\" \"Bento Pitchoun\"]</label><label> Pour [number number-87 min:2 \"2\"] personnes</label>\n</div>\n[checkbox checkbox-99 \"Ajouter un menu ?\"]\n\n[group group-892]\n<div class=\"menu2\">\n<label> Choisissez un menu : \n[select menu-87 \"Rando\" \"Made in Provence\" \"En amoureux\" \"Prestige\" \"Apéro champêtre\" \"Bento Pitchoun\"]</label><label> Pour [number number-88 min:2 \"2\"] personnes</label>\n</div>\n[checkbox checkbox-100 \"Ajouter un menu ?\"]\n\n[group group-893]\n<div class=\"menu3\">\n<label> Choisissez un menu : \n[select menu-88 \"Bento Pitchoun\"]</label><label> Pour [number number-89 min:1] enfant(s)</label>\n</div>\n[/group]\n[/group]\n</div>\n\n\n<label> \nUne allergie ? Une demande particulière ? Vous souhaitez ajouter une boisson ? N\'hésitez pas à nous laisser un message : </label>\n\n<label> [textarea your-message placeholder \"Votre message...\"] </label>\n\n[submit \"Envoyer\"]'),
(3, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:43:\"Les déjeuners sur l\'herbe \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <lasoupe@agencemyso.com>\";s:9:\"recipient\";s:22:\"lasoupe@agencemyso.com\";s:4:\"body\";s:290:\"De : [your-firstname] [your-name] <[your-email]>\n\nDate : [date-22]\nAdultes : [number-469]\nEnfants : [number-470]\nChoix de la formule : [menu-86]\n\n[your-message]\n-- \nCet e-mail a été envoyé via le formulaire de contact de Les déjeuners sur l\'herbe (http://localhost:8888/lesdejsurlherbe)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:43:\"Les déjeuners sur l\'herbe \"[your-subject]\"\";s:6:\"sender\";s:51:\"Les déjeuners sur l\'herbe <lasoupe@agencemyso.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:169:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Les déjeuners sur l&#039;herbe (http://localhost:8888/lesdejsurlherbe)\";s:18:\"additional_headers\";s:32:\"Reply-To: lasoupe@agencemyso.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:75:\"Vous devez accepter les termes et conditions avant d\'envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:73:\"Une erreur inconnue s’est produite lors de la mise en ligne du fichier.\";s:24:\"upload_file_type_invalid\";s:67:\"Vous n’êtes pas autorisé à mettre en ligne ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:64:\"Une erreur s’est produite lors de la mise en ligne du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:39:\"Le numéro de téléphone est invalide.\";}'),
(6, 5, '_additional_settings', ''),
(7, 5, '_locale', 'fr_FR'),
(8, 2, '_edit_lock', '1524729085:2'),
(9, 2, '_edit_last', '2'),
(18, 32, '_email', 'lasoupe@agencemyso.com'),
(19, 32, '_name', 'Agence Myso'),
(20, 32, '_props', 'a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}'),
(21, 32, '_last_contacted', '2017-07-22 10:40:42'),
(26, 34, '_email', 'julientora@gmail.com'),
(27, 34, '_name', 'Tora'),
(28, 34, '_props', 'a:0:{}'),
(29, 34, '_last_contacted', '2017-07-22 10:42:14'),
(30, 35, '_subject', '[your-subject]'),
(31, 35, '_from', 'Tora <julientora@gmail.com>'),
(32, 35, '_from_name', 'Tora'),
(33, 35, '_from_email', 'julientora@gmail.com'),
(34, 35, '_field_your-name', 'Tora'),
(35, 35, '_field_your-firstname', 'Julien'),
(36, 35, '_field_your-email', 'julientora@gmail.com'),
(37, 35, '_field_number-469', '2'),
(38, 35, '_field_number-470', '1'),
(39, 35, '_field_date-22', '2017-07-26'),
(40, 35, '_field_menu-86', 'formule 3'),
(41, 35, '_field_your-message', 'Hola que tal ?'),
(42, 35, '_fields', 'a:8:{s:9:\"your-name\";N;s:14:\"your-firstname\";N;s:10:\"your-email\";N;s:10:\"number-469\";N;s:10:\"number-470\";N;s:7:\"date-22\";N;s:7:\"menu-86\";N;s:12:\"your-message\";N;}'),
(43, 35, '_meta', 'a:11:{s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:3:\"url\";s:38:\"http://localhost:8888/lesdejsurlherbe/\";s:4:\"date\";s:15:\"22 juillet 2017\";s:4:\"time\";s:11:\"10 h 42 min\";s:7:\"post_id\";s:0:\"\";s:9:\"post_name\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:8:\"post_url\";s:0:\"\";s:11:\"post_author\";s:0:\"\";s:17:\"post_author_email\";s:0:\"\";}'),
(44, 35, '_akismet', NULL),
(47, 43, '_edit_last', '1'),
(49, 43, 'position', 'normal'),
(50, 43, 'layout', 'no_box'),
(51, 43, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(52, 43, '_edit_lock', '1523539516:1'),
(63, 44, 'menus_0_menu', '<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(64, 44, '_menus_0_menu', 'field_59a53d85cbdb9'),
(65, 44, 'menus_1_menu', '<h3>Menu « Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />\r\n\r\n&nbsp;'),
(66, 44, '_menus_1_menu', 'field_59a53d85cbdb9'),
(67, 44, 'menus_2_menu', '<h3>Menu « en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(68, 44, '_menus_2_menu', 'field_59a53d85cbdb9'),
(69, 44, 'menus_3_menu', '<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(70, 44, '_menus_3_menu', 'field_59a53d85cbdb9'),
(71, 44, 'menus_4_menu', '<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />\r\n\r\n&nbsp;'),
(72, 44, '_menus_4_menu', 'field_59a53d85cbdb9'),
(73, 44, 'menus_5_menu', '<h3>Menu «Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(74, 44, '_menus_5_menu', 'field_59a53d85cbdb9'),
(75, 44, 'menus', '6'),
(76, 44, '_menus', 'field_59a537ae1a70a'),
(77, 2, 'menus_0_menu', '<h2>« Rando »</h2>\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(78, 2, '_menus_0_menu', 'field_59a53d85cbdb9'),
(79, 2, 'menus_1_menu', '<h2>« Made in Provence »</h2>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(80, 2, '_menus_1_menu', 'field_59a53d85cbdb9'),
(81, 2, 'menus_2_menu', '<h2>« En amoureux »</h2>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(82, 2, '_menus_2_menu', 'field_59a53d85cbdb9'),
(83, 2, 'menus_3_menu', '<h2>« Prestige »</h2>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(84, 2, '_menus_3_menu', 'field_59a53d85cbdb9'),
(85, 2, 'menus_4_menu', '<h2>« Apéro Champêtre »</h2>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(86, 2, '_menus_4_menu', 'field_59a53d85cbdb9'),
(87, 2, 'menus_5_menu', '<h2>«Bento pitchoun »</h2>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(88, 2, '_menus_5_menu', 'field_59a53d85cbdb9'),
(89, 2, 'menus', '6'),
(90, 2, '_menus', 'field_59a537ae1a70a'),
(91, 45, 'menus_0_menu', '<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(92, 45, '_menus_0_menu', 'field_59a53d85cbdb9'),
(93, 45, 'menus_1_menu', '<h3>Menu « Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />\r\n\r\n&nbsp;'),
(94, 45, '_menus_1_menu', 'field_59a53d85cbdb9'),
(95, 45, 'menus_2_menu', '<h3>Menu « en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(96, 45, '_menus_2_menu', 'field_59a53d85cbdb9'),
(97, 45, 'menus_3_menu', '<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(98, 45, '_menus_3_menu', 'field_59a53d85cbdb9'),
(99, 45, 'menus_4_menu', '<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />\r\n\r\n&nbsp;'),
(100, 45, '_menus_4_menu', 'field_59a53d85cbdb9'),
(101, 45, 'menus_5_menu', '<h3>Menu «Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(102, 45, '_menus_5_menu', 'field_59a53d85cbdb9'),
(103, 45, 'menus', '6'),
(104, 45, '_menus', 'field_59a537ae1a70a'),
(106, 46, 'menus_0_menu', '<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(107, 46, '_menus_0_menu', 'field_59a53d85cbdb9'),
(108, 46, 'menus_1_menu', '<h3>Menu « Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />\r\n\r\n&nbsp;'),
(109, 46, '_menus_1_menu', 'field_59a53d85cbdb9'),
(110, 46, 'menus_2_menu', '<h3>Menu « en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(111, 46, '_menus_2_menu', 'field_59a53d85cbdb9'),
(112, 46, 'menus_3_menu', '<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(113, 46, '_menus_3_menu', 'field_59a53d85cbdb9'),
(114, 46, 'menus_4_menu', '<h3>Menu « Apéro Champêtre » 18 euros</h3>\r\n<h6>(4 personnes minimum)</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />\r\n\r\n&nbsp;'),
(115, 46, '_menus_4_menu', 'field_59a53d85cbdb9'),
(116, 46, 'menus_5_menu', '<h3>Menu «Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(117, 46, '_menus_5_menu', 'field_59a53d85cbdb9'),
(118, 46, 'menus', '6'),
(119, 46, '_menus', 'field_59a537ae1a70a'),
(120, 47, 'menus_0_menu', '<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(121, 47, '_menus_0_menu', 'field_59a53d85cbdb9'),
(122, 47, 'menus_1_menu', '<h3>Menu « Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />\r\n\r\n&nbsp;'),
(123, 47, '_menus_1_menu', 'field_59a53d85cbdb9'),
(124, 47, 'menus_2_menu', '<h3>Menu « en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(125, 47, '_menus_2_menu', 'field_59a53d85cbdb9'),
(126, 47, 'menus_3_menu', '<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />\r\n\r\n&nbsp;'),
(127, 47, '_menus_3_menu', 'field_59a53d85cbdb9'),
(128, 47, 'menus_4_menu', '<h3>Menu « Apéro Champêtre » 18 euros</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />\r\n\r\n&nbsp;'),
(129, 47, '_menus_4_menu', 'field_59a53d85cbdb9'),
(130, 47, 'menus_5_menu', '<h3>Menu «Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(131, 47, '_menus_5_menu', 'field_59a53d85cbdb9'),
(132, 47, 'menus', '6'),
(133, 47, '_menus', 'field_59a537ae1a70a'),
(134, 48, 'menus_0_menu', '<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(135, 48, '_menus_0_menu', 'field_59a53d85cbdb9'),
(136, 48, 'menus_1_menu', '<h3>Menu « Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(137, 48, '_menus_1_menu', 'field_59a53d85cbdb9'),
(138, 48, 'menus_2_menu', '<h3>Menu « en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(139, 48, '_menus_2_menu', 'field_59a53d85cbdb9'),
(140, 48, 'menus_3_menu', '<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(141, 48, '_menus_3_menu', 'field_59a53d85cbdb9'),
(142, 48, 'menus_4_menu', '<h3>Menu « Apéro Champêtre » 18 euros</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(143, 48, '_menus_4_menu', 'field_59a53d85cbdb9'),
(144, 48, 'menus_5_menu', '<h3>Menu «Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(145, 48, '_menus_5_menu', 'field_59a53d85cbdb9'),
(146, 48, 'menus', '6'),
(147, 48, '_menus', 'field_59a537ae1a70a'),
(148, 49, 'menus_0_menu', '<h3>« Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(149, 49, '_menus_0_menu', 'field_59a53d85cbdb9'),
(150, 49, 'menus_1_menu', '<h3>« Made in Provence » 28 euros</h3>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(151, 49, '_menus_1_menu', 'field_59a53d85cbdb9'),
(152, 49, 'menus_2_menu', '<h3>« en amoureux » 30 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(153, 49, '_menus_2_menu', 'field_59a53d85cbdb9'),
(154, 49, 'menus_3_menu', '<h3>« Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(155, 49, '_menus_3_menu', 'field_59a53d85cbdb9'),
(156, 49, 'menus_4_menu', '<h3>« Apéro Champêtre » 18 euros</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(157, 49, '_menus_4_menu', 'field_59a53d85cbdb9'),
(158, 49, 'menus_5_menu', '<h3>«Bento pitchoun » 12 euros</h3>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(159, 49, '_menus_5_menu', 'field_59a53d85cbdb9'),
(160, 49, 'menus', '6'),
(161, 49, '_menus', 'field_59a537ae1a70a'),
(162, 50, 'menus_0_menu', '<h3>« Rando »</h3>\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(163, 50, '_menus_0_menu', 'field_59a53d85cbdb9'),
(164, 50, 'menus_1_menu', '<h3>« Made in Provence »</h3>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(165, 50, '_menus_1_menu', 'field_59a53d85cbdb9'),
(166, 50, 'menus_2_menu', '<h3>« en amoureux »</h3>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(167, 50, '_menus_2_menu', 'field_59a53d85cbdb9'),
(168, 50, 'menus_3_menu', '<h3>« Prestige »</h3>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(169, 50, '_menus_3_menu', 'field_59a53d85cbdb9'),
(170, 50, 'menus_4_menu', '<h3>« Apéro Champêtre »</h3>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(171, 50, '_menus_4_menu', 'field_59a53d85cbdb9'),
(172, 50, 'menus_5_menu', '<h3>«Bento pitchoun »</h3>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(173, 50, '_menus_5_menu', 'field_59a53d85cbdb9'),
(174, 50, 'menus', '6'),
(175, 50, '_menus', 'field_59a537ae1a70a'),
(176, 51, 'menus_0_menu', '<h3>« Rando »</h3>\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(177, 51, '_menus_0_menu', 'field_59a53d85cbdb9'),
(178, 51, 'menus_1_menu', '<h3>« Made in Provence »</h3>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(179, 51, '_menus_1_menu', 'field_59a53d85cbdb9'),
(180, 51, 'menus_2_menu', '<h3>« En amoureux »</h3>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(181, 51, '_menus_2_menu', 'field_59a53d85cbdb9'),
(182, 51, 'menus_3_menu', '<h3>« Prestige »</h3>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(183, 51, '_menus_3_menu', 'field_59a53d85cbdb9'),
(184, 51, 'menus_4_menu', '<h3>« Apéro Champêtre »</h3>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(185, 51, '_menus_4_menu', 'field_59a53d85cbdb9'),
(186, 51, 'menus_5_menu', '<h3>«Bento pitchoun »</h3>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(187, 51, '_menus_5_menu', 'field_59a53d85cbdb9'),
(188, 51, 'menus', '6'),
(189, 51, '_menus', 'field_59a537ae1a70a'),
(190, 52, 'menus_0_menu', '« Rando »\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(191, 52, '_menus_0_menu', 'field_59a53d85cbdb9'),
(192, 52, 'menus_1_menu', '<h2>« Made in Provence »</h2>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(193, 52, '_menus_1_menu', 'field_59a53d85cbdb9'),
(194, 52, 'menus_2_menu', '<h2>« En amoureux »</h2>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(195, 52, '_menus_2_menu', 'field_59a53d85cbdb9'),
(196, 52, 'menus_3_menu', '<h2>« Prestige »</h2>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(197, 52, '_menus_3_menu', 'field_59a53d85cbdb9'),
(198, 52, 'menus_4_menu', '<h2>« Apéro Champêtre »</h2>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(199, 52, '_menus_4_menu', 'field_59a53d85cbdb9'),
(200, 52, 'menus_5_menu', '<h2>«Bento pitchoun »</h2>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(201, 52, '_menus_5_menu', 'field_59a53d85cbdb9'),
(202, 52, 'menus', '6'),
(203, 52, '_menus', 'field_59a537ae1a70a'),
(204, 53, 'menus_0_menu', '<h2>« Rando »</h2>\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(205, 53, '_menus_0_menu', 'field_59a53d85cbdb9'),
(206, 53, 'menus_1_menu', '<h2>« Made in Provence »</h2>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(207, 53, '_menus_1_menu', 'field_59a53d85cbdb9'),
(208, 53, 'menus_2_menu', '<h2>« En amoureux »</h2>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(209, 53, '_menus_2_menu', 'field_59a53d85cbdb9'),
(210, 53, 'menus_3_menu', '<h2>« Prestige »</h2>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(211, 53, '_menus_3_menu', 'field_59a53d85cbdb9'),
(212, 53, 'menus_4_menu', '<h2>« Apéro Champêtre »</h2>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(213, 53, '_menus_4_menu', 'field_59a53d85cbdb9'),
(214, 53, 'menus_5_menu', '<h2>«Bento pitchoun »</h2>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(215, 53, '_menus_5_menu', 'field_59a53d85cbdb9'),
(216, 53, 'menus', '6'),
(217, 53, '_menus', 'field_59a537ae1a70a'),
(220, 43, '_edit_last', '1'),
(221, 43, 'position', 'normal'),
(222, 43, 'layout', 'no_box'),
(223, 43, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(228, 43, '_edit_last', '1'),
(229, 43, 'position', 'normal'),
(230, 43, 'layout', 'no_box'),
(231, 43, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(239, 56, 'menus_0_menu', '<h2>« Rando »</h2>\r\n<h6>- 24 euros -</h6>\r\n<img class=\"alignnone wp-image-27\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"50\" height=\"64\" />'),
(240, 56, '_menus_0_menu', 'field_59a53d85cbdb9'),
(241, 56, 'menus_1_menu', '<h2>« Made in Provence »</h2>\r\n<h6>- 28 euros -</h6>\r\n<img class=\"alignnone wp-image-48\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menumadeinprovence.jpg\" alt=\"\" width=\"35\" height=\"50\" />'),
(242, 56, '_menus_1_menu', 'field_59a53d85cbdb9'),
(243, 56, 'menus_2_menu', '<h2>« En amoureux »</h2>\r\n<h6>- 30 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(244, 56, '_menus_2_menu', 'field_59a53d85cbdb9'),
(245, 56, 'menus_3_menu', '<h2>« Prestige »</h2>\r\n<h6>- 35 euros -</h6>\r\n<img class=\"alignnone wp-image-26 \" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"50\" height=\"53\" />'),
(246, 56, '_menus_3_menu', 'field_59a53d85cbdb9'),
(247, 56, 'menus_4_menu', '<h2>« Apéro Champêtre »</h2>\r\n<h6>- 18 euros -</h6>\r\n<img class=\"alignnone wp-image-25\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"50\" height=\"59\" />'),
(248, 56, '_menus_4_menu', 'field_59a53d85cbdb9'),
(249, 56, 'menus_5_menu', '<h2>«Bento pitchoun »</h2>\r\n<h6>- 12 euros -</h6>\r\n<img class=\"alignnone wp-image-43\" src=\"http://www.lesdejsurlherbe.com/wp-content/uploads/2017/07/menuenfant.jpg\" alt=\"\" width=\"58\" height=\"48\" />'),
(250, 56, '_menus_5_menu', 'field_59a53d85cbdb9'),
(251, 56, 'menus', '6'),
(252, 56, '_menus', 'field_59a537ae1a70a'),
(253, 56, 'boissons', '25'),
(254, 56, '_boissons', 'field_59a5780fb7862'),
(255, 2, 'boissons', '25'),
(256, 2, '_boissons', 'field_59a5780fb7862'),
(261, 59, '_edit_last', '1'),
(262, 59, '_edit_lock', '1523538207:1'),
(263, 61, '_edit_last', '1'),
(264, 61, '_edit_lock', '1523538217:1'),
(265, 63, '_edit_last', '1'),
(266, 63, '_edit_lock', '1523538229:1'),
(267, 65, '_edit_last', '1'),
(268, 65, '_edit_lock', '1523538248:1'),
(272, 43, 'field_5acf5d8cf2bde', 'a:14:{s:3:\"key\";s:19:\"field_5acf5d8cf2bde\";s:5:\"label\";s:0:\"\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(273, 43, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"menu\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(280, 75, '_wc_review_count', '0'),
(281, 75, '_wc_rating_count', 'a:0:{}'),
(282, 75, '_wc_average_rating', '0'),
(283, 75, '_edit_last', '2'),
(284, 75, '_edit_lock', '1524641204:2'),
(285, 75, '_sku', ''),
(286, 75, '_regular_price', '13'),
(287, 75, '_sale_price', ''),
(288, 75, '_sale_price_dates_from', ''),
(289, 75, '_sale_price_dates_to', ''),
(290, 75, 'total_sales', '0'),
(291, 75, '_tax_status', 'taxable'),
(292, 75, '_tax_class', ''),
(293, 75, '_manage_stock', 'no'),
(294, 75, '_backorders', 'no'),
(295, 75, '_sold_individually', 'no'),
(296, 75, '_weight', ''),
(297, 75, '_length', ''),
(298, 75, '_width', ''),
(299, 75, '_height', ''),
(300, 75, '_upsell_ids', 'a:0:{}'),
(301, 75, '_crosssell_ids', 'a:0:{}'),
(302, 75, '_purchase_note', ''),
(303, 75, '_default_attributes', 'a:0:{}'),
(304, 75, '_virtual', 'no'),
(305, 75, '_downloadable', 'no'),
(306, 75, '_product_image_gallery', ''),
(307, 75, '_download_limit', '-1'),
(308, 75, '_download_expiry', '-1'),
(309, 75, '_stock', NULL),
(310, 75, '_stock_status', 'instock'),
(311, 75, '_product_version', '3.3.5'),
(312, 75, '_price', '13'),
(313, 76, '_wc_review_count', '0'),
(314, 76, '_wc_rating_count', 'a:0:{}'),
(315, 76, '_wc_average_rating', '0'),
(316, 76, '_edit_last', '2'),
(317, 76, '_sku', ''),
(318, 76, '_regular_price', '13'),
(319, 76, '_sale_price', ''),
(320, 76, '_sale_price_dates_from', ''),
(321, 76, '_sale_price_dates_to', ''),
(322, 76, 'total_sales', '0'),
(323, 76, '_tax_status', 'taxable'),
(324, 76, '_tax_class', ''),
(325, 76, '_manage_stock', 'no'),
(326, 76, '_backorders', 'no'),
(327, 76, '_sold_individually', 'no'),
(328, 76, '_weight', ''),
(329, 76, '_length', ''),
(330, 76, '_width', ''),
(331, 76, '_height', ''),
(332, 76, '_upsell_ids', 'a:0:{}'),
(333, 76, '_crosssell_ids', 'a:0:{}'),
(334, 76, '_purchase_note', ''),
(335, 76, '_default_attributes', 'a:0:{}'),
(336, 76, '_virtual', 'no'),
(337, 76, '_downloadable', 'no'),
(338, 76, '_product_image_gallery', ''),
(339, 76, '_download_limit', '-1'),
(340, 76, '_download_expiry', '-1'),
(341, 76, '_stock', NULL),
(342, 76, '_stock_status', 'instock'),
(343, 76, '_product_version', '3.3.5'),
(344, 76, '_price', '13'),
(345, 76, '_edit_lock', '1524640259:2'),
(346, 69, '_edit_lock', '1523540249:1'),
(347, 69, '_edit_last', '1'),
(351, 70, '_edit_lock', '1524228501:1'),
(352, 79, '_wp_attached_file', '2018/04/bowl-poulet-au-pistou.jpg'),
(353, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:33:\"2018/04/bowl-poulet-au-pistou.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-2000x1335.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1335;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"bowl-poulet-au-pistou-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-2000x1335.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1335;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"bowl-poulet-au-pistou-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-2000x1500.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:15:\"© ulrike monso\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 76, '_thumbnail_id', '131'),
(355, 80, '_wp_trash_meta_status', 'publish'),
(356, 80, '_wp_trash_meta_time', '1523542939'),
(357, 81, '_wp_trash_meta_status', 'publish'),
(358, 81, '_wp_trash_meta_time', '1523546328'),
(359, 82, '_wp_trash_meta_status', 'publish'),
(360, 82, '_wp_trash_meta_time', '1523546368'),
(370, 84, '_menu_item_type', 'post_type'),
(371, 84, '_menu_item_menu_item_parent', '0'),
(372, 84, '_menu_item_object_id', '69'),
(373, 84, '_menu_item_object', 'page'),
(374, 84, '_menu_item_target', ''),
(375, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 84, '_menu_item_xfn', ''),
(377, 84, '_menu_item_url', ''),
(379, 86, '_edit_last', '2'),
(380, 86, '_edit_lock', '1524728900:2'),
(389, 70, '_edit_last', '1'),
(393, 91, '_menu_item_type', 'post_type'),
(394, 91, '_menu_item_menu_item_parent', '0'),
(395, 91, '_menu_item_object_id', '86'),
(396, 91, '_menu_item_object', 'page'),
(397, 91, '_menu_item_target', ''),
(398, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(399, 91, '_menu_item_xfn', ''),
(400, 91, '_menu_item_url', ''),
(402, 92, '_menu_item_type', 'post_type'),
(403, 92, '_menu_item_menu_item_parent', '0'),
(404, 92, '_menu_item_object_id', '70'),
(405, 92, '_menu_item_object', 'page'),
(406, 92, '_menu_item_target', ''),
(407, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 92, '_menu_item_xfn', ''),
(409, 92, '_menu_item_url', ''),
(411, 43, '_wp_trash_meta_status', 'publish'),
(412, 43, '_wp_trash_meta_time', '1523653315'),
(413, 43, '_wp_desired_post_slug', 'acf_menus'),
(414, 93, '_edit_last', '1'),
(415, 93, '_edit_lock', '1523654490:1'),
(416, 95, '_edit_last', '1'),
(417, 95, 'field_5ad11b00a11cc', 'a:11:{s:3:\"key\";s:19:\"field_5ad11b00a11cc\";s:5:\"label\";s:4:\"logo\";s:4:\"name\";s:4:\"logo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(419, 95, 'position', 'normal'),
(420, 95, 'layout', 'no_box'),
(421, 95, 'hide_on_screen', 'a:5:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";}'),
(422, 95, '_edit_lock', '1523654311:1'),
(424, 96, '_wp_attached_file', '2018/04/LOGO.png'),
(425, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1772;s:6:\"height\";i:945;s:4:\"file\";s:16:\"2018/04/LOGO.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"LOGO-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"LOGO-768x410.png\";s:5:\"width\";i:768;s:6:\"height\";i:410;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"LOGO-1024x546.png\";s:5:\"width\";i:1024;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"LOGO-600x320.png\";s:5:\"width\";i:600;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"LOGO-600x320.png\";s:5:\"width\";i:600;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(427, 95, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"93\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(428, 97, 'logo', '96'),
(429, 97, '_logo', 'field_5ad11b00a11cc'),
(430, 93, 'logo', '96'),
(431, 93, '_logo', 'field_5ad11b00a11cc'),
(432, 98, '_menu_item_type', 'post_type'),
(433, 98, '_menu_item_menu_item_parent', '0'),
(434, 98, '_menu_item_object_id', '2'),
(435, 98, '_menu_item_object', 'page'),
(436, 98, '_menu_item_target', ''),
(437, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 98, '_menu_item_xfn', ''),
(439, 98, '_menu_item_url', ''),
(440, 99, '_edit_last', '1'),
(442, 99, 'position', 'normal'),
(443, 99, 'layout', 'no_box'),
(444, 99, 'hide_on_screen', 'a:7:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:14:\"featured_image\";i:5;s:10:\"categories\";i:6;s:4:\"tags\";}'),
(445, 99, '_edit_lock', '1524132698:1'),
(446, 99, 'field_5ad65afb66863', 'a:11:{s:3:\"key\";s:19:\"field_5ad65afb66863\";s:5:\"label\";s:9:\"Portraits\";s:4:\"name\";s:9:\"portraits\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(447, 99, 'field_5ad65b1a66864', 'a:14:{s:3:\"key\";s:19:\"field_5ad65b1a66864\";s:5:\"label\";s:5:\"Nom 1\";s:4:\"name\";s:5:\"nom_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(448, 99, 'field_5ad65b5d66865', 'a:14:{s:3:\"key\";s:19:\"field_5ad65b5d66865\";s:5:\"label\";s:5:\"Nom 2\";s:4:\"name\";s:5:\"nom_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(449, 99, 'field_5ad65b7466866', 'a:14:{s:3:\"key\";s:19:\"field_5ad65b7466866\";s:5:\"label\";s:12:\"Titre gauche\";s:4:\"name\";s:12:\"titre_gauche\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(450, 99, 'field_5ad65b9666867', 'a:11:{s:3:\"key\";s:19:\"field_5ad65b9666867\";s:5:\"label\";s:12:\"Texte droite\";s:4:\"name\";s:12:\"texte_droite\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(453, 100, '_edit_last', '1'),
(454, 100, 'field_5ad65c71ff5fb', 'a:11:{s:3:\"key\";s:19:\"field_5ad65c71ff5fb\";s:5:\"label\";s:14:\"Photo produits\";s:4:\"name\";s:14:\"photo_produits\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(455, 100, 'field_5ad65c48ff5fa', 'a:14:{s:3:\"key\";s:19:\"field_5ad65c48ff5fa\";s:5:\"label\";s:5:\"Titre\";s:4:\"name\";s:5:\"titre\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(456, 100, 'field_5ad65c8cff5fc', 'a:14:{s:3:\"key\";s:19:\"field_5ad65c8cff5fc\";s:5:\"label\";s:14:\"Titre gauche 2\";s:4:\"name\";s:14:\"titre_gauche_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(457, 100, 'field_5ad65cadff5fd', 'a:11:{s:3:\"key\";s:19:\"field_5ad65cadff5fd\";s:5:\"label\";s:14:\"texte droite 2\";s:4:\"name\";s:14:\"texte_droite_2\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(459, 100, 'position', 'normal'),
(460, 100, 'layout', 'no_box'),
(461, 100, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(462, 100, '_edit_lock', '1524139219:1'),
(463, 99, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(464, 100, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(465, 101, '_wc_review_count', '0'),
(466, 101, '_wc_rating_count', 'a:0:{}'),
(467, 101, '_wc_average_rating', '0'),
(468, 101, '_edit_last', '1'),
(469, 101, '_children', 'a:0:{}'),
(470, 101, '_sku', ''),
(471, 101, '_regular_price', ''),
(472, 101, '_sale_price', ''),
(473, 101, '_sale_price_dates_from', ''),
(474, 101, '_sale_price_dates_to', ''),
(475, 101, 'total_sales', '0'),
(476, 101, '_tax_status', 'taxable'),
(477, 101, '_tax_class', ''),
(478, 101, '_manage_stock', 'no'),
(479, 101, '_backorders', 'no'),
(480, 101, '_sold_individually', 'no'),
(481, 101, '_weight', ''),
(482, 101, '_length', ''),
(483, 101, '_width', ''),
(484, 101, '_height', ''),
(485, 101, '_upsell_ids', 'a:0:{}'),
(486, 101, '_crosssell_ids', 'a:0:{}'),
(487, 101, '_purchase_note', ''),
(488, 101, '_default_attributes', 'a:0:{}'),
(489, 101, '_virtual', 'no'),
(490, 101, '_downloadable', 'no'),
(491, 101, '_product_image_gallery', ''),
(492, 101, '_download_limit', '-1'),
(493, 101, '_download_expiry', '-1'),
(494, 101, '_stock', NULL),
(495, 101, '_stock_status', 'instock'),
(496, 101, '_product_version', '3.3.5'),
(497, 101, '_price', ''),
(498, 101, '_edit_lock', '1524045580:1'),
(499, 102, '_wc_review_count', '0'),
(500, 102, '_wc_rating_count', 'a:0:{}'),
(501, 102, '_wc_average_rating', '0'),
(502, 102, '_edit_last', '2'),
(503, 102, '_edit_lock', '1524642363:2'),
(504, 101, '_wp_trash_meta_status', 'publish'),
(505, 101, '_wp_trash_meta_time', '1524045724'),
(506, 101, '_wp_desired_post_slug', 'desserts'),
(507, 102, '_sku', ''),
(508, 102, '_regular_price', '3.5'),
(509, 102, '_sale_price', ''),
(510, 102, '_sale_price_dates_from', ''),
(511, 102, '_sale_price_dates_to', ''),
(512, 102, 'total_sales', '0'),
(513, 102, '_tax_status', 'taxable'),
(514, 102, '_tax_class', ''),
(515, 102, '_manage_stock', 'no'),
(516, 102, '_backorders', 'no'),
(517, 102, '_sold_individually', 'no'),
(518, 102, '_weight', ''),
(519, 102, '_length', ''),
(520, 102, '_width', ''),
(521, 102, '_height', ''),
(522, 102, '_upsell_ids', 'a:0:{}'),
(523, 102, '_crosssell_ids', 'a:0:{}'),
(524, 102, '_purchase_note', ''),
(525, 102, '_default_attributes', 'a:0:{}'),
(526, 102, '_virtual', 'no'),
(527, 102, '_downloadable', 'no'),
(528, 102, '_product_image_gallery', ''),
(529, 102, '_download_limit', '-1'),
(530, 102, '_download_expiry', '-1'),
(531, 102, '_stock', NULL),
(532, 102, '_stock_status', 'instock'),
(533, 102, '_product_version', '3.3.5'),
(534, 102, '_price', '3.5'),
(535, 103, '_wc_review_count', '0'),
(536, 103, '_wc_rating_count', 'a:0:{}'),
(537, 103, '_wc_average_rating', '0'),
(538, 103, '_edit_last', '2'),
(539, 103, '_sku', ''),
(540, 103, '_regular_price', '5'),
(541, 103, '_sale_price', ''),
(542, 103, '_sale_price_dates_from', ''),
(543, 103, '_sale_price_dates_to', ''),
(544, 103, 'total_sales', '0'),
(545, 103, '_tax_status', 'taxable'),
(546, 103, '_tax_class', ''),
(547, 103, '_manage_stock', 'no'),
(548, 103, '_backorders', 'no'),
(549, 103, '_sold_individually', 'no'),
(550, 103, '_weight', ''),
(551, 103, '_length', ''),
(552, 103, '_width', ''),
(553, 103, '_height', ''),
(554, 103, '_upsell_ids', 'a:1:{i:0;i:102;}'),
(555, 103, '_crosssell_ids', 'a:0:{}'),
(556, 103, '_purchase_note', ''),
(557, 103, '_default_attributes', 'a:0:{}'),
(558, 103, '_virtual', 'no'),
(559, 103, '_downloadable', 'no'),
(560, 103, '_product_image_gallery', ''),
(561, 103, '_download_limit', '-1'),
(562, 103, '_download_expiry', '-1'),
(563, 103, '_stock', NULL),
(564, 103, '_stock_status', 'instock'),
(565, 103, '_product_version', '3.3.5'),
(566, 103, '_price', '5'),
(567, 103, '_edit_lock', '1524642447:2'),
(568, 104, '_wp_trash_meta_status', 'publish'),
(569, 104, '_wp_trash_meta_time', '1524085552'),
(570, 105, '_wp_trash_meta_status', 'publish'),
(571, 105, '_wp_trash_meta_time', '1524085580'),
(572, 106, '_edit_last', '1'),
(573, 106, 'field_5ad7b436f9caf', 'a:11:{s:3:\"key\";s:19:\"field_5ad7b436f9caf\";s:5:\"label\";s:13:\"product image\";s:4:\"name\";s:13:\"product_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(574, 106, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(575, 106, 'position', 'acf_after_title'),
(576, 106, 'layout', 'no_box');
INSERT INTO `ldsl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(577, 106, 'hide_on_screen', ''),
(578, 106, '_edit_lock', '1524132303:1'),
(579, 107, '_wp_attached_file', '2018/04/cyril-lablanche-anne-laure-noga.jpg'),
(580, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:43:\"2018/04/cyril-lablanche-anne-laure-noga.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"cyril-lablanche-anne-laure-noga-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"cyril-lablanche-anne-laure-noga-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:15:\"© ulrike monso\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(581, 108, 'portraits', '107'),
(582, 108, '_portraits', 'field_5ad65afb66863'),
(583, 108, 'nom_1', ''),
(584, 108, '_nom_1', 'field_5ad65b1a66864'),
(585, 108, 'nom_2', ''),
(586, 108, '_nom_2', 'field_5ad65b5d66865'),
(587, 108, 'titre_gauche', ''),
(588, 108, '_titre_gauche', 'field_5ad65b7466866'),
(589, 108, 'texte_droite', ''),
(590, 108, '_texte_droite', 'field_5ad65b9666867'),
(591, 108, 'photo_produits', ''),
(592, 108, '_photo_produits', 'field_5ad65c71ff5fb'),
(593, 108, 'titre', ''),
(594, 108, '_titre', 'field_5ad65c48ff5fa'),
(595, 108, 'titre_gauche_2', ''),
(596, 108, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(597, 108, 'texte_droite_2', ''),
(598, 108, '_texte_droite_2', 'field_5ad65cadff5fd'),
(599, 2, 'portraits', '107'),
(600, 2, '_portraits', 'field_5ad65afb66863'),
(601, 2, 'nom_1', 'Cyril Lablanche'),
(602, 2, '_nom_1', 'field_5ad65b1a66864'),
(603, 2, 'nom_2', 'Anne-Laure Noga'),
(604, 2, '_nom_2', 'field_5ad65b5d66865'),
(605, 2, 'titre_gauche', 'On s\'affaire en cuisine.'),
(606, 2, '_titre_gauche', 'field_5ad65b7466866'),
(607, 2, 'texte_droite', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nDu frais, des produits de saison, nos producteurs du coin et beaucoup d’imagination :\r\nAnne-Laure Noga et Cyril Lablanche vous proposent une cuisine savoureuse et pleine de santé, qui fait la part belle aux produits du Luberon, plus quelques envies d’ailleurs.\r\n\r\n<strong>Tout fait maison à Lourmarin.</strong>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(608, 2, '_texte_droite', 'field_5ad65b9666867'),
(609, 2, 'photo_produits', '112'),
(610, 2, '_photo_produits', 'field_5ad65c71ff5fb'),
(611, 2, 'titre', 'Nos producteurs préférés'),
(612, 2, '_titre', 'field_5ad65c48ff5fa'),
(613, 2, 'titre_gauche_2', 'On les aime.'),
(614, 2, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(615, 2, 'texte_droite_2', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLa charcuterie artisanale de M. Pourcin à Lauris.\r\nLes fromages de chèvre de Mme Morard à Buoux.\r\nLes légumes de M. Isouard à Vaugines, de M. Argentin à Ansouis et du Luberon Paysan à La Tour d\'Aigues. Les huiles d’olive de La Bastide du Laval à Cadenet. les thés de Rebecca Oswald à Pertuis.\r\nLes fleurs de La Coccinelle en Luberon à Cucuron.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(616, 2, '_texte_droite_2', 'field_5ad65cadff5fd'),
(617, 109, 'portraits', '107'),
(618, 109, '_portraits', 'field_5ad65afb66863'),
(619, 109, 'nom_1', 'Cyril Lablanche'),
(620, 109, '_nom_1', 'field_5ad65b1a66864'),
(621, 109, 'nom_2', ''),
(622, 109, '_nom_2', 'field_5ad65b5d66865'),
(623, 109, 'titre_gauche', ''),
(624, 109, '_titre_gauche', 'field_5ad65b7466866'),
(625, 109, 'texte_droite', ''),
(626, 109, '_texte_droite', 'field_5ad65b9666867'),
(627, 109, 'photo_produits', ''),
(628, 109, '_photo_produits', 'field_5ad65c71ff5fb'),
(629, 109, 'titre', ''),
(630, 109, '_titre', 'field_5ad65c48ff5fa'),
(631, 109, 'titre_gauche_2', ''),
(632, 109, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(633, 109, 'texte_droite_2', ''),
(634, 109, '_texte_droite_2', 'field_5ad65cadff5fd'),
(635, 110, 'portraits', '107'),
(636, 110, '_portraits', 'field_5ad65afb66863'),
(637, 110, 'nom_1', 'Cyril Lablanche'),
(638, 110, '_nom_1', 'field_5ad65b1a66864'),
(639, 110, 'nom_2', 'Anne-Laure Noga'),
(640, 110, '_nom_2', 'field_5ad65b5d66865'),
(641, 110, 'titre_gauche', ''),
(642, 110, '_titre_gauche', 'field_5ad65b7466866'),
(643, 110, 'texte_droite', ''),
(644, 110, '_texte_droite', 'field_5ad65b9666867'),
(645, 110, 'photo_produits', ''),
(646, 110, '_photo_produits', 'field_5ad65c71ff5fb'),
(647, 110, 'titre', ''),
(648, 110, '_titre', 'field_5ad65c48ff5fa'),
(649, 110, 'titre_gauche_2', ''),
(650, 110, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(651, 110, 'texte_droite_2', ''),
(652, 110, '_texte_droite_2', 'field_5ad65cadff5fd'),
(653, 111, 'portraits', '107'),
(654, 111, '_portraits', 'field_5ad65afb66863'),
(655, 111, 'nom_1', 'Cyril Lablanche'),
(656, 111, '_nom_1', 'field_5ad65b1a66864'),
(657, 111, 'nom_2', 'Anne-Laure Noga'),
(658, 111, '_nom_2', 'field_5ad65b5d66865'),
(659, 111, 'titre_gauche', 'On s\'affaire en cuisine'),
(660, 111, '_titre_gauche', 'field_5ad65b7466866'),
(661, 111, 'texte_droite', '<ul>\r\n  <li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,</li>\r\n  <li>totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n  <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores</li>\r\n  <li>eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,</li>\r\n   <li>adipisci velit, sed quia non numquam eius modi tempora incidunt ut</li>\r\n</ul>'),
(662, 111, '_texte_droite', 'field_5ad65b9666867'),
(663, 111, 'photo_produits', ''),
(664, 111, '_photo_produits', 'field_5ad65c71ff5fb'),
(665, 111, 'titre', ''),
(666, 111, '_titre', 'field_5ad65c48ff5fa'),
(667, 111, 'titre_gauche_2', ''),
(668, 111, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(669, 111, 'texte_droite_2', ''),
(670, 111, '_texte_droite_2', 'field_5ad65cadff5fd'),
(671, 112, '_wp_attached_file', '2018/04/nos-producteurs-préférés.jpg'),
(672, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:42:\"2018/04/nos-producteurs-préférés.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"nos-producteurs-préférés-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"nos-producteurs-préférés-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:15:\"© ulrike monso\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 113, 'portraits', '107'),
(674, 113, '_portraits', 'field_5ad65afb66863'),
(675, 113, 'nom_1', 'Cyril Lablanche'),
(676, 113, '_nom_1', 'field_5ad65b1a66864'),
(677, 113, 'nom_2', 'Anne-Laure Noga'),
(678, 113, '_nom_2', 'field_5ad65b5d66865'),
(679, 113, 'titre_gauche', 'On s\'affaire en cuisine'),
(680, 113, '_titre_gauche', 'field_5ad65b7466866'),
(681, 113, 'texte_droite', '<ul>\r\n  <li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,</li>\r\n  <li>totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n  <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores</li>\r\n  <li>eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,</li>\r\n   <li>adipisci velit, sed quia non numquam eius modi tempora incidunt ut</li>\r\n</ul>'),
(682, 113, '_texte_droite', 'field_5ad65b9666867'),
(683, 113, 'photo_produits', '112'),
(684, 113, '_photo_produits', 'field_5ad65c71ff5fb'),
(685, 113, 'titre', ''),
(686, 113, '_titre', 'field_5ad65c48ff5fa'),
(687, 113, 'titre_gauche_2', ''),
(688, 113, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(689, 113, 'texte_droite_2', ''),
(690, 113, '_texte_droite_2', 'field_5ad65cadff5fd'),
(691, 114, 'portraits', '107'),
(692, 114, '_portraits', 'field_5ad65afb66863'),
(693, 114, 'nom_1', 'Cyril Lablanche'),
(694, 114, '_nom_1', 'field_5ad65b1a66864'),
(695, 114, 'nom_2', 'Anne-Laure Noga'),
(696, 114, '_nom_2', 'field_5ad65b5d66865'),
(697, 114, 'titre_gauche', 'On s\'affaire en cuisine'),
(698, 114, '_titre_gauche', 'field_5ad65b7466866'),
(699, 114, 'texte_droite', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut.'),
(700, 114, '_texte_droite', 'field_5ad65b9666867'),
(701, 114, 'photo_produits', '112'),
(702, 114, '_photo_produits', 'field_5ad65c71ff5fb'),
(703, 114, 'titre', 'Nos producteurs préférés'),
(704, 114, '_titre', 'field_5ad65c48ff5fa'),
(705, 114, 'titre_gauche_2', 'On les aime'),
(706, 114, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(707, 114, 'texte_droite_2', '<ul>\r\n  <li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,</li>\r\n  <li>totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n  <li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores</li>\r\n  <li>eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,</li>\r\n   <li>adipisci velit, sed quia non numquam eius modi tempora incidunt ut</li>\r\n</ul>'),
(708, 114, '_texte_droite_2', 'field_5ad65cadff5fd'),
(709, 115, '_edit_last', '1'),
(710, 115, 'field_5ad885a5fd1c8', 'a:11:{s:3:\"key\";s:19:\"field_5ad885a5fd1c8\";s:5:\"label\";s:14:\"Photo on livre\";s:4:\"name\";s:14:\"photo_on_livre\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(711, 115, 'field_5ad8857bfd1c7', 'a:14:{s:3:\"key\";s:19:\"field_5ad8857bfd1c7\";s:5:\"label\";s:14:\"Titre On livre\";s:4:\"name\";s:14:\"titre_on_livre\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(712, 115, 'field_5ad885c8fd1c9', 'a:11:{s:3:\"key\";s:19:\"field_5ad885c8fd1c9\";s:5:\"label\";s:3:\"Map\";s:4:\"name\";s:3:\"map\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(713, 115, 'field_5ad885d6fd1ca', 'a:11:{s:3:\"key\";s:19:\"field_5ad885d6fd1ca\";s:5:\"label\";s:14:\"Texte droite 3\";s:4:\"name\";s:14:\"texte_droite_3\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(715, 115, 'position', 'normal'),
(716, 115, 'layout', 'no_box'),
(717, 115, 'hide_on_screen', 'a:4:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";}'),
(718, 115, '_edit_lock', '1524140286:1'),
(719, 116, '_wp_attached_file', '2018/04/eaux-d’agrumes.jpg'),
(720, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:28:\"2018/04/eaux-d’agrumes.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"eaux-d’agrumes-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"eaux-d’agrumes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:15:\"© ulrike monso\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(721, 117, 'photo_on_livre', '116'),
(722, 117, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(723, 117, 'titre_on_livre', 'On livre où vous voulez'),
(724, 117, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(725, 117, 'titre_gauche_3', ''),
(726, 117, '_titre_gauche_3', 'field_5ad885c8fd1c9'),
(727, 117, 'texte_droite_3', ''),
(728, 117, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(729, 86, 'photo_on_livre', '160'),
(730, 86, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(731, 86, 'titre_on_livre', 'On livre où vous voulez'),
(732, 86, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(733, 86, 'titre_gauche_3', ''),
(734, 86, '_titre_gauche_3', 'field_5ad885c8fd1c9'),
(735, 86, 'texte_droite_3', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nChez vous au bord de la piscine,\r\nen balade dans le Luberon, au coin du feu l’hiver,\r\n\r\nou en rendez-vous de travail :\r\nnous livrons dans un rayon de 20 km\r\nautour de Lourmarin.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(736, 86, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(737, 115, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"86\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(738, 118, '_wp_attached_file', '2018/04/Capture-d’écran-2018-04-19-à-14.19.39.png'),
(739, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1636;s:6:\"height\";i:1046;s:4:\"file\";s:55:\"2018/04/Capture-d’écran-2018-04-19-à-14.19.39.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-768x491.png\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:56:\"Capture-d’écran-2018-04-19-à-14.19.39-1024x655.png\";s:5:\"width\";i:1024;s:6:\"height\";i:655;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-600x384.png\";s:5:\"width\";i:600;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-600x384.png\";s:5:\"width\";i:600;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:55:\"Capture-d’écran-2018-04-19-à-14.19.39-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 119, 'photo_on_livre', '116'),
(741, 119, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(742, 119, 'titre_on_livre', 'On livre où vous voulez'),
(743, 119, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(744, 119, 'map', '118'),
(745, 119, '_map', 'field_5ad885c8fd1c9'),
(746, 119, 'texte_droite_3', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut.'),
(747, 119, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(748, 86, 'map', '159'),
(749, 86, '_map', 'field_5ad885c8fd1c9'),
(750, 121, '_wc_review_count', '0'),
(751, 121, '_wc_rating_count', 'a:0:{}'),
(752, 121, '_wc_average_rating', '0'),
(753, 121, '_edit_last', '1'),
(754, 121, '_edit_lock', '1524226203:1'),
(758, 123, '_wc_review_count', '0'),
(759, 123, '_wc_rating_count', 'a:0:{}'),
(760, 123, '_wc_average_rating', '0'),
(761, 124, '_wp_attached_file', '2018/04/05779.jpg'),
(762, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2018/04/05779.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"05779-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"05779-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"05779-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"05779-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"05779-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"05779-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"05779-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"05779-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 123, '_edit_last', '1'),
(764, 123, '_edit_lock', '1524513772:1'),
(765, 123, '_thumbnail_id', '124'),
(766, 123, '_sku', ''),
(767, 123, '_regular_price', ''),
(768, 123, '_sale_price', ''),
(769, 123, '_sale_price_dates_from', ''),
(770, 123, '_sale_price_dates_to', ''),
(771, 123, 'total_sales', '0'),
(772, 123, '_tax_status', 'taxable'),
(773, 123, '_tax_class', ''),
(774, 123, '_manage_stock', 'no'),
(775, 123, '_backorders', 'no'),
(776, 123, '_sold_individually', 'no'),
(777, 123, '_weight', ''),
(778, 123, '_length', ''),
(779, 123, '_width', ''),
(780, 123, '_height', ''),
(781, 123, '_upsell_ids', 'a:0:{}'),
(782, 123, '_crosssell_ids', 'a:0:{}'),
(783, 123, '_purchase_note', ''),
(784, 123, '_default_attributes', 'a:0:{}'),
(785, 123, '_virtual', 'no'),
(786, 123, '_downloadable', 'no'),
(787, 123, '_product_image_gallery', ''),
(788, 123, '_download_limit', '-1'),
(789, 123, '_download_expiry', '-1'),
(790, 123, '_stock', NULL),
(791, 123, '_stock_status', 'instock'),
(792, 123, '_product_version', '3.3.5'),
(793, 123, '_price', ''),
(794, 123, 'product_image', ''),
(795, 123, '_product_image', 'field_5ad7b436f9caf'),
(796, 123, '_wp_trash_meta_status', 'publish'),
(797, 123, '_wp_trash_meta_time', '1524513921'),
(798, 123, '_wp_desired_post_slug', 'eau-evian-25cl'),
(799, 121, '_wp_trash_meta_status', 'draft'),
(800, 121, '_wp_trash_meta_time', '1524513925'),
(801, 121, '_wp_desired_post_slug', ''),
(802, 128, '_email', 'vallauri.raphael@gmail.com'),
(803, 128, '_name', 'Raphaël Vallauri'),
(804, 128, '_props', 'a:2:{s:10:\"first_name\";s:8:\"Raphaël\";s:9:\"last_name\";s:8:\"Vallauri\";}'),
(805, 128, '_last_contacted', '2018-04-24 08:22:20'),
(806, 130, '_wp_attached_file', '2018/04/bowl-bœuf-black-angus.jpg'),
(807, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:34:\"2018/04/bowl-bœuf-black-angus.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"bowl-bœuf-black-angus-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"bowl-bœuf-black-angus-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(808, 131, '_wp_attached_file', '2018/04/bowl-poulet-au-pistou-1.jpg'),
(809, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:35:\"2018/04/bowl-poulet-au-pistou-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"bowl-poulet-au-pistou-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"bowl-poulet-au-pistou-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(810, 132, '_wp_attached_file', '2018/04/bowl-veggie.jpg'),
(811, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:23:\"2018/04/bowl-veggie.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bowl-veggie-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"bowl-veggie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(812, 133, '_wp_attached_file', '2018/04/brunch-sale.jpg'),
(813, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:23:\"2018/04/brunch-sale.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"brunch-sale-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"brunch-sale-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"brunch-sale-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"brunch-sale-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"brunch-sale-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"brunch-sale-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"brunch-sale-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"brunch-sale-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(814, 134, '_wp_attached_file', '2018/04/brunch-sucre-sale.jpg'),
(815, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:29:\"2018/04/brunch-sucre-sale.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"brunch-sucre-sale-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"brunch-sucre-sale-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(816, 135, '_wp_attached_file', '2018/04/brunch-sucre.jpg'),
(817, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:24:\"2018/04/brunch-sucre.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"brunch-sucre-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"brunch-sucre-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(818, 136, '_wp_attached_file', '2018/04/cyril-lablanche-anne-laure-noga-1.jpg'),
(819, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:45:\"2018/04/cyril-lablanche-anne-laure-noga-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"cyril-lablanche-anne-laure-noga-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"cyril-lablanche-anne-laure-noga-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(820, 137, '_wp_attached_file', '2018/04/eaux-dagrumes.jpg'),
(821, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:25:\"2018/04/eaux-dagrumes.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"eaux-dagrumes-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"eaux-dagrumes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(822, 138, '_wp_attached_file', '2018/04/fajitas-petite-faim.jpg'),
(823, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:31:\"2018/04/fajitas-petite-faim.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"fajitas-petite-faim-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"fajitas-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(824, 139, '_wp_attached_file', '2018/04/le-crumble-la-panacotta-le-muffin.jpg'),
(825, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:45:\"2018/04/le-crumble-la-panacotta-le-muffin.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"le-crumble-la-panacotta-le-muffin-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"le-crumble-la-panacotta-le-muffin-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(826, 140, '_wp_attached_file', '2018/04/nos-producteurs-preferes.jpg'),
(827, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:36:\"2018/04/nos-producteurs-preferes.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"nos-producteurs-preferes-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"nos-producteurs-preferes-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(828, 141, '_wp_attached_file', '2018/04/rouleau-petite-faim.jpg'),
(829, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:31:\"2018/04/rouleau-petite-faim.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"rouleau-petite-faim-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"rouleau-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(830, 142, '_wp_attached_file', '2018/04/veggie-cake-petite-faim.jpg'),
(831, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2670;s:4:\"file\";s:35:\"2018/04/veggie-cake-petite-faim.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"veggie-cake-petite-faim-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"veggie-cake-petite-faim-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(832, 76, 'product_image', ''),
(833, 76, '_product_image', 'field_5ad7b436f9caf'),
(834, 75, '_thumbnail_id', '132'),
(835, 75, 'product_image', ''),
(836, 75, '_product_image', 'field_5ad7b436f9caf'),
(837, 143, '_wc_review_count', '0'),
(838, 143, '_wc_rating_count', 'a:0:{}'),
(839, 143, '_wc_average_rating', '0'),
(840, 143, '_edit_lock', '1524641182:2'),
(841, 143, '_edit_last', '2'),
(842, 143, '_thumbnail_id', '131'),
(843, 143, '_sku', ''),
(844, 143, '_regular_price', '15'),
(845, 143, '_sale_price', ''),
(846, 143, '_sale_price_dates_from', ''),
(847, 143, '_sale_price_dates_to', ''),
(848, 143, 'total_sales', '0');
INSERT INTO `ldsl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(849, 143, '_tax_status', 'taxable'),
(850, 143, '_tax_class', ''),
(851, 143, '_manage_stock', 'no'),
(852, 143, '_backorders', 'no'),
(853, 143, '_sold_individually', 'no'),
(854, 143, '_weight', ''),
(855, 143, '_length', ''),
(856, 143, '_width', ''),
(857, 143, '_height', ''),
(858, 143, '_upsell_ids', 'a:0:{}'),
(859, 143, '_crosssell_ids', 'a:0:{}'),
(860, 143, '_purchase_note', ''),
(861, 143, '_default_attributes', 'a:0:{}'),
(862, 143, '_virtual', 'no'),
(863, 143, '_downloadable', 'no'),
(864, 143, '_product_image_gallery', ''),
(865, 143, '_download_limit', '-1'),
(866, 143, '_download_expiry', '-1'),
(867, 143, '_stock', NULL),
(868, 143, '_stock_status', 'instock'),
(869, 143, '_product_version', '3.3.5'),
(870, 143, '_price', '15'),
(871, 143, 'product_image', ''),
(872, 143, '_product_image', 'field_5ad7b436f9caf'),
(873, 144, '_wc_review_count', '0'),
(874, 144, '_wc_rating_count', 'a:0:{}'),
(875, 144, '_wc_average_rating', '0'),
(876, 144, '_edit_lock', '1524641175:2'),
(877, 144, '_edit_last', '2'),
(878, 144, '_sku', ''),
(879, 144, '_regular_price', '17'),
(880, 144, '_sale_price', ''),
(881, 144, '_sale_price_dates_from', ''),
(882, 144, '_sale_price_dates_to', ''),
(883, 144, 'total_sales', '0'),
(884, 144, '_tax_status', 'taxable'),
(885, 144, '_tax_class', ''),
(886, 144, '_manage_stock', 'no'),
(887, 144, '_backorders', 'no'),
(888, 144, '_sold_individually', 'no'),
(889, 144, '_weight', ''),
(890, 144, '_length', ''),
(891, 144, '_width', ''),
(892, 144, '_height', ''),
(893, 144, '_upsell_ids', 'a:0:{}'),
(894, 144, '_crosssell_ids', 'a:0:{}'),
(895, 144, '_purchase_note', ''),
(896, 144, '_default_attributes', 'a:0:{}'),
(897, 144, '_virtual', 'no'),
(898, 144, '_downloadable', 'no'),
(899, 144, '_product_image_gallery', ''),
(900, 144, '_download_limit', '-1'),
(901, 144, '_download_expiry', '-1'),
(902, 144, '_stock', NULL),
(903, 144, '_stock_status', 'instock'),
(904, 144, '_product_version', '3.3.5'),
(905, 144, '_price', '17'),
(906, 144, 'product_image', ''),
(907, 144, '_product_image', 'field_5ad7b436f9caf'),
(908, 145, '_wc_review_count', '0'),
(909, 145, '_wc_rating_count', 'a:0:{}'),
(910, 145, '_wc_average_rating', '0'),
(911, 145, '_edit_lock', '1524641169:2'),
(912, 145, '_edit_last', '2'),
(913, 145, '_thumbnail_id', '135'),
(914, 145, '_sku', ''),
(915, 145, '_regular_price', '20'),
(916, 145, '_sale_price', ''),
(917, 145, '_sale_price_dates_from', ''),
(918, 145, '_sale_price_dates_to', ''),
(919, 145, 'total_sales', '0'),
(920, 145, '_tax_status', 'taxable'),
(921, 145, '_tax_class', ''),
(922, 145, '_manage_stock', 'no'),
(923, 145, '_backorders', 'no'),
(924, 145, '_sold_individually', 'no'),
(925, 145, '_weight', ''),
(926, 145, '_length', ''),
(927, 145, '_width', ''),
(928, 145, '_height', ''),
(929, 145, '_upsell_ids', 'a:0:{}'),
(930, 145, '_crosssell_ids', 'a:0:{}'),
(931, 145, '_purchase_note', ''),
(932, 145, '_default_attributes', 'a:0:{}'),
(933, 145, '_virtual', 'no'),
(934, 145, '_downloadable', 'no'),
(935, 145, '_product_image_gallery', ''),
(936, 145, '_download_limit', '-1'),
(937, 145, '_download_expiry', '-1'),
(938, 145, '_stock', NULL),
(939, 145, '_stock_status', 'instock'),
(940, 145, '_product_version', '3.3.5'),
(941, 145, '_price', '20'),
(942, 145, 'product_image', ''),
(943, 145, '_product_image', 'field_5ad7b436f9caf'),
(944, 144, '_thumbnail_id', '130'),
(945, 76, '_wp_trash_meta_status', 'publish'),
(946, 76, '_wp_trash_meta_time', '1524640694'),
(947, 76, '_wp_desired_post_slug', 'bowl-indien'),
(948, 146, '_wc_review_count', '0'),
(949, 146, '_wc_rating_count', 'a:0:{}'),
(950, 146, '_wc_average_rating', '0'),
(951, 146, '_edit_lock', '1524641163:2'),
(952, 146, '_edit_last', '2'),
(953, 146, '_thumbnail_id', '133'),
(954, 146, '_sku', ''),
(955, 146, '_regular_price', '22'),
(956, 146, '_sale_price', ''),
(957, 146, '_sale_price_dates_from', ''),
(958, 146, '_sale_price_dates_to', ''),
(959, 146, 'total_sales', '0'),
(960, 146, '_tax_status', 'taxable'),
(961, 146, '_tax_class', ''),
(962, 146, '_manage_stock', 'no'),
(963, 146, '_backorders', 'no'),
(964, 146, '_sold_individually', 'no'),
(965, 146, '_weight', ''),
(966, 146, '_length', ''),
(967, 146, '_width', ''),
(968, 146, '_height', ''),
(969, 146, '_upsell_ids', 'a:0:{}'),
(970, 146, '_crosssell_ids', 'a:0:{}'),
(971, 146, '_purchase_note', ''),
(972, 146, '_default_attributes', 'a:0:{}'),
(973, 146, '_virtual', 'no'),
(974, 146, '_downloadable', 'no'),
(975, 146, '_product_image_gallery', ''),
(976, 146, '_download_limit', '-1'),
(977, 146, '_download_expiry', '-1'),
(978, 146, '_stock', NULL),
(979, 146, '_stock_status', 'instock'),
(980, 146, '_product_version', '3.3.5'),
(981, 146, '_price', '22'),
(982, 146, 'product_image', ''),
(983, 146, '_product_image', 'field_5ad7b436f9caf'),
(984, 147, '_wc_review_count', '0'),
(985, 147, '_wc_rating_count', 'a:0:{}'),
(986, 147, '_wc_average_rating', '0'),
(987, 147, '_edit_lock', '1524641156:2'),
(988, 147, '_edit_last', '2'),
(989, 147, '_thumbnail_id', '134'),
(990, 147, '_sku', ''),
(991, 147, '_regular_price', '25'),
(992, 147, '_sale_price', ''),
(993, 147, '_sale_price_dates_from', ''),
(994, 147, '_sale_price_dates_to', ''),
(995, 147, 'total_sales', '0'),
(996, 147, '_tax_status', 'taxable'),
(997, 147, '_tax_class', ''),
(998, 147, '_manage_stock', 'no'),
(999, 147, '_backorders', 'no'),
(1000, 147, '_sold_individually', 'no'),
(1001, 147, '_weight', ''),
(1002, 147, '_length', ''),
(1003, 147, '_width', ''),
(1004, 147, '_height', ''),
(1005, 147, '_upsell_ids', 'a:0:{}'),
(1006, 147, '_crosssell_ids', 'a:0:{}'),
(1007, 147, '_purchase_note', ''),
(1008, 147, '_default_attributes', 'a:0:{}'),
(1009, 147, '_virtual', 'no'),
(1010, 147, '_downloadable', 'no'),
(1011, 147, '_product_image_gallery', ''),
(1012, 147, '_download_limit', '-1'),
(1013, 147, '_download_expiry', '-1'),
(1014, 147, '_stock', NULL),
(1015, 147, '_stock_status', 'instock'),
(1016, 147, '_product_version', '3.3.5'),
(1017, 147, '_price', '25'),
(1018, 147, 'product_image', ''),
(1019, 147, '_product_image', 'field_5ad7b436f9caf'),
(1020, 148, '_wc_review_count', '0'),
(1021, 148, '_wc_rating_count', 'a:0:{}'),
(1022, 148, '_wc_average_rating', '0'),
(1023, 148, '_edit_lock', '1524641150:2'),
(1024, 148, '_edit_last', '2'),
(1025, 148, '_thumbnail_id', '141'),
(1026, 148, '_sku', ''),
(1027, 148, '_regular_price', '5'),
(1028, 148, '_sale_price', ''),
(1029, 148, '_sale_price_dates_from', ''),
(1030, 148, '_sale_price_dates_to', ''),
(1031, 148, 'total_sales', '0'),
(1032, 148, '_tax_status', 'taxable'),
(1033, 148, '_tax_class', ''),
(1034, 148, '_manage_stock', 'no'),
(1035, 148, '_backorders', 'no'),
(1036, 148, '_sold_individually', 'no'),
(1037, 148, '_weight', ''),
(1038, 148, '_length', ''),
(1039, 148, '_width', ''),
(1040, 148, '_height', ''),
(1041, 148, '_upsell_ids', 'a:0:{}'),
(1042, 148, '_crosssell_ids', 'a:0:{}'),
(1043, 148, '_purchase_note', ''),
(1044, 148, '_default_attributes', 'a:0:{}'),
(1045, 148, '_virtual', 'no'),
(1046, 148, '_downloadable', 'no'),
(1047, 148, '_product_image_gallery', ''),
(1048, 148, '_download_limit', '-1'),
(1049, 148, '_download_expiry', '-1'),
(1050, 148, '_stock', NULL),
(1051, 148, '_stock_status', 'instock'),
(1052, 148, '_product_version', '3.3.5'),
(1053, 148, '_price', '5'),
(1054, 148, 'product_image', ''),
(1055, 148, '_product_image', 'field_5ad7b436f9caf'),
(1056, 149, '_wc_review_count', '0'),
(1057, 149, '_wc_rating_count', 'a:0:{}'),
(1058, 149, '_wc_average_rating', '0'),
(1059, 149, '_edit_lock', '1524641144:2'),
(1060, 149, '_edit_last', '2'),
(1061, 149, '_thumbnail_id', '138'),
(1062, 149, '_sku', ''),
(1063, 149, '_regular_price', '5'),
(1064, 149, '_sale_price', ''),
(1065, 149, '_sale_price_dates_from', ''),
(1066, 149, '_sale_price_dates_to', ''),
(1067, 149, 'total_sales', '0'),
(1068, 149, '_tax_status', 'taxable'),
(1069, 149, '_tax_class', ''),
(1070, 149, '_manage_stock', 'no'),
(1071, 149, '_backorders', 'no'),
(1072, 149, '_sold_individually', 'no'),
(1073, 149, '_weight', ''),
(1074, 149, '_length', ''),
(1075, 149, '_width', ''),
(1076, 149, '_height', ''),
(1077, 149, '_upsell_ids', 'a:0:{}'),
(1078, 149, '_crosssell_ids', 'a:0:{}'),
(1079, 149, '_purchase_note', ''),
(1080, 149, '_default_attributes', 'a:0:{}'),
(1081, 149, '_virtual', 'no'),
(1082, 149, '_downloadable', 'no'),
(1083, 149, '_product_image_gallery', ''),
(1084, 149, '_download_limit', '-1'),
(1085, 149, '_download_expiry', '-1'),
(1086, 149, '_stock', NULL),
(1087, 149, '_stock_status', 'instock'),
(1088, 149, '_product_version', '3.3.5'),
(1089, 149, '_price', '5'),
(1090, 149, 'product_image', ''),
(1091, 149, '_product_image', 'field_5ad7b436f9caf'),
(1092, 150, '_wc_review_count', '0'),
(1093, 150, '_wc_rating_count', 'a:0:{}'),
(1094, 150, '_wc_average_rating', '0'),
(1095, 150, '_edit_lock', '1524641136:2'),
(1096, 150, '_edit_last', '2'),
(1097, 150, '_thumbnail_id', '142'),
(1098, 150, '_sku', ''),
(1099, 150, '_regular_price', '4.5'),
(1100, 150, '_sale_price', ''),
(1101, 150, '_sale_price_dates_from', ''),
(1102, 150, '_sale_price_dates_to', ''),
(1103, 150, 'total_sales', '0'),
(1104, 150, '_tax_status', 'taxable'),
(1105, 150, '_tax_class', ''),
(1106, 150, '_manage_stock', 'no'),
(1107, 150, '_backorders', 'no'),
(1108, 150, '_sold_individually', 'no'),
(1109, 150, '_weight', ''),
(1110, 150, '_length', ''),
(1111, 150, '_width', ''),
(1112, 150, '_height', ''),
(1113, 150, '_upsell_ids', 'a:0:{}'),
(1114, 150, '_crosssell_ids', 'a:0:{}'),
(1115, 150, '_purchase_note', ''),
(1116, 150, '_default_attributes', 'a:0:{}'),
(1117, 150, '_virtual', 'no'),
(1118, 150, '_downloadable', 'no'),
(1119, 150, '_product_image_gallery', ''),
(1120, 150, '_download_limit', '-1'),
(1121, 150, '_download_expiry', '-1'),
(1122, 150, '_stock', NULL),
(1123, 150, '_stock_status', 'instock'),
(1124, 150, '_product_version', '3.3.5'),
(1125, 150, '_price', '4.5'),
(1126, 150, 'product_image', ''),
(1127, 150, '_product_image', 'field_5ad7b436f9caf'),
(1128, 151, '_wc_review_count', '0'),
(1129, 151, '_wc_rating_count', 'a:0:{}'),
(1130, 151, '_wc_average_rating', '0'),
(1131, 151, '_edit_lock', '1524640830:2'),
(1132, 151, '_edit_last', '2'),
(1133, 151, '_thumbnail_id', '137'),
(1134, 151, '_sku', ''),
(1135, 151, '_regular_price', '3.5'),
(1136, 151, '_sale_price', ''),
(1137, 151, '_sale_price_dates_from', ''),
(1138, 151, '_sale_price_dates_to', ''),
(1139, 151, 'total_sales', '0'),
(1140, 151, '_tax_status', 'taxable'),
(1141, 151, '_tax_class', ''),
(1142, 151, '_manage_stock', 'no'),
(1143, 151, '_backorders', 'no'),
(1144, 151, '_sold_individually', 'no'),
(1145, 151, '_weight', ''),
(1146, 151, '_length', ''),
(1147, 151, '_width', ''),
(1148, 151, '_height', ''),
(1149, 151, '_upsell_ids', 'a:0:{}'),
(1150, 151, '_crosssell_ids', 'a:0:{}'),
(1151, 151, '_purchase_note', ''),
(1152, 151, '_default_attributes', 'a:0:{}'),
(1153, 151, '_virtual', 'no'),
(1154, 151, '_downloadable', 'no'),
(1155, 151, '_product_image_gallery', ''),
(1156, 151, '_download_limit', '-1'),
(1157, 151, '_download_expiry', '-1'),
(1158, 151, '_stock', NULL),
(1159, 151, '_stock_status', 'instock'),
(1160, 151, '_product_version', '3.3.5'),
(1161, 151, '_price', '3.5'),
(1162, 151, 'product_image', ''),
(1163, 151, '_product_image', 'field_5ad7b436f9caf'),
(1164, 152, '_wc_review_count', '0'),
(1165, 152, '_wc_rating_count', 'a:0:{}'),
(1166, 152, '_wc_average_rating', '0'),
(1167, 152, '_edit_lock', '1524642244:2'),
(1168, 152, '_edit_last', '2'),
(1169, 152, '_sku', ''),
(1170, 152, '_regular_price', '3.5'),
(1171, 152, '_sale_price', ''),
(1172, 152, '_sale_price_dates_from', ''),
(1173, 152, '_sale_price_dates_to', ''),
(1174, 152, 'total_sales', '0'),
(1175, 152, '_tax_status', 'taxable'),
(1176, 152, '_tax_class', ''),
(1177, 152, '_manage_stock', 'no'),
(1178, 152, '_backorders', 'no'),
(1179, 152, '_sold_individually', 'no'),
(1180, 152, '_weight', ''),
(1181, 152, '_length', ''),
(1182, 152, '_width', ''),
(1183, 152, '_height', ''),
(1184, 152, '_upsell_ids', 'a:0:{}'),
(1185, 152, '_crosssell_ids', 'a:0:{}'),
(1186, 152, '_purchase_note', ''),
(1187, 152, '_default_attributes', 'a:0:{}'),
(1188, 152, '_virtual', 'no'),
(1189, 152, '_downloadable', 'no'),
(1190, 152, '_product_image_gallery', ''),
(1191, 152, '_download_limit', '-1'),
(1192, 152, '_download_expiry', '-1'),
(1193, 152, '_stock', NULL),
(1194, 152, '_stock_status', 'instock'),
(1195, 152, '_product_version', '3.3.5'),
(1196, 152, '_price', '3.5'),
(1197, 152, 'product_image', ''),
(1198, 152, '_product_image', 'field_5ad7b436f9caf'),
(1199, 103, 'product_image', ''),
(1200, 103, '_product_image', 'field_5ad7b436f9caf'),
(1201, 102, 'product_image', ''),
(1202, 102, '_product_image', 'field_5ad7b436f9caf'),
(1203, 153, '_wp_attached_file', '2018/04/crumble.jpg'),
(1204, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2006;s:6:\"height\";i:4016;s:4:\"file\";s:19:\"2018/04/crumble.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"crumble-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"crumble-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"crumble-768x1538.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"crumble-511x1024.jpg\";s:5:\"width\";i:511;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"crumble-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"crumble-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"crumble-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"crumble-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1205, 154, '_wp_attached_file', '2018/04/muffin.jpg'),
(1206, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2006;s:6:\"height\";i:4016;s:4:\"file\";s:18:\"2018/04/muffin.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"muffin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"muffin-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"muffin-768x1538.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"muffin-511x1024.jpg\";s:5:\"width\";i:511;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"muffin-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"muffin-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"muffin-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"muffin-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1207, 155, '_wp_attached_file', '2018/04/panacotta.jpg'),
(1208, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2006;s:6:\"height\";i:4016;s:4:\"file\";s:21:\"2018/04/panacotta.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"panacotta-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"panacotta-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"panacotta-768x1538.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"panacotta-511x1024.jpg\";s:5:\"width\";i:511;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"panacotta-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"panacotta-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"panacotta-600x1201.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"panacotta-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1209, 152, '_thumbnail_id', '154'),
(1210, 103, '_thumbnail_id', '155'),
(1211, 102, '_thumbnail_id', '153'),
(1212, 156, 'portraits', '107'),
(1213, 156, '_portraits', 'field_5ad65afb66863'),
(1214, 156, 'nom_1', 'Cyril Lablanche'),
(1215, 156, '_nom_1', 'field_5ad65b1a66864'),
(1216, 156, 'nom_2', 'Anne-Laure Noga'),
(1217, 156, '_nom_2', 'field_5ad65b5d66865'),
(1218, 156, 'titre_gauche', 'On s\'affaire en cuisine.'),
(1219, 156, '_titre_gauche', 'field_5ad65b7466866'),
(1220, 156, 'texte_droite', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nDu frais, des produits de saison, nos producteurs du coin et beaucoup d’imagination :\r\nAnne-Laure Noga et Cyril Lablanche vous proposent une cuisine savoureuse et pleine de santé, qui fait la part belle aux produits du Luberon, plus quelques envies d’ailleurs. <strong>Tout fait maison à lourmarin.</strong>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1221, 156, '_texte_droite', 'field_5ad65b9666867'),
(1222, 156, 'photo_produits', '112'),
(1223, 156, '_photo_produits', 'field_5ad65c71ff5fb'),
(1224, 156, 'titre', 'Nos producteurs préférés'),
(1225, 156, '_titre', 'field_5ad65c48ff5fa'),
(1226, 156, 'titre_gauche_2', 'On les aime.'),
(1227, 156, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(1228, 156, 'texte_droite_2', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLa charcuterie artisanale de M. Pourcin à Lauris.\r\nLes fromages de chèvre de Mme Morard à Buoux.\r\nLes légumes de M. Isouard à Vaugines, de M. Argentin à Ansouis et du Luberon Paysan à La Tour d’Aigues. Les huiles d’olive de La Bastide du Laval à Cadenet. les thés de Rebecca Oswald à Pertuis.\r\nLes fleurs de La Coccinelle en Luberon à Cucuron.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1229, 156, '_texte_droite_2', 'field_5ad65cadff5fd'),
(1230, 157, 'portraits', '107'),
(1231, 157, '_portraits', 'field_5ad65afb66863'),
(1232, 157, 'nom_1', 'Cyril Lablanche'),
(1233, 157, '_nom_1', 'field_5ad65b1a66864'),
(1234, 157, 'nom_2', 'Anne-Laure Noga'),
(1235, 157, '_nom_2', 'field_5ad65b5d66865'),
(1236, 157, 'titre_gauche', 'On s\'affaire en cuisine.'),
(1237, 157, '_titre_gauche', 'field_5ad65b7466866'),
(1238, 157, 'texte_droite', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nDu frais, des produits de saison, nos producteurs du coin et beaucoup d’imagination :\r\nAnne-Laure Noga et Cyril Lablanche vous proposent une cuisine savoureuse et pleine de santé, qui fait la part belle aux produits du Luberon, plus quelques envies d’ailleurs.\r\n\r\n<strong>Tout fait maison à lourmarin.</strong>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1239, 157, '_texte_droite', 'field_5ad65b9666867'),
(1240, 157, 'photo_produits', '112'),
(1241, 157, '_photo_produits', 'field_5ad65c71ff5fb'),
(1242, 157, 'titre', 'Nos producteurs préférés'),
(1243, 157, '_titre', 'field_5ad65c48ff5fa'),
(1244, 157, 'titre_gauche_2', 'On les aime.'),
(1245, 157, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(1246, 157, 'texte_droite_2', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLa charcuterie artisanale de M. Pourcin à Lauris.\r\nLes fromages de chèvre de Mme Morard à Buoux.\r\nLes légumes de M. Isouard à Vaugines, de M. Argentin à Ansouis et du Luberon Paysan à La Tour d’Aigues. Les huiles d’olive de La Bastide du Laval à Cadenet. les thés de Rebecca Oswald à Pertuis.\r\nLes fleurs de La Coccinelle en Luberon à Cucuron.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1247, 157, '_texte_droite_2', 'field_5ad65cadff5fd'),
(1248, 158, 'portraits', '107'),
(1249, 158, '_portraits', 'field_5ad65afb66863'),
(1250, 158, 'nom_1', 'Cyril Lablanche'),
(1251, 158, '_nom_1', 'field_5ad65b1a66864'),
(1252, 158, 'nom_2', 'Anne-Laure Noga'),
(1253, 158, '_nom_2', 'field_5ad65b5d66865'),
(1254, 158, 'titre_gauche', 'On s\'affaire en cuisine.'),
(1255, 158, '_titre_gauche', 'field_5ad65b7466866'),
(1256, 158, 'texte_droite', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nDu frais, des produits de saison, nos producteurs du coin et beaucoup d’imagination :\r\nAnne-Laure Noga et Cyril Lablanche vous proposent une cuisine savoureuse et pleine de santé, qui fait la part belle aux produits du Luberon, plus quelques envies d’ailleurs.\r\n\r\n<strong>Tout fait maison à Lourmarin.</strong>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1257, 158, '_texte_droite', 'field_5ad65b9666867'),
(1258, 158, 'photo_produits', '112'),
(1259, 158, '_photo_produits', 'field_5ad65c71ff5fb'),
(1260, 158, 'titre', 'Nos producteurs préférés'),
(1261, 158, '_titre', 'field_5ad65c48ff5fa'),
(1262, 158, 'titre_gauche_2', 'On les aime.'),
(1263, 158, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(1264, 158, 'texte_droite_2', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLa charcuterie artisanale de M. Pourcin à Lauris.\r\nLes fromages de chèvre de Mme Morard à Buoux.\r\nLes légumes de M. Isouard à Vaugines, de M. Argentin à Ansouis et du Luberon Paysan à La Tour d’Aigues. Les huiles d’olive de La Bastide du Laval à Cadenet. les thés de Rebecca Oswald à Pertuis.\r\nLes fleurs de La Coccinelle en Luberon à Cucuron.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1265, 158, '_texte_droite_2', 'field_5ad65cadff5fd'),
(1266, 159, '_wp_attached_file', '2018/04/CARTO-COMMUNES.svg'),
(1267, 160, '_wp_attached_file', '2018/04/photo-sac.jpg'),
(1268, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1391;s:6:\"height\";i:967;s:4:\"file\";s:21:\"2018/04/photo-sac.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"photo-sac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"photo-sac-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"photo-sac-768x534.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:534;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"photo-sac-1024x712.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:712;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"photo-sac-600x417.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"photo-sac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"photo-sac-600x417.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"photo-sac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1269, 161, 'photo_on_livre', '160'),
(1270, 161, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(1271, 161, 'titre_on_livre', 'On livre où vous voulez'),
(1272, 161, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(1273, 161, 'map', '118'),
(1274, 161, '_map', 'field_5ad885c8fd1c9'),
(1275, 161, 'texte_droite_3', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nChez vous au bord de la piscine,\r\nen balade dans le Luberon, au coin du feu l’hiver, ou en rendez-vous de travail :\r\nnous livrons dans un rayon de 20 km\r\nautour de Lourmarin.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1276, 161, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(1277, 86, 'inline_featured_image', '0'),
(1278, 162, 'photo_on_livre', '160'),
(1279, 162, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(1280, 162, 'titre_on_livre', 'On livre où vous voulez'),
(1281, 162, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(1282, 162, 'map', '159'),
(1283, 162, '_map', 'field_5ad885c8fd1c9'),
(1284, 162, 'texte_droite_3', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nChez vous au bord de la piscine,\r\nen balade dans le Luberon, au coin du feu l’hiver, ou en rendez-vous de travail :\r\nnous livrons dans un rayon de 20 km\r\nautour de Lourmarin.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1285, 162, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(1286, 163, 'photo_on_livre', '160'),
(1287, 163, '_photo_on_livre', 'field_5ad885a5fd1c8'),
(1288, 163, 'titre_on_livre', 'On livre où vous voulez'),
(1289, 163, '_titre_on_livre', 'field_5ad8857bfd1c7'),
(1290, 163, 'map', '159'),
(1291, 163, '_map', 'field_5ad885c8fd1c9'),
(1292, 163, 'texte_droite_3', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nChez vous au bord de la piscine,\r\nen balade dans le Luberon, au coin du feu l’hiver,\r\n\r\nou en rendez-vous de travail :\r\nnous livrons dans un rayon de 20 km\r\nautour de Lourmarin.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1293, 163, '_texte_droite_3', 'field_5ad885d6fd1ca'),
(1294, 164, 'portraits', '107'),
(1295, 164, '_portraits', 'field_5ad65afb66863'),
(1296, 164, 'nom_1', 'Cyril Lablanche'),
(1297, 164, '_nom_1', 'field_5ad65b1a66864'),
(1298, 164, 'nom_2', 'Anne-Laure Noga'),
(1299, 164, '_nom_2', 'field_5ad65b5d66865'),
(1300, 164, 'titre_gauche', 'On s\'affaire en cuisine.'),
(1301, 164, '_titre_gauche', 'field_5ad65b7466866'),
(1302, 164, 'texte_droite', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nDu frais, des produits de saison, nos producteurs du coin et beaucoup d’imagination :\r\nAnne-Laure Noga et Cyril Lablanche vous proposent une cuisine savoureuse et pleine de santé, qui fait la part belle aux produits du Luberon, plus quelques envies d’ailleurs.\r\n\r\n<strong>Tout fait maison à Lourmarin.</strong>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1303, 164, '_texte_droite', 'field_5ad65b9666867'),
(1304, 164, 'photo_produits', '112'),
(1305, 164, '_photo_produits', 'field_5ad65c71ff5fb'),
(1306, 164, 'titre', 'Nos producteurs préférés'),
(1307, 164, '_titre', 'field_5ad65c48ff5fa'),
(1308, 164, 'titre_gauche_2', 'On les aime.'),
(1309, 164, '_titre_gauche_2', 'field_5ad65c8cff5fc'),
(1310, 164, 'texte_droite_2', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLa charcuterie artisanale de M. Pourcin à Lauris.\r\nLes fromages de chèvre de Mme Morard à Buoux.\r\nLes légumes de M. Isouard à Vaugines, de M. Argentin à Ansouis et du Luberon Paysan à La Tour d\'Aigues. Les huiles d’olive de La Bastide du Laval à Cadenet. les thés de Rebecca Oswald à Pertuis.\r\nLes fleurs de La Coccinelle en Luberon à Cucuron.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1311, 164, '_texte_droite_2', 'field_5ad65cadff5fd'),
(1312, 2, 'inline_featured_image', '0'),
(1313, 165, '_wp_attached_file', '2018/04/motif.svg'),
(1314, 166, 'inline_featured_image', '0'),
(1315, 166, '_edit_last', '2'),
(1316, 166, '_edit_lock', '1525102960:2'),
(1317, 168, 'inline_featured_image', '0'),
(1318, 168, '_edit_last', '2'),
(1319, 168, '_edit_lock', '1524835444:2'),
(1320, 170, 'inline_featured_image', '0'),
(1321, 170, '_edit_last', '2'),
(1322, 170, '_edit_lock', '1524835459:2'),
(1323, 172, '_menu_item_type', 'post_type'),
(1324, 172, '_menu_item_menu_item_parent', '0'),
(1325, 172, '_menu_item_object_id', '170'),
(1326, 172, '_menu_item_object', 'page'),
(1327, 172, '_menu_item_target', ''),
(1328, 172, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1329, 172, '_menu_item_xfn', ''),
(1330, 172, '_menu_item_url', ''),
(1332, 173, '_menu_item_type', 'post_type'),
(1333, 173, '_menu_item_menu_item_parent', '0'),
(1334, 173, '_menu_item_object_id', '168'),
(1335, 173, '_menu_item_object', 'page'),
(1336, 173, '_menu_item_target', ''),
(1337, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1338, 173, '_menu_item_xfn', ''),
(1339, 173, '_menu_item_url', ''),
(1341, 174, '_menu_item_type', 'post_type'),
(1342, 174, '_menu_item_menu_item_parent', '0'),
(1343, 174, '_menu_item_object_id', '166'),
(1344, 174, '_menu_item_object', 'page'),
(1345, 174, '_menu_item_target', ''),
(1346, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1347, 174, '_menu_item_xfn', ''),
(1348, 174, '_menu_item_url', ''),
(1350, 175, '_wp_attached_file', '2018/04/motif-2.svg'),
(1351, 182, 'inline_featured_image', '0'),
(1352, 182, '_wc_review_count', '0'),
(1353, 182, '_wc_rating_count', 'a:0:{}'),
(1354, 182, '_wc_average_rating', '0'),
(1355, 182, '_edit_lock', '1525103164:2'),
(1356, 182, '_edit_last', '2'),
(1357, 182, '_sku', ''),
(1358, 182, '_regular_price', '12.5'),
(1359, 182, '_sale_price', ''),
(1360, 182, '_sale_price_dates_from', ''),
(1361, 182, '_sale_price_dates_to', ''),
(1362, 182, 'total_sales', '0'),
(1363, 182, '_tax_status', 'taxable'),
(1364, 182, '_tax_class', ''),
(1365, 182, '_manage_stock', 'no'),
(1366, 182, '_backorders', 'no'),
(1367, 182, '_sold_individually', 'no'),
(1368, 182, '_weight', ''),
(1369, 182, '_length', ''),
(1370, 182, '_width', ''),
(1371, 182, '_height', ''),
(1372, 182, '_upsell_ids', 'a:0:{}'),
(1373, 182, '_crosssell_ids', 'a:0:{}'),
(1374, 182, '_purchase_note', ''),
(1375, 182, '_default_attributes', 'a:0:{}'),
(1376, 182, '_virtual', 'no'),
(1377, 182, '_downloadable', 'no'),
(1378, 182, '_product_image_gallery', ''),
(1379, 182, '_download_limit', '-1'),
(1380, 182, '_download_expiry', '-1'),
(1381, 182, '_stock', NULL),
(1382, 182, '_stock_status', 'instock'),
(1383, 182, '_product_version', '3.3.5'),
(1384, 182, '_price', '12.5'),
(1385, 182, 'product_image', ''),
(1386, 182, '_product_image', 'field_5ad7b436f9caf'),
(1387, 183, 'inline_featured_image', '0'),
(1388, 183, '_wc_review_count', '0'),
(1389, 183, '_wc_rating_count', 'a:0:{}'),
(1390, 183, '_wc_average_rating', '0'),
(1391, 183, '_edit_lock', '1525103189:2'),
(1392, 183, '_edit_last', '2'),
(1393, 183, '_sku', ''),
(1394, 183, '_regular_price', '15.5'),
(1395, 183, '_sale_price', ''),
(1396, 183, '_sale_price_dates_from', ''),
(1397, 183, '_sale_price_dates_to', ''),
(1398, 183, 'total_sales', '0'),
(1399, 183, '_tax_status', 'taxable'),
(1400, 183, '_tax_class', ''),
(1401, 183, '_manage_stock', 'no'),
(1402, 183, '_backorders', 'no'),
(1403, 183, '_sold_individually', 'no'),
(1404, 183, '_weight', ''),
(1405, 183, '_length', ''),
(1406, 183, '_width', ''),
(1407, 183, '_height', ''),
(1408, 183, '_upsell_ids', 'a:0:{}'),
(1409, 183, '_crosssell_ids', 'a:0:{}'),
(1410, 183, '_purchase_note', ''),
(1411, 183, '_default_attributes', 'a:0:{}'),
(1412, 183, '_virtual', 'no'),
(1413, 183, '_downloadable', 'no'),
(1414, 183, '_product_image_gallery', ''),
(1415, 183, '_download_limit', '-1'),
(1416, 183, '_download_expiry', '-1'),
(1417, 183, '_stock', NULL),
(1418, 183, '_stock_status', 'instock'),
(1419, 183, '_product_version', '3.3.5'),
(1420, 183, '_price', '15.5'),
(1421, 183, 'product_image', ''),
(1422, 183, '_product_image', 'field_5ad7b436f9caf'),
(1423, 184, 'inline_featured_image', '0'),
(1424, 184, '_wc_review_count', '0'),
(1425, 184, '_wc_rating_count', 'a:0:{}'),
(1426, 184, '_wc_average_rating', '0'),
(1427, 184, '_edit_lock', '1525103213:2'),
(1428, 184, '_edit_last', '2'),
(1429, 184, '_sku', ''),
(1430, 184, '_regular_price', '15.5'),
(1431, 184, '_sale_price', ''),
(1432, 184, '_sale_price_dates_from', ''),
(1433, 184, '_sale_price_dates_to', ''),
(1434, 184, 'total_sales', '0'),
(1435, 184, '_tax_status', 'taxable'),
(1436, 184, '_tax_class', ''),
(1437, 184, '_manage_stock', 'no'),
(1438, 184, '_backorders', 'no'),
(1439, 184, '_sold_individually', 'no'),
(1440, 184, '_weight', ''),
(1441, 184, '_length', ''),
(1442, 184, '_width', ''),
(1443, 184, '_height', ''),
(1444, 184, '_upsell_ids', 'a:0:{}'),
(1445, 184, '_crosssell_ids', 'a:0:{}'),
(1446, 184, '_purchase_note', ''),
(1447, 184, '_default_attributes', 'a:0:{}'),
(1448, 184, '_virtual', 'no'),
(1449, 184, '_downloadable', 'no'),
(1450, 184, '_product_image_gallery', ''),
(1451, 184, '_download_limit', '-1'),
(1452, 184, '_download_expiry', '-1'),
(1453, 184, '_stock', NULL),
(1454, 184, '_stock_status', 'instock'),
(1455, 184, '_product_version', '3.3.5'),
(1456, 184, '_price', '15.5'),
(1457, 184, 'product_image', ''),
(1458, 184, '_product_image', 'field_5ad7b436f9caf'),
(1459, 185, 'inline_featured_image', '0'),
(1460, 185, '_wc_review_count', '0'),
(1461, 185, '_wc_rating_count', 'a:0:{}'),
(1462, 185, '_wc_average_rating', '0'),
(1463, 185, '_edit_lock', '1525103238:2'),
(1464, 185, '_edit_last', '2'),
(1465, 185, '_sku', ''),
(1466, 185, '_regular_price', '18.5'),
(1467, 185, '_sale_price', ''),
(1468, 185, '_sale_price_dates_from', ''),
(1469, 185, '_sale_price_dates_to', ''),
(1470, 185, 'total_sales', '0'),
(1471, 185, '_tax_status', 'taxable'),
(1472, 185, '_tax_class', ''),
(1473, 185, '_manage_stock', 'no'),
(1474, 185, '_backorders', 'no'),
(1475, 185, '_sold_individually', 'no'),
(1476, 185, '_weight', ''),
(1477, 185, '_length', ''),
(1478, 185, '_width', ''),
(1479, 185, '_height', ''),
(1480, 185, '_upsell_ids', 'a:0:{}'),
(1481, 185, '_crosssell_ids', 'a:0:{}'),
(1482, 185, '_purchase_note', ''),
(1483, 185, '_default_attributes', 'a:0:{}'),
(1484, 185, '_virtual', 'no'),
(1485, 185, '_downloadable', 'no'),
(1486, 185, '_product_image_gallery', ''),
(1487, 185, '_download_limit', '-1'),
(1488, 185, '_download_expiry', '-1'),
(1489, 185, '_stock', NULL),
(1490, 185, '_stock_status', 'instock'),
(1491, 185, '_product_version', '3.3.5'),
(1492, 185, '_price', '18.5'),
(1493, 185, 'product_image', ''),
(1494, 185, '_product_image', 'field_5ad7b436f9caf'),
(1495, 186, 'inline_featured_image', '0'),
(1496, 186, '_wc_review_count', '0'),
(1497, 186, '_wc_rating_count', 'a:0:{}'),
(1498, 186, '_wc_average_rating', '0'),
(1499, 186, '_edit_lock', '1525103263:2'),
(1500, 186, '_edit_last', '2'),
(1501, 186, '_sku', ''),
(1502, 186, '_regular_price', '14.5'),
(1503, 186, '_sale_price', ''),
(1504, 186, '_sale_price_dates_from', ''),
(1505, 186, '_sale_price_dates_to', ''),
(1506, 186, 'total_sales', '0'),
(1507, 186, '_tax_status', 'taxable'),
(1508, 186, '_tax_class', ''),
(1509, 186, '_manage_stock', 'no'),
(1510, 186, '_backorders', 'no'),
(1511, 186, '_sold_individually', 'no'),
(1512, 186, '_weight', ''),
(1513, 186, '_length', ''),
(1514, 186, '_width', ''),
(1515, 186, '_height', ''),
(1516, 186, '_upsell_ids', 'a:0:{}'),
(1517, 186, '_crosssell_ids', 'a:0:{}'),
(1518, 186, '_purchase_note', ''),
(1519, 186, '_default_attributes', 'a:0:{}'),
(1520, 186, '_virtual', 'no'),
(1521, 186, '_downloadable', 'no'),
(1522, 186, '_product_image_gallery', ''),
(1523, 186, '_download_limit', '-1'),
(1524, 186, '_download_expiry', '-1'),
(1525, 186, '_stock', NULL),
(1526, 186, '_stock_status', 'instock'),
(1527, 186, '_product_version', '3.3.5'),
(1528, 186, '_price', '14.5'),
(1529, 186, 'product_image', ''),
(1530, 186, '_product_image', 'field_5ad7b436f9caf'),
(1531, 187, 'inline_featured_image', '0'),
(1532, 187, '_wc_review_count', '0'),
(1533, 187, '_wc_rating_count', 'a:0:{}'),
(1534, 187, '_wc_average_rating', '0'),
(1535, 187, '_edit_lock', '1525103286:2'),
(1536, 187, '_edit_last', '2'),
(1537, 187, '_sku', ''),
(1538, 187, '_regular_price', '17.5'),
(1539, 187, '_sale_price', ''),
(1540, 187, '_sale_price_dates_from', ''),
(1541, 187, '_sale_price_dates_to', ''),
(1542, 187, 'total_sales', '0'),
(1543, 187, '_tax_status', 'taxable'),
(1544, 187, '_tax_class', ''),
(1545, 187, '_manage_stock', 'no'),
(1546, 187, '_backorders', 'no'),
(1547, 187, '_sold_individually', 'no'),
(1548, 187, '_weight', ''),
(1549, 187, '_length', ''),
(1550, 187, '_width', ''),
(1551, 187, '_height', ''),
(1552, 187, '_upsell_ids', 'a:0:{}'),
(1553, 187, '_crosssell_ids', 'a:0:{}'),
(1554, 187, '_purchase_note', ''),
(1555, 187, '_default_attributes', 'a:0:{}'),
(1556, 187, '_virtual', 'no'),
(1557, 187, '_downloadable', 'no'),
(1558, 187, '_product_image_gallery', ''),
(1559, 187, '_download_limit', '-1'),
(1560, 187, '_download_expiry', '-1'),
(1561, 187, '_stock', NULL),
(1562, 187, '_stock_status', 'instock'),
(1563, 187, '_product_version', '3.3.5'),
(1564, 187, '_price', '17.5'),
(1565, 187, 'product_image', ''),
(1566, 187, '_product_image', 'field_5ad7b436f9caf'),
(1567, 188, 'inline_featured_image', '0'),
(1568, 188, '_wc_review_count', '0'),
(1569, 188, '_wc_rating_count', 'a:0:{}'),
(1570, 188, '_wc_average_rating', '0'),
(1571, 188, '_edit_lock', '1525103319:2'),
(1572, 188, '_edit_last', '2'),
(1573, 188, '_sku', ''),
(1574, 188, '_regular_price', '2.5'),
(1575, 188, '_sale_price', ''),
(1576, 188, '_sale_price_dates_from', ''),
(1577, 188, '_sale_price_dates_to', ''),
(1578, 188, 'total_sales', '0'),
(1579, 188, '_tax_status', 'taxable'),
(1580, 188, '_tax_class', ''),
(1581, 188, '_manage_stock', 'no'),
(1582, 188, '_backorders', 'no'),
(1583, 188, '_sold_individually', 'no'),
(1584, 188, '_weight', ''),
(1585, 188, '_length', ''),
(1586, 188, '_width', ''),
(1587, 188, '_height', ''),
(1588, 188, '_upsell_ids', 'a:0:{}'),
(1589, 188, '_crosssell_ids', 'a:0:{}'),
(1590, 188, '_purchase_note', ''),
(1591, 188, '_default_attributes', 'a:0:{}'),
(1592, 188, '_virtual', 'no'),
(1593, 188, '_downloadable', 'no'),
(1594, 188, '_product_image_gallery', ''),
(1595, 188, '_download_limit', '-1'),
(1596, 188, '_download_expiry', '-1'),
(1597, 188, '_stock', NULL),
(1598, 188, '_stock_status', 'instock'),
(1599, 188, '_product_version', '3.3.5'),
(1600, 188, '_price', '2.5'),
(1601, 188, 'product_image', ''),
(1602, 188, '_product_image', 'field_5ad7b436f9caf'),
(1603, 189, 'inline_featured_image', '0'),
(1604, 189, '_wc_review_count', '0'),
(1605, 189, '_wc_rating_count', 'a:0:{}'),
(1606, 189, '_wc_average_rating', '0'),
(1607, 189, '_edit_lock', '1525103445:2'),
(1608, 189, '_edit_last', '2'),
(1609, 189, '_sku', ''),
(1610, 189, '_regular_price', '2.5'),
(1611, 189, '_sale_price', ''),
(1612, 189, '_sale_price_dates_from', ''),
(1613, 189, '_sale_price_dates_to', ''),
(1614, 189, 'total_sales', '0'),
(1615, 189, '_tax_status', 'taxable'),
(1616, 189, '_tax_class', ''),
(1617, 189, '_manage_stock', 'no'),
(1618, 189, '_backorders', 'no'),
(1619, 189, '_sold_individually', 'no'),
(1620, 189, '_weight', ''),
(1621, 189, '_length', ''),
(1622, 189, '_width', ''),
(1623, 189, '_height', ''),
(1624, 189, '_upsell_ids', 'a:0:{}'),
(1625, 189, '_crosssell_ids', 'a:0:{}'),
(1626, 189, '_purchase_note', ''),
(1627, 189, '_default_attributes', 'a:0:{}'),
(1628, 189, '_virtual', 'no'),
(1629, 189, '_downloadable', 'no'),
(1630, 189, '_product_image_gallery', ''),
(1631, 189, '_download_limit', '-1'),
(1632, 189, '_download_expiry', '-1'),
(1633, 189, '_stock', NULL),
(1634, 189, '_stock_status', 'instock'),
(1635, 189, '_product_version', '3.3.5'),
(1636, 189, '_price', '2.5'),
(1637, 189, 'product_image', ''),
(1638, 189, '_product_image', 'field_5ad7b436f9caf');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_posts`
--

CREATE TABLE `ldsl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_posts`
--

INSERT INTO `ldsl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-17 21:28:03', '2017-07-17 19:28:03', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-07-17 21:28:03', '2017-07-17 19:28:03', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-17 21:28:03', '2017-07-17 19:28:03', '', 'Un tour en cuisine', '', 'publish', 'closed', 'open', '', 'un-tour-en-cuisine', '', '', '2018-04-26 09:52:08', '2018-04-26 07:52:08', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-07-17 21:45:59', '2017-07-17 19:45:59', '<div class=\"formulaire-first-part\">\r\n<label>[text* your-name placeholder \"Nom\"] </label><label>[text* your-firstname placeholder \"Prénom\"] </label><label>[email* your-email placeholder \"Email\"] </label><label>[tel* tel-38 placeholder \"Numéro de téléphone\"]</label>\r\n</div>\r\n\r\n<label> Choisissez votre date : \r\n[date date-22]</label>\r\n\r\n<label> Lieu de livraison : \r\n[textarea* textarea-383 placeholder \"Merci d\'être le plus précis possible...\"]</label>\r\n\r\n<div class=\"menus\">\r\n<div class=\"menu1\">\r\n<label> Choisissez un menu : \r\n[select menu-86 \"Rando\" \"Made in Provence\" \"En amoureux\" \"Prestige\" \"Apéro champêtre\" \"Bento Pitchoun\"]</label><label> Pour [number number-87 min:2 \"2\"] personnes</label>\r\n</div>\r\n[checkbox checkbox-99 \"Ajouter un menu ?\"]\r\n\r\n[group group-892]\r\n<div class=\"menu2\">\r\n<label> Choisissez un menu : \r\n[select menu-87 \"Rando\" \"Made in Provence\" \"En amoureux\" \"Prestige\" \"Apéro champêtre\" \"Bento Pitchoun\"]</label><label> Pour [number number-88 min:2 \"2\"] personnes</label>\r\n</div>\r\n[checkbox checkbox-100 \"Ajouter un menu ?\"]\r\n\r\n[group group-893]\r\n<div class=\"menu3\">\r\n<label> Choisissez un menu : \r\n[select menu-88 \"Bento Pitchoun\"]</label><label> Pour [number number-89 min:1] enfant(s)</label>\r\n</div>\r\n[/group]\r\n[/group]\r\n</div>\r\n\r\n\r\n<label> \r\nUne allergie ? Une demande particulière ? Vous souhaitez ajouter une boisson ? N\'hésitez pas à nous laisser un message : </label>\r\n\r\n<label> [textarea your-message placeholder \"Votre message...\"] </label>\r\n\r\n[submit \"Envoyer\"]\n1\nLes déjeuners sur l\'herbe \"[your-subject]\"\n[your-name] <lasoupe@agencemyso.com>\nlasoupe@agencemyso.com\nDe : [your-firstname] [your-name] <[your-email]>\r\n\r\nDate : [date-22]\r\nAdultes : [number-469]\r\nEnfants : [number-470]\r\nChoix de la formule : [menu-86]\r\n\r\n[your-message]\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Les déjeuners sur l\'herbe (http://localhost:8888/lesdejsurlherbe)\nReply-To: [your-email]\n\n\n\n\nLes déjeuners sur l\'herbe \"[your-subject]\"\nLes déjeuners sur l\'herbe <lasoupe@agencemyso.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Les déjeuners sur l&#039;herbe (http://localhost:8888/lesdejsurlherbe)\nReply-To: lasoupe@agencemyso.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d\'envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors de la mise en ligne du fichier.\nVous n’êtes pas autorisé à mettre en ligne ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors de la mise en ligne du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone est invalide.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2017-08-30 14:48:45', '2017-08-30 12:48:45', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2017-07-17 21:47:33', '2017-07-17 19:47:33', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>[contact-form-7 id=\"5\" title=\"Formulaire de contact 1\"]</blockquote>', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-17 21:47:33', '2017-07-17 19:47:33', '', 2, 'http://localhost:8888/lesdejsurlherbe/2017/07/17/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-07-17 22:31:36', '2017-07-17 20:31:36', '[contact-form-7 id=\"5\" title=\"Formulaire de contact 1\"]', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-17 22:31:36', '2017-07-17 20:31:36', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-07-19 13:34:53', '2017-07-19 11:34:53', 'Vous souhaitez réserver ?\r\n\r\nÉcrivez-vous !\r\n\r\n[contact-form-7 id=\"5\" title=\"Formulaire de contact 1\"]', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 13:34:53', '2017-07-19 11:34:53', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-07-19 13:37:28', '2017-07-19 11:37:28', 'Vous souhaitez réserver ?\r\n\r\nÉcrivez-vous !', 'Page formulaire', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 13:37:28', '2017-07-19 11:37:28', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-07-19 14:00:04', '2017-07-19 12:00:04', 'Nos formules\r\n\r\n&nbsp;', 'Page formulaire', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 14:00:04', '2017-07-19 12:00:04', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-07-19 14:03:19', '2017-07-19 12:03:19', 'Nos formules\r\n\r\nFormule en amoureux blablabla\r\n\r\nFormule travailleurs\r\n\r\nFormule truc\r\n\r\nFormule machin', 'Page formulaire', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 14:03:19', '2017-07-19 12:03:19', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-07-19 14:21:14', '2017-07-19 12:21:14', 'Formule en amoureux blablabla\r\n\r\nFormule travailleurs\r\n\r\nFormule truc\r\n\r\nFormule machin', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 14:21:14', '2017-07-19 12:21:14', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-07-21 10:35:27', '2017-07-21 08:35:27', '<h3><img class=\"alignnone size-medium wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"235\" height=\"300\" />Menu « Working lunch » 16 euros</h3>\nVoir le détail\n<h3>Menu « holiday Lunch » 18 euros</h3>\nVoir le détail\n<h3>Menu « Rando » 24 euros</h3>\nVoir le détail\n<h3>Menu « en amoureux » 28 euros</h3>\n<img class=\"alignnone  wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"82\" height=\"86\" />Voir le détail\n<h3>Menu « Prestige » 35 euros</h3>\nVoir le détail\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-07-21 10:35:27', '2017-07-21 08:35:27', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2017-07-19 15:19:51', '2017-07-19 13:19:51', '<div class=\"page\" title=\"Page 1\"></div>\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nMenu « Working lunch » 16 euros\r\nPas besoin de se déplacer, nous vous proposons un menu équilibré, livré sur votre lieu de travail, dans un sac en papier contenant une salade fraicheur , un cake aux légumes de saison,le dessert du jour, une bouteille d’eau.\r\n\r\nMenu « holiday Lunch » 18 euros\r\nRestez au bord de la piscine, on s’occupe de tout!\r\nVotre tote bag en jute, livré sur votre lieu de villégiature, comprenant une salade fraicheur, une tarte aux légumes de saison, un dessert du jour, et une citronnade maison à la verveine du jardin.\r\n\r\nMenu « Rando » 24 euros\r\nUn sac a dos isotherme qui se commande la veille, livré sur un lieu déterminé avec vous,\r\nServi dans de la vrai vaisselle (assiettes, verres, couverts, bento box, plaid), pour un pique nique chic qui vous accompagne lors de vos escapades. Un menu imaginé pour vous redonner un coup de fouet composé d’une salade vitaminée, de boules de riz énergétiques, d’une brochette de poulet mariné aux citron vert et épices, d’un dessert du jour et d’une bouteille d’eau, servi sur un wok de légumes de saison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n\r\nMenu « en amoureux » 28 euros\r\nUn panier en osier, une nappe blanche, des pétales de roses: idéal pour déclarer sa flamme !\r\nQui se commande la veille, livré sur un lieu déterminé avec vous, ce menu servi dans de la jolie vaisselle et des contenants adaptés, comprenant une salade fraicheur, une bento box aux saveurs régionales (ratatouille, brochettes de légumes,tartelette,billes de tomate et mozzarelle au pesto), un dessert du jour, une citronnade maison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n\r\nMenu « Prestige » 35 euros\r\nPour une envie de se faire plaisir, pour toute occasion, nous avons concocté un menu de saison qui se commande la veille, livré sur un lieu déterminé avec vous, servi dans panier en osier avec vaisselle, et contenants adaptés, comprenant un assortiment de muffins salés aux saveurs provençales, une salade fraicheur, une tartine aux filets de rougets et yuzu, un wok de légumes de saison, un taboulé de quinoa aux herbe fraiche, un dessert du jour et d’une citronnade maison.Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n\r\nMenu « Apéro Champêtre » 18 euros (4 personnes minimum)\r\nPour partager un moment de convivialité , sans avoir avoir a lever le petit doigt, ce panier est idéal pour un apéritif composé de tapenades, anchoïade, caviar de tomate, d’un pain de campagne, ainsi que d’un assortiment de charcuteries artisanales et de fromages sélectionnés par nos soins. Le tout agrémenté d’un bouteille de vin de la région en rouge, blanc ou rosé. Commandé la veille, livré sur un lieu déterminé avec vous, nous récupérons le tout deux heures plus tard ou à votre convenance.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 15:19:51', '2017-07-19 13:19:51', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-07-19 15:21:42', '2017-07-19 13:21:42', '<div class=\"page\" title=\"Page 1\"></div>\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<h3 class=\"column\">Menu « Working lunch » 16 euros</h3>\r\n<div class=\"column\">Pas besoin de se déplacer, nous vous proposons un menu équilibré, livré sur votre lieu de travail, dans un sac en papier contenant une salade fraicheur , un cake aux légumes de saison,le dessert du jour, une bouteille d’eau.\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nRestez au bord de la piscine, on s’occupe de tout!\r\nVotre tote bag en jute, livré sur votre lieu de villégiature, comprenant une salade fraicheur, une tarte aux légumes de saison, un dessert du jour, et une citronnade maison à la verveine du jardin.\r\n<h3>Menu « Rando » 24 euros</h3>\r\nUn sac a dos isotherme qui se commande la veille, livré sur un lieu déterminé avec vous,\r\nServi dans de la vrai vaisselle (assiettes, verres, couverts, bento box, plaid), pour un pique nique chic qui vous accompagne lors de vos escapades. Un menu imaginé pour vous redonner un coup de fouet composé d’une salade vitaminée, de boules de riz énergétiques, d’une brochette de poulet mariné aux citron vert et épices, d’un dessert du jour et d’une bouteille d’eau, servi sur un wok de légumes de saison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\nUn panier en osier, une nappe blanche, des pétales de roses: idéal pour déclarer sa flamme !\r\nQui se commande la veille, livré sur un lieu déterminé avec vous, ce menu servi dans de la jolie vaisselle et des contenants adaptés, comprenant une salade fraicheur, une bento box aux saveurs régionales (ratatouille, brochettes de légumes,tartelette,billes de tomate et mozzarelle au pesto), un dessert du jour, une citronnade maison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nPour une envie de se faire plaisir, pour toute occasion, nous avons concocté un menu de saison qui se commande la veille, livré sur un lieu déterminé avec vous, servi dans panier en osier avec vaisselle, et contenants adaptés, comprenant un assortiment de muffins salés aux saveurs provençales, une salade fraicheur, une tartine aux filets de rougets et yuzu, un wok de légumes de saison, un taboulé de quinoa aux herbe fraiche, un dessert du jour et d’une citronnade maison.Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\nPour partager un moment de convivialité , sans avoir avoir a lever le petit doigt, ce panier est idéal pour un apéritif composé de tapenades, anchoïade, caviar de tomate, d’un pain de campagne, ainsi que d’un assortiment de charcuteries artisanales et de fromages sélectionnés par nos soins. Le tout agrémenté d’un bouteille de vin de la région en rouge, blanc ou rosé. Commandé la veille, livré sur un lieu déterminé avec vous, nous récupérons le tout deux heures plus tard ou à votre convenance.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 15:21:42', '2017-07-19 13:21:42', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-07-19 15:24:05', '2017-07-19 13:24:05', '<h3>Menu « Working lunch » 16 euros</h3>\r\nPas besoin de se déplacer, nous vous proposons un menu équilibré, livré sur votre lieu de travail, dans un sac en papier contenant une salade fraicheur , un cake aux légumes de saison,le dessert du jour, une bouteille d’eau.\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nRestez au bord de la piscine, on s’occupe de tout!\r\nVotre tote bag en jute, livré sur votre lieu de villégiature, comprenant une salade fraicheur, une tarte aux légumes de saison, un dessert du jour, et une citronnade maison à la verveine du jardin.\r\n<h3>Menu « Rando » 24 euros</h3>\r\nUn sac a dos isotherme qui se commande la veille, livré sur un lieu déterminé avec vous,\r\nServi dans de la vrai vaisselle (assiettes, verres, couverts, bento box, plaid), pour un pique nique chic qui vous accompagne lors de vos escapades. Un menu imaginé pour vous redonner un coup de fouet composé d’une salade vitaminée, de boules de riz énergétiques, d’une brochette de poulet mariné aux citron vert et épices, d’un dessert du jour et d’une bouteille d’eau, servi sur un wok de légumes de saison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\nUn panier en osier, une nappe blanche, des pétales de roses: idéal pour déclarer sa flamme !\r\nQui se commande la veille, livré sur un lieu déterminé avec vous, ce menu servi dans de la jolie vaisselle et des contenants adaptés, comprenant une salade fraicheur, une bento box aux saveurs régionales (ratatouille, brochettes de légumes,tartelette,billes de tomate et mozzarelle au pesto), un dessert du jour, une citronnade maison. Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nPour une envie de se faire plaisir, pour toute occasion, nous avons concocté un menu de saison qui se commande la veille, livré sur un lieu déterminé avec vous, servi dans panier en osier avec vaisselle, et contenants adaptés, comprenant un assortiment de muffins salés aux saveurs provençales, une salade fraicheur, une tartine aux filets de rougets et yuzu, un wok de légumes de saison, un taboulé de quinoa aux herbe fraiche, un dessert du jour et d’une citronnade maison.Nous récupérons le tout deux heures plus tard ou a votre convenance.\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\nPour partager un moment de convivialité , sans avoir avoir a lever le petit doigt, ce panier est idéal pour un apéritif composé de tapenades, anchoïade, caviar de tomate, d’un pain de campagne, ainsi que d’un assortiment de charcuteries artisanales et de fromages sélectionnés par nos soins. Le tout agrémenté d’un bouteille de vin de la région en rouge, blanc ou rosé. Commandé la veille, livré sur un lieu déterminé avec vous, nous récupérons le tout deux heures plus tard ou à votre convenance.', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-19 15:24:05', '2017-07-19 13:24:05', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-07-20 22:40:23', '2017-07-20 20:40:23', '<h3>Menu « Working lunch » 16 euros</h3>\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<h3>Menu « Prestige » 35 euros</h3>\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-20 22:40:23', '2017-07-20 20:40:23', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-07-20 22:51:53', '2017-07-20 20:51:53', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\nVoir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\nVoir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-20 22:51:53', '2017-07-20 20:51:53', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-07-21 10:32:21', '2017-07-21 08:32:21', '<h3><img class=\"alignnone size-medium wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"285\" height=\"300\" /> <img class=\"alignnone size-medium wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"235\" height=\"300\" />Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\nVoir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone  wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-21 10:32:21', '2017-07-21 08:32:21', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-07-21 10:35:58', '2017-07-21 08:35:58', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone  wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"70\" height=\"89\" /> Voir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<img class=\"alignnone  wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" />Voir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-21 10:35:58', '2017-07-21 08:35:58', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-07-21 10:37:06', '2017-07-21 08:37:06', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"70\" height=\"89\" /> Voir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" /> Voir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-21 10:37:06', '2017-07-21 08:37:06', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-07-22 10:24:43', '2017-07-22 08:24:43', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"70\" height=\"89\" /> Voir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" /> Voir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" />Voir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos formules', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-22 10:24:43', '2017-07-22 08:24:43', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-07-22 10:40:42', '2017-07-22 08:40:42', 'lasoupe@agencemyso.com\nAgence Myso', 'lasoupe@agencemyso.com', '', 'publish', 'closed', 'closed', '', 'lasoupe-agencemyso-com', '', '', '2017-07-22 10:40:42', '2017-07-22 08:40:42', '', 0, 'http://localhost:8888/lesdejsurlherbe/lasoupe-agencemyso-com/', 0, 'flamingo_contact', '', 0),
(34, 0, '2017-07-22 10:42:14', '2017-07-22 08:42:14', 'julientora@gmail.com\nTora', 'julientora@gmail.com', '', 'publish', 'closed', 'closed', '', 'julientora-gmail-com', '', '', '2017-07-22 10:42:14', '2017-07-22 08:42:14', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=flamingo_contact&p=34', 0, 'flamingo_contact', '', 0),
(35, 0, '2017-07-22 10:42:14', '2017-07-22 08:42:14', 'Tora\nJulien\njulientora@gmail.com\n2\n1\n2017-07-26\nformule 3\nHola que tal ?', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject', '', '', '2017-07-22 10:42:14', '2017-07-22 08:42:14', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=flamingo_inbound&p=35', 0, 'flamingo_inbound', '', 0),
(42, 1, '2017-08-29 11:44:57', '2017-08-29 09:44:57', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"70\" height=\"89\" /> Voir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" /> Voir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" />Voir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 11:44:57', '2017-08-29 09:44:57', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-08-29 11:45:16', '2017-08-29 09:45:16', '', 'Menus', '', 'trash', 'closed', 'closed', '', 'acf_menus__trashed', '', '', '2018-04-13 23:01:55', '2018-04-13 21:01:55', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=43', 0, 'acf', '', 0),
(44, 1, '2017-08-29 12:14:00', '2017-08-29 10:14:00', '<h3>Menu « Working lunch » 16 euros</h3>\r\nVoir le détail\r\n<h3>Menu « holiday Lunch » 18 euros</h3>\r\nVoir le détail\r\n<h3>Menu « Rando » 24 euros</h3>\r\n<img class=\"alignnone wp-image-27\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menusacados-235x300.jpg\" alt=\"\" width=\"70\" height=\"89\" /> Voir le détail\r\n<h3>Menu « en amoureux » 28 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" /> Voir le détail\r\n<h3>Menu « Prestige » 35 euros</h3>\r\n<img class=\"alignnone wp-image-26\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuprestige-285x300.jpg\" alt=\"\" width=\"74\" height=\"78\" />Voir le détail\r\n<h3>Menu « Apéro Champêtre » 18 euros (4 personnes minimum)</h3>\r\n<img class=\"alignnone wp-image-25\" src=\"http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2017/07/menuapero-255x300.jpg\" alt=\"\" width=\"71\" height=\"84\" />  Voir le détail', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 12:14:00', '2017-08-29 10:14:00', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-08-29 12:14:14', '2017-08-29 10:14:14', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 12:14:14', '2017-08-29 10:14:14', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-08-29 13:00:28', '2017-08-29 11:00:28', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:00:28', '2017-08-29 11:00:28', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-08-29 13:00:42', '2017-08-29 11:00:42', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:00:42', '2017-08-29 11:00:42', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-08-29 13:01:10', '2017-08-29 11:01:10', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:01:10', '2017-08-29 11:01:10', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-08-29 13:01:50', '2017-08-29 11:01:50', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:01:50', '2017-08-29 11:01:50', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-08-29 13:02:57', '2017-08-29 11:02:57', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:02:57', '2017-08-29 11:02:57', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-08-29 13:04:25', '2017-08-29 11:04:25', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:04:25', '2017-08-29 11:04:25', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-08-29 13:24:20', '2017-08-29 11:24:20', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:24:20', '2017-08-29 11:24:20', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-08-29 13:24:32', '2017-08-29 11:24:32', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-29 13:24:32', '2017-08-29 11:24:32', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-08-30 15:46:40', '2017-08-30 13:46:40', '', 'Nos menus', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-30 15:46:40', '2017-08-30 13:46:40', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-04-12 15:05:46', '2018-04-12 13:05:46', '', 'Bowl indien', '', 'publish', 'closed', 'closed', '', 'bowl-indien', '', '', '2018-04-12 15:05:46', '2018-04-12 13:05:46', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=menu&#038;p=59', 0, 'menu', '', 0),
(60, 1, '2018-04-12 15:05:46', '2018-04-12 13:05:46', '', 'Bowl indien', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-12 15:05:46', '2018-04-12 13:05:46', '', 59, 'http://localhost:8888/lesdejsurlherbe/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-12 15:05:59', '2018-04-12 13:05:59', '', 'Bowl veggie', '', 'publish', 'closed', 'closed', '', 'bowl-veggie', '', '', '2018-04-12 15:05:59', '2018-04-12 13:05:59', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=menu&#038;p=61', 0, 'menu', '', 0),
(62, 1, '2018-04-12 15:05:59', '2018-04-12 13:05:59', '', 'Bowl veggie', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-04-12 15:05:59', '2018-04-12 13:05:59', '', 61, 'http://localhost:8888/lesdejsurlherbe/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-04-12 15:06:11', '2018-04-12 13:06:11', '', 'Petite faim aux oeufs', '', 'publish', 'closed', 'closed', '', 'petite-faim-aux-oeufs', '', '', '2018-04-12 15:06:11', '2018-04-12 13:06:11', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=menu&#038;p=63', 0, 'menu', '', 0),
(64, 1, '2018-04-12 15:06:11', '2018-04-12 13:06:11', '', 'Petite faim aux oeufs', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-04-12 15:06:11', '2018-04-12 13:06:11', '', 63, 'http://localhost:8888/lesdejsurlherbe/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-04-12 15:06:30', '2018-04-12 13:06:30', '', 'Entremet choco', '', 'publish', 'closed', 'closed', '', 'entremet-choco', '', '', '2018-04-12 15:06:30', '2018-04-12 13:06:30', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=menu&#038;p=65', 0, 'menu', '', 0),
(66, 1, '2018-04-12 15:06:30', '2018-04-12 13:06:30', '', 'Entremet choco', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-04-12 15:06:30', '2018-04-12 13:06:30', '', 65, 'http://localhost:8888/lesdejsurlherbe/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-12 15:29:42', '2018-04-12 13:29:42', '', 'Bowls, brunchs & petites faims', '', 'publish', 'closed', 'closed', '', 'bowls-brunchs-petites-faims', '', '', '2018-04-12 15:34:31', '2018-04-12 13:34:31', '', 0, 'http://localhost:8888/lesdejsurlherbe/boutique/', 0, 'page', '', 0),
(70, 1, '2018-04-12 15:29:42', '2018-04-12 13:29:42', '[woocommerce_cart]', 'Mon panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2018-04-20 14:32:20', '2018-04-20 12:32:20', '', 0, 'http://localhost:8888/lesdejsurlherbe/panier/', 0, 'page', '', 0),
(71, 1, '2018-04-12 15:29:42', '2018-04-12 13:29:42', '[woocommerce_checkout]', 'Commande', '', 'publish', 'closed', 'closed', '', 'commande', '', '', '2018-04-12 15:29:42', '2018-04-12 13:29:42', '', 0, 'http://localhost:8888/lesdejsurlherbe/commande/', 0, 'page', '', 0),
(72, 1, '2018-04-12 15:29:42', '2018-04-12 13:29:42', '[woocommerce_my_account]', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2018-04-12 15:29:42', '2018-04-12 13:29:42', '', 0, 'http://localhost:8888/lesdejsurlherbe/mon-compte/', 0, 'page', '', 0),
(75, 1, '2018-04-12 15:32:32', '2018-04-12 13:32:32', '<div dir=\"auto\">Quinoa aux épices, salade de pois chiches et échalotes, carottes à l’indienne, concombres au yaourt, samoussa à la ricotta et fruits secs, sauce huile d’olives et agrumes, mesclun de jeunes pousses.</div>', 'Bowl veggie', '', 'publish', 'closed', 'closed', '', 'bowl-veggie', '', '', '2018-04-25 09:26:44', '2018-04-25 07:26:44', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=75', 3, 'product', '', 0),
(76, 1, '2018-04-12 15:33:04', '2018-04-12 13:33:04', 'Voici un super bon bowl indien', 'Bowl indien', '', 'trash', 'closed', 'closed', '', 'bowl-indien__trashed', '', '', '2018-04-25 09:18:14', '2018-04-25 07:18:14', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=76', 6, 'product', '', 0),
(77, 1, '2018-04-12 15:33:42', '2018-04-12 13:33:42', '', 'Bowls, bruncs & petites faims', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-12 15:33:42', '2018-04-12 13:33:42', '', 69, 'http://localhost:8888/lesdejsurlherbe/69-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-04-12 15:34:01', '2018-04-12 13:34:01', '', 'Bowls, brunchs & petites faims', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-12 15:34:01', '2018-04-12 13:34:01', '', 69, 'http://localhost:8888/lesdejsurlherbe/69-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-04-12 16:12:50', '2018-04-12 14:12:50', '', 'bowl poulet au pistou', '', 'inherit', 'open', 'closed', '', 'bowl-poulet-au-pistou', '', '', '2018-04-12 16:12:50', '2018-04-12 14:12:50', '', 76, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/bowl-poulet-au-pistou.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-04-12 16:22:18', '2018-04-12 14:22:18', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"2000\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56c522c0-9bdb-43cd-ac4a-30a21bd5421a', '', '', '2018-04-12 16:22:18', '2018-04-12 14:22:18', '', 0, 'http://localhost:8888/lesdejsurlherbe/56c522c0-9bdb-43cd-ac4a-30a21bd5421a/', 0, 'customize_changeset', '', 0),
(81, 1, '2018-04-12 17:18:48', '2018-04-12 15:18:48', '{\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"100\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ec880b7-06bb-4454-a7a6-4f5e00e5d8c5', '', '', '2018-04-12 17:18:48', '2018-04-12 15:18:48', '', 0, 'http://localhost:8888/lesdejsurlherbe/2ec880b7-06bb-4454-a7a6-4f5e00e5d8c5/', 0, 'customize_changeset', '', 0),
(82, 1, '2018-04-12 17:19:27', '2018-04-12 15:19:27', '{\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"uncropped\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '402f7564-e153-4cab-a6d2-992138c77081', '', '', '2018-04-12 17:19:27', '2018-04-12 15:19:27', '', 0, 'http://localhost:8888/lesdejsurlherbe/402f7564-e153-4cab-a6d2-992138c77081/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-04-13 18:47:14', '2018-04-13 16:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-04-14 00:25:47', '2018-04-13 22:25:47', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-04-13 22:57:11', '2018-04-13 20:57:11', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-13 22:57:11', '2018-04-13 20:57:11', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-04-13 22:57:50', '2018-04-13 20:57:50', '', 'Livraison : mode d\'emploi', '', 'publish', 'closed', 'closed', '', 'livraison-mode-demploi', '', '', '2018-04-26 09:32:49', '2018-04-26 07:32:49', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-04-13 22:57:50', '2018-04-13 20:57:50', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-13 22:57:50', '2018-04-13 20:57:50', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-04-13 22:59:13', '2018-04-13 20:59:13', '[woocommerce_cart]', 'Mon panier', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-04-13 22:59:13', '2018-04-13 20:59:13', '', 70, 'http://localhost:8888/lesdejsurlherbe/70-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-04-13 23:00:13', '2018-04-13 21:00:13', '', 'Livraison : mode d\'emploi', '', 'publish', 'closed', 'closed', '', 'livraison-mode-demploi', '', '', '2018-04-14 00:25:47', '2018-04-13 22:25:47', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=91', 3, 'nav_menu_item', '', 0),
(92, 1, '2018-04-13 23:00:13', '2018-04-13 21:00:13', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-04-14 00:25:47', '2018-04-13 22:25:47', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=92', 4, 'nav_menu_item', '', 0),
(93, 1, '2018-04-13 23:02:33', '2018-04-13 21:02:33', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo', '', '', '2018-04-13 23:21:05', '2018-04-13 21:21:05', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=93', 0, 'page', '', 0),
(94, 1, '2018-04-13 23:02:33', '2018-04-13 21:02:33', '', 'Logo', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-04-13 23:02:33', '2018-04-13 21:02:33', '', 93, 'http://localhost:8888/lesdejsurlherbe/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-04-13 23:03:11', '2018-04-13 21:03:11', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'acf_logo', '', '', '2018-04-13 23:20:52', '2018-04-13 21:20:52', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=95', 0, 'acf', '', 0),
(96, 1, '2018-04-13 23:10:39', '2018-04-13 21:10:39', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2018-04-13 23:10:39', '2018-04-13 21:10:39', '', 93, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/LOGO.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-04-13 23:21:05', '2018-04-13 21:21:05', '', 'Logo', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-04-13 23:21:05', '2018-04-13 21:21:05', '', 93, 'http://localhost:8888/lesdejsurlherbe/93-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-04-14 00:25:47', '2018-04-13 22:25:47', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2018-04-14 00:25:47', '2018-04-13 22:25:47', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=98', 2, 'nav_menu_item', '', 0),
(99, 1, '2018-04-17 22:37:13', '2018-04-17 20:37:13', '', 'Page \"un tour en cuisine\" - on s\'affaire', '', 'publish', 'closed', 'closed', '', 'acf_page-un-tour-en-cuisine-on-saffaire', '', '', '2018-04-17 22:48:19', '2018-04-17 20:48:19', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=99', 1, 'acf', '', 0),
(100, 1, '2018-04-17 22:44:55', '2018-04-17 20:44:55', '', 'Page \"on s\'affaire en cuisine\" - nos producteurs', '', 'publish', 'closed', 'closed', '', 'acf_page-on-saffaire-en-cuisine-nos-producteurs', '', '', '2018-04-17 22:48:35', '2018-04-17 20:48:35', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=100', 2, 'acf', '', 0),
(101, 1, '2018-04-18 11:15:08', '2018-04-18 09:15:08', '', 'Desserts', '', 'trash', 'closed', 'closed', '', 'desserts__trashed', '', '', '2018-04-18 12:02:04', '2018-04-18 10:02:04', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=101', 10, 'product', '', 0),
(102, 1, '2018-04-18 12:02:23', '2018-04-18 10:02:23', '<div dir=\"auto\">Aux pommes, cranberries, et noix de cajou.</div>', 'Le crumble', '', 'publish', 'closed', 'closed', '', 'le-crumble', '', '', '2018-04-25 09:47:42', '2018-04-25 07:47:42', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=102', 15, 'product', '', 0),
(103, 1, '2018-04-18 12:02:58', '2018-04-18 10:02:58', '<div dir=\"auto\">Au thé Matcha et sablés au sésame noir.</div>', 'La panacotta', '', 'publish', 'closed', 'closed', '', 'la-panacotta', '', '', '2018-04-25 09:46:45', '2018-04-25 07:46:45', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=103', 16, 'product', '', 0),
(104, 1, '2018-04-18 23:05:52', '2018-04-18 21:05:52', '{\n    \"woocommerce_thumbnail_cropping\": {\n        \"value\": \"uncropped\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-18 21:05:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9563e3b2-91c6-471a-8c2d-ca8b177e6870', '', '', '2018-04-18 23:05:52', '2018-04-18 21:05:52', '', 0, 'http://localhost:8888/lesdejsurlherbe/9563e3b2-91c6-471a-8c2d-ca8b177e6870/', 0, 'customize_changeset', '', 0),
(105, 1, '2018-04-18 23:06:19', '2018-04-18 21:06:19', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-18 21:06:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '043a6538-45de-491e-9390-06b9707c3c91', '', '', '2018-04-18 23:06:19', '2018-04-18 21:06:19', '', 0, 'http://localhost:8888/lesdejsurlherbe/043a6538-45de-491e-9390-06b9707c3c91/', 0, 'customize_changeset', '', 0),
(106, 1, '2018-04-18 23:11:13', '2018-04-18 21:11:13', '', 'Image product', '', 'publish', 'closed', 'closed', '', 'acf_image-product', '', '', '2018-04-18 23:11:13', '2018-04-18 21:11:13', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=106', 0, 'acf', '', 0),
(107, 1, '2018-04-19 12:14:31', '2018-04-19 10:14:31', '', 'cyril lablanche anne-laure noga', '', 'inherit', 'open', 'closed', '', 'cyril-lablanche-anne-laure-noga', '', '', '2018-04-19 12:14:31', '2018-04-19 10:14:31', '', 2, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/cyril-lablanche-anne-laure-noga.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-04-19 12:14:48', '2018-04-19 10:14:48', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 12:14:48', '2018-04-19 10:14:48', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-04-19 12:24:41', '2018-04-19 10:24:41', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 12:24:41', '2018-04-19 10:24:41', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-04-19 12:25:07', '2018-04-19 10:25:07', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 12:25:07', '2018-04-19 10:25:07', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-04-19 12:29:14', '2018-04-19 10:29:14', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 12:29:14', '2018-04-19 10:29:14', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-04-19 12:31:18', '2018-04-19 10:31:18', '', 'nos producteurs préférés', '', 'inherit', 'open', 'closed', '', 'nos-producteurs-preferes', '', '', '2018-04-19 12:31:18', '2018-04-19 10:31:18', '', 2, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/nos-producteurs-préférés.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-04-19 12:31:36', '2018-04-19 10:31:36', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 12:31:36', '2018-04-19 10:31:36', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-04-19 13:48:48', '2018-04-19 11:48:48', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-19 13:48:48', '2018-04-19 11:48:48', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-04-19 14:05:37', '2018-04-19 12:05:37', '', 'Page livraison', '', 'publish', 'closed', 'closed', '', 'acf_page-livraison', '', '', '2018-04-19 14:20:23', '2018-04-19 12:20:23', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=acf&#038;p=115', 0, 'acf', '', 0),
(116, 1, '2018-04-19 14:18:00', '2018-04-19 12:18:00', '', 'eaux d’agrumes', '', 'inherit', 'open', 'closed', '', 'eaux-dagrumes', '', '', '2018-04-19 14:18:00', '2018-04-19 12:18:00', '', 86, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/eaux-d’agrumes.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-04-19 14:19:57', '2018-04-19 12:19:57', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-19 14:19:57', '2018-04-19 12:19:57', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-04-19 14:20:46', '2018-04-19 12:20:46', '', 'Capture d’écran 2018-04-19 à 14.19.39', '', 'inherit', 'open', 'closed', '', 'capture-decran-2018-04-19-a-14-19-39', '', '', '2018-04-19 14:20:46', '2018-04-19 12:20:46', '', 86, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/Capture-d’écran-2018-04-19-à-14.19.39.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2018-04-19 14:21:25', '2018-04-19 12:21:25', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-19 14:21:25', '2018-04-19 12:21:25', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-04-20 14:08:55', '2018-04-20 12:08:55', '[woocommerce_cart]\r\n\r\n[product id = \"76\"]', 'Mon panier', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-04-20 14:08:55', '2018-04-20 12:08:55', '', 70, 'http://localhost:8888/lesdejsurlherbe/70-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-04-23 22:05:25', '2018-04-23 20:05:25', '', 'Bouteille Evian 25cl', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-04-23 22:05:25', '2018-04-23 20:05:25', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=121', 2, 'product', '', 0),
(123, 1, '2018-04-20 14:12:37', '2018-04-20 12:12:37', '', 'Eau Évian 25cl', '', 'trash', 'closed', 'closed', '', 'eau-evian-25cl__trashed', '', '', '2018-04-23 22:05:21', '2018-04-23 20:05:21', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=123', 12, 'product', '', 0);
INSERT INTO `ldsl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2018-04-20 14:11:24', '2018-04-20 12:11:24', '', '05779', '', 'inherit', 'open', 'closed', '', '05779', '', '', '2018-04-20 14:11:24', '2018-04-20 12:11:24', '', 123, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/05779.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2018-04-20 14:13:58', '2018-04-20 12:13:58', '[woocommerce_cart]\r\n\r\n[product id = \"123\"]', 'Mon panier', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-04-20 14:13:58', '2018-04-20 12:13:58', '', 70, 'http://localhost:8888/lesdejsurlherbe/70-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-04-20 14:32:20', '2018-04-20 12:32:20', '[woocommerce_cart]', 'Mon panier', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-04-20 14:32:20', '2018-04-20 12:32:20', '', 70, 'http://localhost:8888/lesdejsurlherbe/70-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-04-24 08:20:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-24 08:20:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=127', 0, 'post', '', 0),
(128, 1, '2018-04-24 08:22:20', '2018-04-24 06:22:20', 'Raphaël\nVallauri\nvallauri.raphael@gmail.com\nRaphaël Vallauri', 'vallauri.raphael@gmail.com', '', 'publish', 'closed', 'closed', '', 'vallauri-raphael-gmail-com', '', '', '2018-04-24 08:22:20', '2018-04-24 06:22:20', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=flamingo_contact&p=128', 0, 'flamingo_contact', '', 0),
(129, 2, '2018-04-24 21:28:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-24 21:28:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=129', 0, 'post', '', 0),
(130, 2, '2018-04-25 09:09:48', '2018-04-25 07:09:48', '', 'bowl-bœuf-black-angus', '', 'inherit', 'open', 'closed', '', 'bowl-boeuf-black-angus', '', '', '2018-04-25 09:09:48', '2018-04-25 07:09:48', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/bowl-bœuf-black-angus.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 2, '2018-04-25 09:09:53', '2018-04-25 07:09:53', '', 'bowl-poulet-au-pistou', '', 'inherit', 'open', 'closed', '', 'bowl-poulet-au-pistou-2', '', '', '2018-04-25 09:09:53', '2018-04-25 07:09:53', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/bowl-poulet-au-pistou-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 2, '2018-04-25 09:09:57', '2018-04-25 07:09:57', '', 'bowl-veggie', '', 'inherit', 'open', 'closed', '', 'bowl-veggie-2', '', '', '2018-04-25 09:09:57', '2018-04-25 07:09:57', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/bowl-veggie.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 2, '2018-04-25 09:10:00', '2018-04-25 07:10:00', '', 'brunch-sale', '', 'inherit', 'open', 'closed', '', 'brunch-sale', '', '', '2018-04-25 09:10:00', '2018-04-25 07:10:00', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/brunch-sale.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 2, '2018-04-25 09:10:04', '2018-04-25 07:10:04', '', 'brunch-sucre-sale', '', 'inherit', 'open', 'closed', '', 'brunch-sucre-sale', '', '', '2018-04-25 09:10:04', '2018-04-25 07:10:04', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/brunch-sucre-sale.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 2, '2018-04-25 09:10:09', '2018-04-25 07:10:09', '', 'brunch-sucre', '', 'inherit', 'open', 'closed', '', 'brunch-sucre', '', '', '2018-04-25 09:10:09', '2018-04-25 07:10:09', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/brunch-sucre.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 2, '2018-04-25 09:10:12', '2018-04-25 07:10:12', '', 'cyril-lablanche-anne-laure-noga', '', 'inherit', 'open', 'closed', '', 'cyril-lablanche-anne-laure-noga-2', '', '', '2018-04-25 09:10:12', '2018-04-25 07:10:12', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/cyril-lablanche-anne-laure-noga-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 2, '2018-04-25 09:10:16', '2018-04-25 07:10:16', '', 'eaux-dagrumes', '', 'inherit', 'open', 'closed', '', 'eaux-dagrumes-2', '', '', '2018-04-25 09:10:16', '2018-04-25 07:10:16', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/eaux-dagrumes.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 2, '2018-04-25 09:10:20', '2018-04-25 07:10:20', '', 'fajitas-petite-faim', '', 'inherit', 'open', 'closed', '', 'fajitas-petite-faim', '', '', '2018-04-25 09:10:20', '2018-04-25 07:10:20', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/fajitas-petite-faim.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 2, '2018-04-25 09:10:23', '2018-04-25 07:10:23', '', 'le-crumble-la-panacotta-le-muffin', '', 'inherit', 'open', 'closed', '', 'le-crumble-la-panacotta-le-muffin', '', '', '2018-04-25 09:10:23', '2018-04-25 07:10:23', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/le-crumble-la-panacotta-le-muffin.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 2, '2018-04-25 09:10:27', '2018-04-25 07:10:27', '', 'nos-producteurs-preferes', '', 'inherit', 'open', 'closed', '', 'nos-producteurs-preferes-2', '', '', '2018-04-25 09:10:27', '2018-04-25 07:10:27', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/nos-producteurs-preferes.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 2, '2018-04-25 09:10:31', '2018-04-25 07:10:31', '', 'rouleau-petite-faim', '', 'inherit', 'open', 'closed', '', 'rouleau-petite-faim', '', '', '2018-04-25 09:10:31', '2018-04-25 07:10:31', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/rouleau-petite-faim.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 2, '2018-04-25 09:10:35', '2018-04-25 07:10:35', '', 'veggie-cake-petite-faim', '', 'inherit', 'open', 'closed', '', 'veggie-cake-petite-faim', '', '', '2018-04-25 09:10:35', '2018-04-25 07:10:35', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/veggie-cake-petite-faim.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 2, '2018-04-25 09:15:20', '2018-04-25 07:15:20', '<div dir=\"auto\">Brochettes de poulet au pistou, ratatouille du potager, tranches de panisse grillées au parmesan, tomates du jardin à la fleur de sel, sauce huile d’olive et balsamique, mesclun de jeunes pousses.</div>', 'Bowl poulet au pistou', '', 'publish', 'closed', 'closed', '', 'bowl-poulet-au-pistou', '', '', '2018-04-25 09:26:22', '2018-04-25 07:26:22', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=143', 4, 'product', '', 0),
(144, 2, '2018-04-25 09:16:04', '2018-04-25 07:16:04', '<div dir=\"auto\">Émincé de bœuf Black Angus citronelle et gingembre, riz noir de Camargue sauté, carottes crues, concombres, oignons nouveaux, germes, cacahuètes, oignons frits, herbes fraîches, pesto de coriandre thaï, mesclun de jeunes pousses.</div>', 'Bowl Boeuf Black Angus', '', 'publish', 'closed', 'closed', '', 'bowl-boeuf-black-angus', '', '', '2018-04-25 09:26:15', '2018-04-25 07:26:15', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=144', 5, 'product', '', 0),
(145, 2, '2018-04-25 09:16:46', '2018-04-25 07:16:46', '<div dir=\"auto\">Muesli maison aux fruits secs et aux noix et son fromage blanc bio, muffins du jour, viennoiseries, pain frais, beurre, miel et confiture maison, smoothie du jour.</div>', 'Brunche Sucré', '', 'publish', 'closed', 'closed', '', 'brunche-sucre', '', '', '2018-04-25 09:26:09', '2018-04-25 07:26:09', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=145', 7, 'product', '', 0),
(146, 2, '2018-04-25 09:19:04', '2018-04-25 07:19:04', '<div dir=\"auto\">Assortiment de charcuteries artisanales et fromages de chèvre, omelette aux fines herbes du jardin, tartare de tomates anciennes, pain frais, beurre, smoothie du jour.</div>', 'Brunche Salé', '', 'publish', 'closed', 'closed', '', 'brunche-sale', '', '', '2018-04-25 09:26:03', '2018-04-25 07:26:03', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=146', 8, 'product', '', 0),
(147, 2, '2018-04-25 09:19:43', '2018-04-25 07:19:43', '<div dir=\"auto\">Granola maison et fromage blanc, assortiment de charcuteries artisanales et fromages de chèvre, muffins du jour et viennoiseries, pain frais, beurre, miel, smoothie du jour.</div>', 'Brunch sucré-salé', '', 'publish', 'closed', 'closed', '', 'brunch-sucre-sale', '', '', '2018-04-25 09:25:56', '2018-04-25 07:25:56', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=147', 9, 'product', '', 0),
(148, 2, '2018-04-25 09:20:22', '2018-04-25 07:20:22', '<div dir=\"auto\">Mozza di Buffala, courgettes émincées, tomates séchées, pignons et basilic frais.</div>', 'Rouleau petite faim', '', 'publish', 'closed', 'closed', '', 'rouleau-petite-faim', '', '', '2018-04-25 09:25:50', '2018-04-25 07:25:50', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=148', 11, 'product', '', 0),
(149, 2, '2018-04-25 09:21:21', '2018-04-25 07:21:21', '<div dir=\"auto\">Jambon cru, tapenade noire, fromage de chèvre et tomate fraîche en dés dans une tortilla de blé.</div>', 'Fajitas Petite faim', '', 'publish', 'closed', 'closed', '', 'fajitas-petite-faim', '', '', '2018-04-25 09:25:44', '2018-04-25 07:25:44', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=149', 13, 'product', '', 0),
(150, 2, '2018-04-25 09:21:48', '2018-04-25 07:21:48', '<div dir=\"auto\">Un petit gâteau aux légumes du potager et son aïoli.</div>', 'Veggie Cake', '', 'publish', 'closed', 'closed', '', 'veggie-cake', '', '', '2018-04-25 09:25:36', '2018-04-25 07:25:36', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=150', 14, 'product', '', 0),
(151, 2, '2018-04-25 09:22:45', '2018-04-25 07:22:45', '<div dir=\"auto\">Rooibos aux agrumes de chez Rebecca Oswald, fleurs séchées, rondelles d’orange et citron, sirop d’agave</div>\r\n<div dir=\"auto\">“Une nuit à Djerba” de chez Rebecca Oswald</div>', 'Thés glacés', '', 'publish', 'closed', 'closed', '', 'thes-glaces', '', '', '2018-04-25 09:22:45', '2018-04-25 07:22:45', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=151', 18, 'product', '', 0),
(152, 2, '2018-04-25 09:23:31', '2018-04-25 07:23:31', '<div dir=\"auto\">Aux pralines roses et coulis de fruits rouges.</div>', 'Le Muffin', '', 'publish', 'closed', 'closed', '', 'le-muffin', '', '', '2018-04-25 09:46:07', '2018-04-25 07:46:07', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=152', 17, 'product', '', 0),
(153, 2, '2018-04-25 09:43:49', '2018-04-25 07:43:49', '', 'crumble', '', 'inherit', 'open', 'closed', '', 'crumble', '', '', '2018-04-25 09:43:49', '2018-04-25 07:43:49', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/crumble.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 2, '2018-04-25 09:43:52', '2018-04-25 07:43:52', '', 'muffin', '', 'inherit', 'open', 'closed', '', 'muffin', '', '', '2018-04-25 09:43:52', '2018-04-25 07:43:52', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/muffin.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 2, '2018-04-25 09:43:57', '2018-04-25 07:43:57', '', 'panacotta', '', 'inherit', 'open', 'closed', '', 'panacotta', '', '', '2018-04-25 09:43:57', '2018-04-25 07:43:57', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/panacotta.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 2, '2018-04-26 08:27:59', '2018-04-26 06:27:59', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-26 08:27:59', '2018-04-26 06:27:59', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(157, 2, '2018-04-26 08:48:13', '2018-04-26 06:48:13', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-26 08:48:13', '2018-04-26 06:48:13', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(158, 2, '2018-04-26 08:48:31', '2018-04-26 06:48:31', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-26 08:48:31', '2018-04-26 06:48:31', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(159, 2, '2018-04-26 09:11:04', '2018-04-26 07:11:04', '', 'CARTO COMMUNES', '', 'inherit', 'open', 'closed', '', 'carto-communes', '', '', '2018-04-26 09:11:04', '2018-04-26 07:11:04', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/CARTO-COMMUNES.svg', 0, 'attachment', 'image/svg+xml', 0),
(160, 2, '2018-04-26 09:25:07', '2018-04-26 07:25:07', '', 'photo-sac', '', 'inherit', 'open', 'closed', '', 'photo-sac', '', '', '2018-04-26 09:25:07', '2018-04-26 07:25:07', '', 86, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/photo-sac.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 2, '2018-04-26 09:25:20', '2018-04-26 07:25:20', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-26 09:25:20', '2018-04-26 07:25:20', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(162, 2, '2018-04-26 09:32:02', '2018-04-26 07:32:02', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-26 09:32:02', '2018-04-26 07:32:02', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(163, 2, '2018-04-26 09:32:49', '2018-04-26 07:32:49', '', 'Livraison : mode d\'emploi', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-26 09:32:49', '2018-04-26 07:32:49', '', 86, 'http://localhost:8888/lesdejsurlherbe/86-revision-v1/', 0, 'revision', '', 0),
(164, 2, '2018-04-26 09:52:08', '2018-04-26 07:52:08', '', 'Un tour en cuisine', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-26 09:52:08', '2018-04-26 07:52:08', '', 2, 'http://localhost:8888/lesdejsurlherbe/2-revision-v1/', 0, 'revision', '', 0),
(165, 2, '2018-04-27 15:14:15', '2018-04-27 13:14:15', '', 'motif', '', 'inherit', 'open', 'closed', '', 'motif', '', '', '2018-04-27 15:14:15', '2018-04-27 13:14:15', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/motif.svg', 0, 'attachment', 'image/svg+xml', 0),
(166, 2, '2018-04-27 15:26:14', '2018-04-27 13:26:14', '<div class=\"container-1200 block\">\r\n<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société <i>Les déjeuners sur l’herbe</i> et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société <i>Les déjeuners sur l’herbe</i> implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société <i>Les déjeuners sur l\'herbe</i> s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société <i>Les déjeuners sur l’herbe</i> serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique. Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement, ou le cas échéant de conserver au réfrigérateur jusqu’à deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société <i>Les déjeuners sur l’herbe</i> ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société <i>Les déjeuners sur l’herbe</i></p>\r\n</div>', 'Conditions Générales de Ventes', '', 'publish', 'closed', 'closed', '', 'conditions-generales-de-ventes', '', '', '2018-04-30 17:42:05', '2018-04-30 15:42:05', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=166', 0, 'page', '', 0),
(167, 2, '2018-04-27 15:26:14', '2018-04-27 13:26:14', '', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-27 15:26:14', '2018-04-27 13:26:14', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(168, 2, '2018-04-27 15:26:23', '2018-04-27 13:26:23', '', 'Mentions Légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2018-04-27 15:26:23', '2018-04-27 13:26:23', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=168', 0, 'page', '', 0),
(169, 2, '2018-04-27 15:26:23', '2018-04-27 13:26:23', '', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-04-27 15:26:23', '2018-04-27 13:26:23', '', 168, 'http://localhost:8888/lesdejsurlherbe/168-revision-v1/', 0, 'revision', '', 0),
(170, 2, '2018-04-27 15:26:39', '2018-04-27 13:26:39', '', 'Informations Relatives aux Allergènes', '', 'publish', 'closed', 'closed', '', 'informations-relatives-aux-allergenes', '', '', '2018-04-27 15:26:39', '2018-04-27 13:26:39', '', 0, 'http://localhost:8888/lesdejsurlherbe/?page_id=170', 0, 'page', '', 0),
(171, 2, '2018-04-27 15:26:39', '2018-04-27 13:26:39', '', 'Informations Relatives aux Allergènes', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2018-04-27 15:26:39', '2018-04-27 13:26:39', '', 170, 'http://localhost:8888/lesdejsurlherbe/170-revision-v1/', 0, 'revision', '', 0),
(172, 2, '2018-04-27 15:27:01', '2018-04-27 13:27:01', ' ', '', '', 'publish', 'closed', 'closed', '', '172', '', '', '2018-04-27 15:27:01', '2018-04-27 13:27:01', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=172', 3, 'nav_menu_item', '', 0),
(173, 2, '2018-04-27 15:27:01', '2018-04-27 13:27:01', ' ', '', '', 'publish', 'closed', 'closed', '', '173', '', '', '2018-04-27 15:27:01', '2018-04-27 13:27:01', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=173', 2, 'nav_menu_item', '', 0),
(174, 2, '2018-04-27 15:27:01', '2018-04-27 13:27:01', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2018-04-27 15:27:01', '2018-04-27 13:27:01', '', 0, 'http://localhost:8888/lesdejsurlherbe/?p=174', 1, 'nav_menu_item', '', 0),
(175, 2, '2018-04-27 15:39:32', '2018-04-27 13:39:32', '', 'motif-2', '', 'inherit', 'open', 'closed', '', 'motif-2', '', '', '2018-04-27 15:39:32', '2018-04-27 13:39:32', '', 0, 'http://localhost:8888/lesdejsurlherbe/wp-content/uploads/2018/04/motif-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(176, 2, '2018-04-30 17:42:03', '2018-04-30 15:42:03', '<div class=\"container-1200 block\">\n<h1>Conditions générales de vente</h1>\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société <i>Les déjeuners sur l’herbe</i> et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\nToute prestation accomplie par la société <i>Les déjeuners sur l’herbe</i> implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\n<h2>Clause n° 2 : Prix</h2>\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\nLa société <i>Les déjeuners sur l\'herbe</i> s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\n<h2>Clause n° 3 : Rabais et ristournes</h2>\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société <i>Les déjeuners sur l’herbe</i> serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\n<h2>Clause n° 4 : Escompte</h2>\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\n<h2>Clause n° 5 : Modalités de paiement</h2>\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\n<h2>Clause n° 6 : Livraison</h2>\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique. Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement, ou le cas échéant de conserver au réfrigérateur jusqu’à deux heures après la livraison.<br>\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\n<ul>\n<li>l\'allocation de dommages et intérêts ;</li>\n<li>l\'annulation de la commande.</li>\n</ul>\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\n<h2>Clause n° 10 : Force majeure</h2>\n<p>La responsabilité de la société <i>Les déjeuners sur l’herbe</i> ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\n<h2>Clause n° 11 : Tribunal compétent</h2>\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\n\n<p>Fait à Ansouis , le 23/03/2018</p>\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société <i>Les déjeuners sur l’herbe</i></p>\n</div>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-autosave-v1', '', '', '2018-04-30 17:42:03', '2018-04-30 15:42:03', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-autosave-v1/', 0, 'revision', '', 0),
(177, 2, '2018-04-30 17:32:03', '2018-04-30 15:32:03', '<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société Les déjeuners sur l’herbe et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société Les déjeuners sur l’herbe implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société Les déjeuners sur l’herbe s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société Les déjeuners sur l’herbe serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique .Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement , ou le cas échéant de conserver au réfrigérateur jusqu’a deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société Les déjeuners sur l’herbe ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société Les déjeuners sur l’herbe</p>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-30 17:32:03', '2018-04-30 15:32:03', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(178, 2, '2018-04-30 17:32:55', '2018-04-30 15:32:55', '<div class=\"container-1200\">\r\n<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société Les déjeuners sur l’herbe et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société Les déjeuners sur l’herbe implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société Les déjeuners sur l’herbe s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société Les déjeuners sur l’herbe serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique .Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement , ou le cas échéant de conserver au réfrigérateur jusqu’a deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société Les déjeuners sur l’herbe ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société Les déjeuners sur l’herbe</p>\r\n</div>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-30 17:32:55', '2018-04-30 15:32:55', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(179, 2, '2018-04-30 17:34:13', '2018-04-30 15:34:13', '<div class=\"container-1200 block\">\r\n<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société Les déjeuners sur l’herbe et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société Les déjeuners sur l’herbe implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société Les déjeuners sur l’herbe s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société Les déjeuners sur l’herbe serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique .Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement , ou le cas échéant de conserver au réfrigérateur jusqu’a deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société Les déjeuners sur l’herbe ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société Les déjeuners sur l’herbe</p>\r\n</div>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-30 17:34:13', '2018-04-30 15:34:13', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(180, 2, '2018-04-30 17:41:15', '2018-04-30 15:41:15', '<div class=\"container-1200 block\">\r\n<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société <i>Les déjeuners sur l’herbe</i> et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société <i>Les déjeuners sur l’herbe</i> implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société <i>Les déjeuners sur l\'herbe</i> s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société <i>Les déjeuners sur l’herbe</i> serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique. Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement, ou le cas échéant de conserver au réfrigérateur jusqu’à deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société <i>Les déjeuners sur l’herbe</i> ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société <i>Les déjeuners sur l’herbe</i></p>\r\n</div>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-30 17:41:15', '2018-04-30 15:41:15', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(181, 2, '2018-04-30 17:42:05', '2018-04-30 15:42:05', '<div class=\"container-1200 block\">\r\n<h1>Conditions générales de vente</h1>\r\n<p>Les déjeuners sur l’herbe, SARL Sonadim au capital social de 6000 €, le grand pibaraud, 84240 Ansouis.<br>\r\nImmatriculé au registre du commerce d’Avignon, sous le numéro 490888591<br>\r\nLes conditions générales de vente décrites ci-après détaillent les droits et obligations de la société <i>Les déjeuners sur l’herbe</i> et de son client dans le cadre de la vente des marchandises suivantes : Livraison de repas froid et pique niques<br>\r\nToute prestation accomplie par la société <i>Les déjeuners sur l’herbe</i> implique donc l\'adhésion sans réserve de l\'acheteur aux présentes conditions générales de vente.</p>\r\n<h2>Clause n° 2 : Prix</h2>\r\n<p>Les prix des marchandises vendues sont ceux en vigueur au jour de la prise de commande. Ils sont libellés en euros et calculés TTC aux taux applicable de 5,5%, frais de livraison inclus.<br>\r\nLa société <i>Les déjeuners sur l\'herbe</i> s\'accorde le droit de modifier ses tarifs à tout moment. Toutefois, elle s\'engage à facturer les marchandises commandées aux prix indiqués lors de l\'enregistrement de la commande.</p>\r\n<h2>Clause n° 3 : Rabais et ristournes</h2>\r\n<p>Les tarifs proposés comprennent les rabais et ristournes que la société <i>Les déjeuners sur l’herbe</i> serait amenée à octroyer compte tenu de ses résultats ou de la prise en charge par l\'acheteur de certaines prestations.</p>\r\n<h2>Clause n° 4 : Escompte</h2>\r\n<p>Aucun escompte ne sera consenti en cas de paiement anticipé.</p>\r\n<h2>Clause n° 5 : Modalités de paiement</h2>\r\n<p>Le règlement des commandes s\'effectue par carte bancaire directement à la commande sur le site internet</p>\r\n<h2>Clause n° 6 : Livraison</h2>\r\n<p>Nos produits sont élaborés dans des conditions optimales de fraicheur et livrés en camion frigorifique. Afin que vous puissiez profiter pleinement des saveurs qui vous sont proposées nous vous conseillons vivement de consommer rapidement, ou le cas échéant de conserver au réfrigérateur jusqu’à deux heures après la livraison.<br>\r\nLa livraison est effectuée par la remise directe de la marchandise à l’acheteur sur lieu indiqué par l\'acheteur sur le bon de commande.\r\nLe délai de livraison indiqué lors de l\'enregistrement de la commande n\'est donné qu\'à titre indicatif et n\'est aucunement garanti.<br>\r\nPar voie de conséquence, tout retard raisonnable dans la livraison des produits ne pourra pas donner lieu au profit de l\'acheteur à :\r\n<ul>\r\n<li>l\'allocation de dommages et intérêts ;</li>\r\n<li>l\'annulation de la commande.</li>\r\n</ul>\r\nLe risque du transport est supporté en totalité par l\'acheteur.<br>\r\nEn cas de marchandises manquantes ou détériorées lors du transport, l\'acheteur devra formuler toutes les réserves nécessaires sur le bon de commande à réception desdites marchandises. Ces réserves devront être, en outre, confirmées par écrit dans les cinq jours suivant la livraison, par courrier recommandé AR.</p>\r\n<h2>Clause n° 10 : Force majeure</h2>\r\n<p>La responsabilité de la société <i>Les déjeuners sur l’herbe</i> ne pourra pas être mise en oeuvre si la non-exécution ou le retard dans l\'exécution de l\'une de ses obligations décrites dans les présentes conditions générales de vente découle d\'un cas de force majeure. À ce titre, la force majeure s\'entend de tout événement extérieur, imprévisible et irrésistible au sens de l\'article 1148 du Code civil.</p>\r\n<h2>Clause n° 11 : Tribunal compétent</h2>\r\n<p>Tout litige relatif à l\'interprétation et à l\'exécution des présentes conditions générales de vente est soumis au droit français.\r\nÀ défaut de résolution amiable, le litige sera porté devant le Tribunal de commerce d’Avignon</p>\r\n\r\n<p>Fait à Ansouis , le 23/03/2018</p>\r\n<p>Anne Laure Noga et Cyril Lablanche représentants légaux la société <i>Les déjeuners sur l’herbe</i></p>\r\n</div>', 'Conditions Générales de Ventes', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2018-04-30 17:42:05', '2018-04-30 15:42:05', '', 166, 'http://localhost:8888/lesdejsurlherbe/166-revision-v1/', 0, 'revision', '', 0),
(182, 2, '2018-04-30 17:48:24', '2018-04-30 15:48:24', '', 'Rose AOP Luberon - Fontenille 2017', '', 'publish', 'closed', 'closed', '', 'rose-aop-luberon-fontenille-2017', '', '', '2018-04-30 17:48:24', '2018-04-30 15:48:24', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=182', 0, 'product', '', 0),
(183, 2, '2018-04-30 17:48:47', '2018-04-30 15:48:47', '', 'Rose AOP Luberon - Chateau 2017', '', 'publish', 'closed', 'closed', '', 'rose-aop-luberon-chateau-2017', '', '', '2018-04-30 17:48:47', '2018-04-30 15:48:47', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=183', 0, 'product', '', 0),
(184, 2, '2018-04-30 17:49:13', '2018-04-30 15:49:13', '', 'Blanc AOP Luberon - Fontenille 2017', '', 'publish', 'closed', 'closed', '', 'blanc-aop-luberon-fontenille-2017', '', '', '2018-04-30 17:49:13', '2018-04-30 15:49:13', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=184', 0, 'product', '', 0),
(185, 2, '2018-04-30 17:49:37', '2018-04-30 15:49:37', '', 'Blanc AOP Luberon - Chateau 2017', '', 'publish', 'closed', 'closed', '', 'blanc-aop-luberon-chateau-2017', '', '', '2018-04-30 17:49:37', '2018-04-30 15:49:37', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=185', 0, 'product', '', 0),
(186, 2, '2018-04-30 17:50:03', '2018-04-30 15:50:03', '', 'Rouge AOP Luberon - Fontenille 2016', '', 'publish', 'closed', 'closed', '', 'rouge-aop-luberon-fontenille-2016', '', '', '2018-04-30 17:50:03', '2018-04-30 15:50:03', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=186', 0, 'product', '', 0),
(187, 2, '2018-04-30 17:50:26', '2018-04-30 15:50:26', '', 'Rouge AOP Luberon - Chateau 2014', '', 'publish', 'closed', 'closed', '', 'rouge-aop-luberon-chateau-2014', '', '', '2018-04-30 17:50:26', '2018-04-30 15:50:26', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=187', 0, 'product', '', 0),
(188, 2, '2018-04-30 17:50:59', '2018-04-30 15:50:59', '', 'Evian', '', 'publish', 'closed', 'closed', '', 'evian', '', '', '2018-04-30 17:50:59', '2018-04-30 15:50:59', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=188', 0, 'product', '', 0),
(189, 2, '2018-04-30 17:51:20', '2018-04-30 15:51:20', '', 'San Pellegrino', '', 'publish', 'closed', 'closed', '', 'san-pellegrino', '', '', '2018-04-30 17:51:20', '2018-04-30 15:51:20', '', 0, 'http://localhost:8888/lesdejsurlherbe/?post_type=product&#038;p=189', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_termmeta`
--

CREATE TABLE `ldsl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_termmeta`
--

INSERT INTO `ldsl_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '0'),
(2, 19, 'order', '0'),
(3, 19, 'product_count_product_cat', '9'),
(4, 20, 'order', '0'),
(5, 20, 'display_type', ''),
(6, 20, 'thumbnail_id', '0'),
(7, 21, 'order', '0'),
(8, 21, 'display_type', ''),
(9, 21, 'thumbnail_id', '0'),
(10, 22, 'order', '0'),
(11, 22, 'display_type', ''),
(12, 22, 'thumbnail_id', '0'),
(13, 23, 'order', '0'),
(14, 23, 'display_type', ''),
(15, 23, 'thumbnail_id', '0'),
(16, 22, 'product_count_product_cat', '3'),
(17, 21, 'product_count_product_cat', '3'),
(18, 20, 'product_count_product_cat', '3'),
(19, 23, 'product_count_product_cat', '3'),
(20, 25, 'order', '0'),
(21, 25, 'product_count_product_cat', '6'),
(22, 26, 'order', '0'),
(23, 26, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_terms`
--

CREATE TABLE `ldsl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_terms`
--

INSERT INTO `ldsl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Contact Form 7', 'contact-form-7', 0),
(3, 'Formulaire de contact 1', 'formulaire-de-contact-1', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Non classé', 'non-classe', 0),
(18, 'Menu principal', 'menu-principal', 0),
(19, 'boissons', 'boissons', 0),
(20, 'Bowl', 'bowl', 0),
(21, 'Brunch', 'brunch', 0),
(22, 'Petite Faim', 'petite-faim', 0),
(23, 'Dessert', 'dessert', 0),
(24, 'Menu Footer', 'menu-footer', 0),
(25, 'vins', 'vins', 0),
(26, 'eaux', 'eaux', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_term_relationships`
--

CREATE TABLE `ldsl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_term_relationships`
--

INSERT INTO `ldsl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 3, 0),
(75, 4, 0),
(75, 20, 0),
(76, 4, 0),
(76, 17, 0),
(84, 18, 0),
(91, 18, 0),
(92, 18, 0),
(98, 18, 0),
(101, 5, 0),
(101, 17, 0),
(102, 4, 0),
(102, 23, 0),
(103, 4, 0),
(103, 23, 0),
(123, 4, 0),
(123, 19, 0),
(143, 4, 0),
(143, 20, 0),
(144, 4, 0),
(144, 20, 0),
(145, 4, 0),
(145, 21, 0),
(146, 4, 0),
(146, 21, 0),
(147, 4, 0),
(147, 21, 0),
(148, 4, 0),
(148, 22, 0),
(149, 4, 0),
(149, 22, 0),
(150, 4, 0),
(150, 22, 0),
(151, 4, 0),
(151, 19, 0),
(152, 4, 0),
(152, 23, 0),
(172, 24, 0),
(173, 24, 0),
(174, 24, 0),
(182, 4, 0),
(182, 25, 0),
(183, 4, 0),
(183, 25, 0),
(184, 4, 0),
(184, 25, 0),
(185, 4, 0),
(185, 25, 0),
(186, 4, 0),
(186, 25, 0),
(187, 4, 0),
(187, 25, 0),
(188, 4, 0),
(188, 26, 0),
(189, 4, 0),
(189, 26, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_term_taxonomy`
--

CREATE TABLE `ldsl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_term_taxonomy`
--

INSERT INTO `ldsl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'flamingo_inbound_channel', '', 0, 0),
(3, 3, 'flamingo_inbound_channel', '', 2, 1),
(4, 4, 'product_type', '', 0, 21),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'nav_menu', '', 0, 4),
(19, 19, 'product_cat', '', 0, 1),
(20, 20, 'product_cat', '', 0, 3),
(21, 21, 'product_cat', '', 0, 3),
(22, 22, 'product_cat', '', 0, 3),
(23, 23, 'product_cat', '', 0, 3),
(24, 24, 'nav_menu', '', 0, 3),
(25, 25, 'product_cat', '', 19, 6),
(26, 26, 'product_cat', '', 19, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_usermeta`
--

CREATE TABLE `ldsl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_usermeta`
--

INSERT INTO `ldsl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Agence Myso'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'ldsl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'ldsl_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:\"f5241a12639fbcd9acd8767c2af9dbefebb54fb5de3cdbb632b7138f9d7eebdc\";a:4:{s:10:\"expiration\";i:1524686705;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524513905;}s:64:\"b6c7bf6d880d22d6690db03c9296e3833ad2c80c04149a3820fda6a73aa77e54\";a:4:{s:10:\"expiration\";i:1524723646;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36\";s:5:\"login\";i:1524550846;}}'),
(16, 1, 'ldsl_dashboard_quick_press_last_post_id', '127'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(18, 1, 'cf_pointer_add_element', 'a:1:{i:0;N;}'),
(19, 1, 'ldsl_user-settings', 'editor=tinymce&hidetb=1&editor_plain_text_paste_warning=2&libraryContent=browse'),
(20, 1, 'ldsl_user-settings-time', '1500625937'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"fbd7939d674997cdb4692d34de8633c4\";a:10:{s:3:\"key\";s:32:\"fbd7939d674997cdb4692d34de8633c4\";s:10:\"product_id\";i:76;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13;s:8:\"line_tax\";i:0;}}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '18'),
(25, 2, 'nickname', 'Raphael Vallauri'),
(26, 2, 'first_name', 'Raphaël'),
(27, 2, 'last_name', 'Vallauri'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'ldsl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(37, 2, 'ldsl_user_level', '10'),
(38, 2, 'dismissed_wp_pointers', ''),
(39, 2, 'session_tokens', 'a:2:{s:64:\"ed76f7ce8d3f29054766d5832d94117f9cf1dc38fcc92061168285be5eaa48a7\";a:4:{s:10:\"expiration\";i:1524770883;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1524598083;}s:64:\"2cf6950eb17491a273f17f0555587cef0b2a58ae781f12f66a2d7e6501ecc25d\";a:4:{s:10:\"expiration\";i:1525932757;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1524723157;}}'),
(40, 2, 'ldsl_dashboard_quick_press_last_post_id', '129'),
(41, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:5:{s:32:\"6974ce5ac660610b44d9b9fed0ff9548\";a:10:{s:3:\"key\";s:32:\"6974ce5ac660610b44d9b9fed0ff9548\";s:10:\"product_id\";i:103;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"a5e00132373a7031000fd987a3c9f87b\";a:10:{s:3:\"key\";s:32:\"a5e00132373a7031000fd987a3c9f87b\";s:10:\"product_id\";i:146;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:22;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:22;s:8:\"line_tax\";i:0;}s:32:\"8d5e957f297893487bd98fa830fa6413\";a:10:{s:3:\"key\";s:32:\"8d5e957f297893487bd98fa830fa6413\";s:10:\"product_id\";i:147;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:50;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:50;s:8:\"line_tax\";i:0;}s:32:\"47d1e990583c9c67424d369f3414728e\";a:10:{s:3:\"key\";s:32:\"47d1e990583c9c67424d369f3414728e\";s:10:\"product_id\";i:148;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"903ce9225fca3e988c2af215d4e544d3\";a:10:{s:3:\"key\";s:32:\"903ce9225fca3e988c2af215d4e544d3\";s:10:\"product_id\";i:143;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:15;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:15;s:8:\"line_tax\";i:0;}}}'),
(42, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(43, 2, 'ldsl_user-settings', 'libraryContent=browse&editor=html'),
(44, 2, 'ldsl_user-settings-time', '1525102319'),
(45, 2, 'nav_menu_recently_edited', '24'),
(46, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(47, 2, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_users`
--

CREATE TABLE `ldsl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_users`
--

INSERT INTO `ldsl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Agence Myso', '$P$B79Lr6igVQUhSZmuzC4zq9Gg4cyemS1', 'agence-myso', 'lasoupe@agencemyso.com', '', '2017-07-17 19:28:03', '', 0, 'Agence Myso'),
(2, 'Raphael Vallauri', '$P$BOCC.AYRXQ/OBNyJihAWoKLuvKkjkd0', 'raphael-vallauri', 'vallauri.raphael@gmail.com', '', '2018-04-24 06:22:19', '', 0, 'Raphaël Vallauri');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_wc_download_log`
--

CREATE TABLE `ldsl_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_wc_webhooks`
--

CREATE TABLE `ldsl_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_api_keys`
--

CREATE TABLE `ldsl_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_attribute_taxonomies`
--

CREATE TABLE `ldsl_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `ldsl_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_log`
--

CREATE TABLE `ldsl_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_order_itemmeta`
--

CREATE TABLE `ldsl_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_order_items`
--

CREATE TABLE `ldsl_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_payment_tokenmeta`
--

CREATE TABLE `ldsl_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_payment_tokens`
--

CREATE TABLE `ldsl_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_sessions`
--

CREATE TABLE `ldsl_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_woocommerce_sessions`
--

INSERT INTO `ldsl_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(59, '2', 'a:11:{s:4:\"cart\";s:1747:\"a:5:{s:32:\"6974ce5ac660610b44d9b9fed0ff9548\";a:10:{s:3:\"key\";s:32:\"6974ce5ac660610b44d9b9fed0ff9548\";s:10:\"product_id\";i:103;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"a5e00132373a7031000fd987a3c9f87b\";a:10:{s:3:\"key\";s:32:\"a5e00132373a7031000fd987a3c9f87b\";s:10:\"product_id\";i:146;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:22;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:22;s:8:\"line_tax\";i:0;}s:32:\"8d5e957f297893487bd98fa830fa6413\";a:10:{s:3:\"key\";s:32:\"8d5e957f297893487bd98fa830fa6413\";s:10:\"product_id\";i:147;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:50;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:50;s:8:\"line_tax\";i:0;}s:32:\"47d1e990583c9c67424d369f3414728e\";a:10:{s:3:\"key\";s:32:\"47d1e990583c9c67424d369f3414728e\";s:10:\"product_id\";i:148;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5;s:8:\"line_tax\";i:0;}s:32:\"903ce9225fca3e988c2af215d4e544d3\";a:10:{s:3:\"key\";s:32:\"903ce9225fca3e988c2af215d4e544d3\";s:10:\"product_id\";i:143;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:15;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:15;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:5:\"97.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"97.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"97.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:525:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_18e5aa4cca2ac7098d47ec7ff8d483d7\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:18:\"Livraison gratuite\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:142:\"La panacotta &times; 1, Brunche Salé &times; 1, Brunch sucré-salé &times; 2, Rouleau petite faim &times; 1, Bowl poulet au pistou &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:714:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"vallauri.raphael@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1525274461);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_shipping_zones`
--

CREATE TABLE `ldsl_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_woocommerce_shipping_zones`
--

INSERT INTO `ldsl_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, '20 km autour de Lourmarin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_shipping_zone_locations`
--

CREATE TABLE `ldsl_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_woocommerce_shipping_zone_locations`
--

INSERT INTO `ldsl_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, 'FR', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_shipping_zone_methods`
--

CREATE TABLE `ldsl_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ldsl_woocommerce_shipping_zone_methods`
--

INSERT INTO `ldsl_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_tax_rates`
--

CREATE TABLE `ldsl_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ldsl_woocommerce_tax_rate_locations`
--

CREATE TABLE `ldsl_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ldsl_cf_form_entries`
--
ALTER TABLE `ldsl_cf_form_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date_time` (`datestamp`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `ldsl_cf_form_entry_meta`
--
ALTER TABLE `ldsl_cf_form_entry_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`);

--
-- Index pour la table `ldsl_cf_form_entry_values`
--
ALTER TABLE `ldsl_cf_form_entry_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`entry_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Index pour la table `ldsl_cf_tracking`
--
ALTER TABLE `ldsl_cf_tracking`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `ldsl_cf_tracking_meta`
--
ALTER TABLE `ldsl_cf_tracking_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `event_id` (`event_id`);

--
-- Index pour la table `ldsl_commentmeta`
--
ALTER TABLE `ldsl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ldsl_comments`
--
ALTER TABLE `ldsl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `ldsl_links`
--
ALTER TABLE `ldsl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `ldsl_options`
--
ALTER TABLE `ldsl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `ldsl_postmeta`
--
ALTER TABLE `ldsl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ldsl_posts`
--
ALTER TABLE `ldsl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `ldsl_termmeta`
--
ALTER TABLE `ldsl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ldsl_terms`
--
ALTER TABLE `ldsl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `ldsl_term_relationships`
--
ALTER TABLE `ldsl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `ldsl_term_taxonomy`
--
ALTER TABLE `ldsl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `ldsl_usermeta`
--
ALTER TABLE `ldsl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ldsl_users`
--
ALTER TABLE `ldsl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `ldsl_wc_download_log`
--
ALTER TABLE `ldsl_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `ldsl_wc_webhooks`
--
ALTER TABLE `ldsl_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ldsl_woocommerce_api_keys`
--
ALTER TABLE `ldsl_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `ldsl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ldsl_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `ldsl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ldsl_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ldsl_woocommerce_log`
--
ALTER TABLE `ldsl_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `ldsl_woocommerce_order_itemmeta`
--
ALTER TABLE `ldsl_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `ldsl_woocommerce_order_items`
--
ALTER TABLE `ldsl_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ldsl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ldsl_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `ldsl_woocommerce_payment_tokens`
--
ALTER TABLE `ldsl_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ldsl_woocommerce_sessions`
--
ALTER TABLE `ldsl_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Index pour la table `ldsl_woocommerce_shipping_zones`
--
ALTER TABLE `ldsl_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `ldsl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ldsl_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `ldsl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ldsl_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `ldsl_woocommerce_tax_rates`
--
ALTER TABLE `ldsl_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `ldsl_woocommerce_tax_rate_locations`
--
ALTER TABLE `ldsl_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ldsl_cf_form_entries`
--
ALTER TABLE `ldsl_cf_form_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_cf_form_entry_meta`
--
ALTER TABLE `ldsl_cf_form_entry_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_cf_form_entry_values`
--
ALTER TABLE `ldsl_cf_form_entry_values`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_cf_tracking`
--
ALTER TABLE `ldsl_cf_tracking`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_cf_tracking_meta`
--
ALTER TABLE `ldsl_cf_tracking_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_commentmeta`
--
ALTER TABLE `ldsl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_comments`
--
ALTER TABLE `ldsl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ldsl_links`
--
ALTER TABLE `ldsl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_options`
--
ALTER TABLE `ldsl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT pour la table `ldsl_postmeta`
--
ALTER TABLE `ldsl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1639;

--
-- AUTO_INCREMENT pour la table `ldsl_posts`
--
ALTER TABLE `ldsl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT pour la table `ldsl_termmeta`
--
ALTER TABLE `ldsl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `ldsl_terms`
--
ALTER TABLE `ldsl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `ldsl_term_taxonomy`
--
ALTER TABLE `ldsl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `ldsl_usermeta`
--
ALTER TABLE `ldsl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `ldsl_users`
--
ALTER TABLE `ldsl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ldsl_wc_download_log`
--
ALTER TABLE `ldsl_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_wc_webhooks`
--
ALTER TABLE `ldsl_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_api_keys`
--
ALTER TABLE `ldsl_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ldsl_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ldsl_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_log`
--
ALTER TABLE `ldsl_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_order_itemmeta`
--
ALTER TABLE `ldsl_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_order_items`
--
ALTER TABLE `ldsl_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ldsl_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_payment_tokens`
--
ALTER TABLE `ldsl_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_sessions`
--
ALTER TABLE `ldsl_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_shipping_zones`
--
ALTER TABLE `ldsl_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ldsl_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ldsl_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_tax_rates`
--
ALTER TABLE `ldsl_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldsl_woocommerce_tax_rate_locations`
--
ALTER TABLE `ldsl_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
