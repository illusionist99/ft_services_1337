<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '4%D_E6Gv~.}T;^rO0]:}g q8hDZnIXCJO4E jH[  IfSDy+;H74DmViW$VY?IdM9' );
define( 'SECURE_AUTH_KEY',  '(.L!&70j|g9/#{/kNVe}=,5<.97xR0BvM<XB$P,y9_/|46OMo($q_!&csO5Su&aS' );
define( 'LOGGED_IN_KEY',    'GnIt`$ys24<#vGNPQ(E<E7 8{`d2+x%i)w4W>|P(yi p<5y]uhG483%-2aU/cG(e' );
define( 'NONCE_KEY',        'r@V4r(fvAFJErL7@]8Gc@9zNN-QTF+_^L#Ht2rtA*+/!v.Kx;cHI !g$Dw0@8ddA' );
define( 'AUTH_SALT',        'n+x:*{Ve_nW^DnDJ}DXj7x>HYLV;Htq~08b3)gIm{lXG-*[jzY6HON^u);M6Av]q' );
define( 'SECURE_AUTH_SALT', ',~?R|Mn>mTf]X>J2qdR4;:=[sMl>?PX.e3HTd8g4_%y-DoF0;-eHBHEtWCcgXW6[' );
define( 'LOGGED_IN_SALT',   'YVVm/Sh5~Tl$M!vu9^A,UW[fVbuBxNP*n1Q1c{g(yDac=L0L^&>+FwH-Y_{M9Cw@' );
define( 'NONCE_SALT',       'HwI9bL[F?#~%TaY)1:&+ajhfL8(HMSa;%7S3PvoD&uzl1XHp(7;DF),DO<@!+t4^' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
