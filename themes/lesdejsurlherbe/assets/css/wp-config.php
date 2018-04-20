<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'db722331514');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'dbo722331514');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'Leroy_53??');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'db722331514.db.1and1.com');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ',S,ytcfZ<EttzZuF(=J6SaVS cvTdi<^P!j(A y[rm=yJCI[oO$.t3824F3Gk*]Q');
define('SECURE_AUTH_KEY',  't Mn:--@D*%BE{29%rdSiNoo8:K^}N{h|%ou/)<6^KRBy-T)mF7nl+8dtEZ8-0mT');
define('LOGGED_IN_KEY',    'jwV;AJ !vE0ZbSoi<9O9:HL$tK;U=z.0-U~3 wk2gb@MrfMJjGl.k3!`{$rD <0/');
define('NONCE_KEY',        'eJzQHKLE b:U69Am0pp>)e@UAd6C,})vZXcxUesk)Ca[F)**8ba]W;jf 3OBUEyJ');
define('AUTH_SALT',        'nc;hZUgga-=<`v%aD&}5(OP^oDTLP;^9ku@)k4<=vq]=MJ|Ip~Q_Rjmn6kfxH}dt');
define('SECURE_AUTH_SALT', '(62%0FwXH_o3gDi*{s>=RYI9eJg$D/H,M0yMI0{,lq(T&Ad_E#5 p0Kx=<K0g.g(');
define('LOGGED_IN_SALT',   '8MhqyY84?2gWyVy$yv?W<Oz0@u&2xKaMF`1*,8e:@P{(;5pd@9&jbYAc{At|$Co>');
define('NONCE_SALT',       '=$47s?|..PSO<nlucgR=8mxTND)gF@h5ipUW-)p6k.4_AI<w0:G56 =hFBmU$Z.i');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');