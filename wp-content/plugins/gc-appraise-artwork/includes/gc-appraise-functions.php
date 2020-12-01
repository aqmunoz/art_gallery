<?php
/*
 * Add my new menu to the Admin Control Panel
 */

include_once plugin_dir_path(__FILE__).'appraise_shortcode.php';
add_action('init','add_menu_admin');


function add_menu_admin(){
	/*$user = wp_get_current_user();
	if ( in_array( 'vendor', (array) $user->roles ) ) {*/
		add_action( 'admin_menu', 'gc_add_admin_link_appraise_link' );
	//}
}
// Add a new top level menu link to the ACP
function gc_add_admin_link_appraise_link()
{
	$slug = plugin_dir_path(__FILE__).'container.php';
    add_menu_page(
        'Appraise artwork', // Title of the page
        'Appraise artwork', // Text to show on the menu link
        'read', // Capability requirement to see the link
        $slug, // The 'slug' - file to display when clicking the link,
		null,
		'dashicons-money'
    );
}

// Menu to show appraise list
add_action("admin_menu", "gc_appraise_list_menu");
 
/**
 * Add menu with de form to add new appraise
 *
 * @return void
 */
function gc_appraise_list_menu()
{
    add_menu_page(
        'Appraise list', 'Appraises', 'manage_options',
        'gc_appraise_list_menu', 'create_appraise_list', 'dashicons-feedback'
    );
}

// Menu to show personal appraises list
add_action("admin_menu", "gc_personal_appraise_list_menu");
/**
 * Add menu with the personal appraises list
 *
 * @return void
 */
function gc_personal_appraise_list_menu()
{
    add_menu_page(
        'Personal appraise', 'Personal appraises', 'manage_options',
        'gc_personal_appraise_list_menu', 'create_personal_appraise_list', 'dashicons-tickets-alt'
    );
}

/*
 * Get appraise's list
 * */
function create_appraise_list()
{
   include_once 'Appraise_List.php';
   $appraiseListObject = new Appraise_List();
    $appraiseListObject->prepare_items();
   echo '<div class="wrap">';
   echo '<h2>Appraises list</h2>';
   echo '<div id="poststuff">';
   echo '<div id="post-body" class="metabox-holder columns-2">';
   echo '<div id="post-body-content">';
   echo '<div class="meta-box-sortables ui-sortable">';
   echo '<form method="post">';
   $appraiseListObject->display();
   echo '</form>';
   echo '</div>';
   echo '</div>';
   echo '</div>';
   echo '<br class="clear">';
   echo '</div>';
   echo '</div>';
}


/*
 * Get appraise's list
 * */
function create_personal_appraise_list()
{
    include_once 'Personal_Appraise.php';
    $appraiseListObject = new Personal_Appraise();
    $appraiseListObject->prepare_items();
    echo '<div class="wrap">';
    echo '<h2>Appraises list</h2>';
    echo '<div id="poststuff">';
    echo '<div id="post-body" class="metabox-holder columns-2">';
    echo '<div id="post-body-content">';
    echo '<div class="meta-box-sortables ui-sortable">';
    echo '<form method="post">';
    $appraiseListObject->display();
    echo '</form>';
    echo '</div>';
    echo '</div>';
    echo '</div>';
    echo '<br class="clear">';
    echo '</div>';
    echo '</div>';
}

add_filter('admin_footer_text', 'remove_footer_admin');
// Modificar el pie de p?gina del panel
function remove_footer_admin () {
	echo 'Built by Green Code Team';
}
