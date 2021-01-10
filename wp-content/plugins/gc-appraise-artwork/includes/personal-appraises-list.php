<?php
include_once 'Personal_Appraise.php';
add_action ('init', function(){

    // If we're not in back-end we didn't expect to load these things

    if( ! is_admin() ){

        require_once( ABSPATH . 'wp-admin/includes/class-wp-list-table.php' );
        require_once( ABSPATH . 'wp-admin/includes/screen.php' );
        require_once( ABSPATH . 'wp-admin/includes/class-wp-screen.php' );
        require_once( ABSPATH . 'wp-admin/includes/template.php' );

        global $appraiseListObject;

        $appraiseListObject = new Personal_Appraise();
    }
});
// Define a shortcode and link with a function
add_shortcode('personal_appraise_list', 'create_personal_appraise_list_shortcode');


/*
 * Get appraise's list
 * */
function create_personal_appraise_list_shortcode()
{

    global $appraiseListObject;

    echo '</pre><div class="wrap"><h2>Appraises List</h2>';
    if($appraiseListObject != null)
        $appraiseListObject->prepare_items();

    ?>

    <?php
    if($appraiseListObject != null)
        $appraiseListObject->views();
    ?>
    <form method="post">
    <input type="hidden" name="page" value="gc_personal_appraise_list_menu">
    <?php
    if($appraiseListObject != null)
        $appraiseListObject->display();

    echo '</form></div>';
    if($appraiseListObject != null)
        $appraiseListObject->prepare_items();
}