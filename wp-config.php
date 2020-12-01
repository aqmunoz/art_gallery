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
define( 'DB_NAME', 'galeria_arte' );

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
define( 'AUTH_KEY',         'sZfBBF:%g3BpgOZgE>`[d~dj,-:fd&nY<HaPrAI``>Ys;a?a$lCw+?W&*Hu1j@9}' );
define( 'SECURE_AUTH_KEY',  '}mt92nC9(x:AMS5E6{~JH,k*V8NO[r),J7Rh5G{dRoL98A}-#605t9{&l-t]lg@o' );
define( 'LOGGED_IN_KEY',    'SgDo_(!0R|8La[b&yN}{4B|MOa(h,3pwtWCd5n,dnQZ1 ~[R+@-h#2vA%pM]1& x' );
define( 'NONCE_KEY',        'LSh_V;^lt&>LOXF`sm>J}0vnNG1N,(abkh,S:3T5174h_ea-ht@eS93c0.F6L?]X' );
define( 'AUTH_SALT',        'LO*E5,rG5BG=?Geog`,|sKU|b)mK,WZYMM-),_MSB!rT82f/IQ.QDmji^;&@wL~n' );
define( 'SECURE_AUTH_SALT', '#Q_H >2Nx{h&2*DLY8 #S;tqA^| ,xJ(7wTDh,q3(m<b(^8(dFf7(tRxE+q*K@~X' );
define( 'LOGGED_IN_SALT',   '|!N*EoFS9<8>-lxk:[_a< iqRi,xxdqmQjCH-/T4[an[H}qd#7@pL*6AiRm+R/,n' );
define( 'NONCE_SALT',       '#::#+72ZJ0`;DD[i+lr(G&>M::kH@&^y5IEQMIrfGA)#-f#{|;%?WomH_,l5HzoN' );

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
