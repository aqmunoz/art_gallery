<?php
/*
*Plugin Name: Artwork appraise
*Description: This plugin manages the appraisal of artworks!
*Author: Adniel Quintana Mu&ntilde;oz
*Version: 1.0.0
*/


function gc_appraise_admin_scripts() {
    // Load bootstrap JS
    wp_enqueue_script('bootstrap_js', plugins_url('js/bootstrap.min.js', __FILE__));
    wp_enqueue_script('appraise_artwork_js', plugins_url('js/gc_appraise_js.js', __FILE__));
    // Load bootstrap CSS
    wp_enqueue_style('bootstrap_css', plugins_url('css/bootstrap.min.css', __FILE__));
}
add_action( 'admin_enqueue_scripts', 'gc_appraise_admin_scripts' );
// Create table on database
register_activation_hook(__FILE__, 'gc_appraise_artwork_init');
 
/**
 * Function that handle the creation of table on database
 *
 * @return void
 */
function gc_appraise_artwork_init()
{
    include_once ABSPATH . 'wp-admin/includes/upgrade.php';
    global $wpdb; // Global object to access the database of WP
    // Create the table if not exist only
    // Table's name
    $appraise_table = 'gc_appraise_artwork';
    $appraise_table_nomen = 'gc_appraise_nomen';
    $charset_collate = $wpdb->get_charset_collate();
    // Prepare the query

    $query_nomen = "CREATE TABLE IF NOT EXISTS $appraise_table_nomen (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        typ varchar(50) NOT NULL,
        val varchar(500) NOT NULL,        
        PRIMARY KEY (id)
        ) $charset_collate;";
    // La funcion dbDelta permite crear tablas de manera segura se
    // define en el archivo upgrade.php que se incluye a continuacion
    dbDelta($query_nomen); // Lanza la consulta para crear la tabla de manera segura

    $query = "CREATE TABLE IF NOT EXISTS $appraise_table (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        name_artwork varchar(255) NOT NULL,
        theme_artwork varchar(255) NOT NULL,
        id_material mediumint(9) NOT NULL,
        id_technique mediumint(9) NOT NULL,
        large double NOT NULL,        
        width double NOT NULL,
        height double NOT NULL,
        author_name varchar(255) NOT NULL,
        author_resume text,
        document varchar(255),
        created_at datetime NOT NULL, 
        id_user bigint(20),
        PRIMARY KEY (id),
        INDEX material_idx(id_material),
        INDEX tecnique_idx(id_technique),
        FOREIGN KEY (id_material)
            REFERENCES gc_appraise_nomen(id),
        FOREIGN KEY (id_technique)
            REFERENCES gc_appraise_nomen(id)        
        ) $charset_collate;";
    dbDelta($query); // Lanza la consulta para crear la tabla de manera segura

}

/*Cuando elimines el plugin se borra la tabla asociada al mismo en la base de datos*/
function delete_plugin_database_table(){
	if( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) exit();
    global $wpdb;
    $appraise_table = 'gc_appraise_artwork';
    $appraise_table_nomen = 'gc_appraise_nomen';
    $wpdb->query( "DROP TABLE IF EXISTS $appraise_table" );
    $wpdb->query( "DROP TABLE IF EXISTS $appraise_table_nomen" );
    delete_option("my_plugin_db_version");
}
register_uninstall_hook(__FILE__, 'delete_plugin_database_table');

require_once plugin_dir_path(__FILE__) . 'includes/gc-appraise-functions.php';