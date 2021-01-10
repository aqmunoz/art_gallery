<?php
/*
*Plugin Name: Nomenclator's management
*Description: This plugin manages the nomenclators used in the system
*Author: Adniel Quintana Mu&ntilde;oz
*Version: 1.0.0
*/

/*
**** POST TYPE NOMENCLATOR ****
*/
function register_nomenclator_posttype() {
	$labels = array(
		'name'               => _x( 'Nomenclator', 'gcnomentypes' ),
		'singular_name'      => _x( 'Nomenclator', 'gcnomentypes' ),
		'add_new'            => __( 'Add new','gcnomentypes'),
		'add_new_item'       => __( 'New','gcnomentypes'),
		'edit_item'          => __( 'Edit','gcnomentypes' ),
		'new_item'           => __( 'New','gcnomentypes' ),
		'all_items'          => __( 'All','gcnomentypes' ),
		'view_item'          => __( 'View','gcnomentypes'),
		'search_items'       => __( 'Search','gcnomentypes'),
		'not_found'          => __( 'Not founded!','gcnomentypes' ),
		'not_found_in_trash' => __( 'Not founded in trash','gcnomentypes' ),
		'parent_item_colon'  => '',
		'menu_name'          => __('Nomenclators','gcnomentypes'));
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'show_ui'            => true,
		'publicly_queryable' => true,
		'rewrite'            => array( 'slug' => 'nomen' ),
		'has_archive'        => true,
		'capability_type'    => 'post',
		'menu_icon'          => 'dashicons-images-alt',
		'can_export'         => true,
		'menu_position'      => 5,
		'supports'           => array('title')
	);
	register_post_type( 'nomenclators', $args );	
}

/*
**** TAXONOMY NOMENCLATORS TYPES ****
*/
function taxonomia_nomenclators_types() {
	register_taxonomy( 'gallery-nomenclators',
	array (0 => 'nomenclators'),
	array(
		'hierarchical'      => true,
		'label'             => __('Nomenclators types','gcnomentypes'),
		'show_ui'           => true,
		'query_var'         => true,
		'show_admin_column' => true,
		'labels'            => array (
			'search_items'               => __('Search','gcnomentypes'),
			'popular_items'              => __('More pupulars','gcnomentypes'),
			'all_items'                  => __('All','gcnomentypes'),
			'parent_item'                => __('Superior','gcnomentypes'),
			'parent_item_colon'          => __('Superior','gcnomentypes'),
			'edit_item'                  => __('Edit','gcnomentypes'),
			'update_item'                => __('Update','gcnomentypes'),
			'add_new_item'               => __('Add new','gcnomentypes'),
			'new_item_name'              => __('New','gcnomentypes'),
			'separate_items_with_commas' => __('Separate by commas','gcnomentypes'),
			'add_or_remove_items'        => __('Add or remove','gcnomentypes'),
			'choose_from_most_used'      => __('Choose from the most used','gcnomentypes'),
		)
	) );
}

/*
**** Action hooks para los custom post types ****
*/
add_action( 'init', 'register_nomenclator_posttype' );
add_action( 'init', 'taxonomia_nomenclators_types' );