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
define('DB_NAME', 'lesdejsurlherbe');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         'h| 5][#CcUS>=cn>.6-_)}9-~^&$h];Mi4?|]XX/@z/?pkK~q9qD]Q`jy(?Q$$iB');
define('SECURE_AUTH_KEY',  '}zNRodva1(R;*8/@G@ahr4>fK&?^eU~8uA7q6IJ;GM4P^f<j^VMl7Q.pvsPD[q&Q');
define('LOGGED_IN_KEY',    '}=3WN}ol~:t8VT /T!56xFreV(#jw+.>3l@db8h?];^m~*e4tLeW4ry,eK:kcz=r');
define('NONCE_KEY',        'BJ]oO,.M.U@8Mrf]YzL I4.x)HYA6QcnCXU$kh3@HtvWe[EQ&t9A$<Yt:E?Tm-zz');
define('AUTH_SALT',        '_n.X([Jpp$G*gzi0SDK<(_)R=,:dy`#|]`tUo_*ytBz}{fDt2q,{S>cOf2%]yW:+');
define('SECURE_AUTH_SALT', ']XQ$:ZA|XGP->o4=si7]Wim(F3fmy:d@,YEn/bE^&D;,C8,9JDwA),J;^L{(9KdV');
define('LOGGED_IN_SALT',   ':M<l|;qH,f%[ns>}C!kQ$I]?69oEoPk7#GC|{lixwM}WT{Hfm+fjAe[GM,|YW$zy');
define('NONCE_SALT',       'I%klB*vM,Ip+v[(yhBND3ON?Y9&XUzpiopPTU]<;k@3%]Ri;(9z#TtsdmhaVY lS');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'ldsl_';

/**
 * Langue de localisation de WordPress, par défaut en Anglais.
 *
 * Modifiez cette valeur pour localiser WordPress. Un fichier MO correspondant
 * au langage choisi doit être installé dans le dossier wp-content/languages.
 * Par exemple, pour mettre en place une traduction française, mettez le fichier
 * fr_FR.mo dans wp-content/languages, et réglez l'option ci-dessous à "fr_FR".
 */
define('WPLANG', 'fr_FR');


/* C’est tout, ne touchez pas à ce qui suit ! */

define('WP_ALLOW_REPAIR', false);

define( 'LOCAL' , "LOCAL" );
define( 'STAGING' , "STAGING" );
define( 'PRODUCTION' , "PRODUCTION" );

include('wp-config-env.php');


if ( ENV === LOCAL || ENV == STAGING) {
	ini_set('display_errors', 1);
	ini_set('display_startup_errors',1);
	error_reporting(-1);

	define('WP_DEBUG', false);
	define('WP_DEBUG_DISPLAY', false);

} else {

	define('WP_DEBUG', false);
	define('WP_DEBUG_DISPLAY', false);
}

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');