<?php
if ( ! class_exists( 'WP_List_Table' ) ) {
    require_once( ABSPATH . 'wp-admin/includes/class-wp-list-table.php' );
}

class Personal_Appraise extends WP_List_Table
{
    /** Class constructor */
    public function __construct()
    {

        parent::__construct([
            'singular' => __('Personal appraise', 'gc'), //singular name of the listed records
            'plural' => __('Personal appraises', 'gc'), //plural name of the listed records
            'ajax' => false //should this table support ajax?

        ]);

    }

    /**
     * Retrieve appraise’s data from the database
     *
     * @param int $per_page
     * @param int $page_number
     *
     * @return mixed
     */
    public static function get_appraises( $per_page = 5, $page_number = 1, $idUser ) {

        global $wpdb;
        $appraise_table = 'gc_appraise_artwork';

        $sql = "SELECT *, (SELECT val FROM gc_appraise_nomen WHERE id = $appraise_table.id_technique AND typ = 'technique') as technique, (SELECT val FROM gc_appraise_nomen WHERE id = $appraise_table.id_material AND typ = 'material') as material FROM $appraise_table WHERE id_user=$idUser";

        if ( ! empty( $_REQUEST['orderby'] ) ) {
            $sql .= ' ORDER BY ' . esc_sql( $_REQUEST['orderby'] );
            $sql .= ! empty( $_REQUEST['order'] ) ? ' ' . esc_sql( $_REQUEST['order'] ) : ' ASC';
        }

        $sql .= " LIMIT $per_page";

        $sql .= ' OFFSET ' . ( $page_number - 1 ) * $per_page;


        $result = $wpdb->get_results( $sql, 'ARRAY_A' );
        //var_dump($result);die;
        return $result;
    }


    public static function get_appraise( $appraiseId) {

        global $wpdb;
        $appraise_table = 'gc_appraise_artwork';

        $sql = "SELECT *, (SELECT val FROM gc_appraise_nomen WHERE id = $appraise_table.id_technique AND typ = 'technique') as technique, (SELECT val FROM gc_appraise_nomen WHERE id = $appraise_table.id_material AND typ = 'material') as material FROM $appraise_table WHERE id = $appraiseId";
        $result = $wpdb->get_results( $sql, 'ARRAY_A' );

        return $result;
    }

    /**
     * Returns the count of records in the database.
     *
     * @return null|string
     */
    public static function record_count($idUser) {
        global $wpdb;

        $sql = "SELECT COUNT(*) FROM gc_appraise_artwork WHERE id_user=$idUser";

        return $wpdb->get_var( $sql );
    }

    /** Text displayed when no customer data is available */
    public function no_items() {
        _e( 'No appraise avaliable.', 'gc' );
    }

    /**
     * Render a column when no column specific method exists.
     *
     * @param array $item
     * @param string $column_name
     *
     * @return mixed
     */
    public function column_default( $item, $column_name ) {

        switch ( $column_name ) {
            case 'name_artwork':
            case 'material':
            case 'technique':
            case 'author_name':
            case 'theme_artwork':
                return $item[ $column_name ];
            case 'document':
                if($item[ $column_name ] != '' && $item[ $column_name ] != null){
                    return '<div class="dashicons dashicons-yes text-success"></div>';
                }
                else{
                    return '<div class="dashicons dashicons-no text-danger"></div>';
                }
                break;
            default:
                return print_r( $item, true ); //Show the whole array for troubleshooting purposes
        }
    }

    /**
     *  Associative array of columns
     *
     * @return array
     */
    function get_columns() {
        $columns = [
            'name_artwork'    => __( 'Artwork\'s name' , 'gc' ),
            'theme_artwork'    => __( 'Artwork\'s theme', 'gc' ),
            'author_name'    => __( 'Author\'s name', 'gc' ),
            'material' => __( 'Material', 'gc' ),
            'technique'    => __( 'Technique', 'gc' ),
            'document' => __('Priced')

        ];

        return $columns;
    }

    /**
     * Columns to make sortable.
     *
     * @return array
     */
    public function get_sortable_columns() {
        $sortable_columns = array(
            'author_name' => array( 'author_name', true ),
            'name_artwork' => array( 'name_artwork', true ),
            'theme_artwork' => array( 'theme_artwork', true ),
            'technique' => array( 'id_technique', false ),
            'material' => array( 'id_material', false )
        );

        return $sortable_columns;
    }

    /**
     * Handles data query and filter, sorting, and pagination.
     */
    public function prepare_items() {

        //$this->_column_headers = $this->get_column_info();
        $columns = $this->get_columns();
        $hidden = array();
        $sortable = self::get_sortable_columns();
        $this->_column_headers = array($columns, $hidden, $sortable);

        $this->process_show_action();

        $idUser = get_current_user_id();

        $per_page     = $this->get_items_per_page( 'appraises_per_page', 5 );
        $current_page = $this->get_pagenum();
        $total_items  = self::record_count($idUser);

        $this->set_pagination_args( array(
            'total_items' => $total_items, //WE have to calculate the total number of items
            'per_page'    => $per_page //WE have to determine how many items to show on a page
        ) );


        $this->items = self::get_appraises( $per_page, $current_page,$idUser );
    }

    public function process_show_action()
    {
        //Detect when a bulk action is being triggered...
        if ( 'show' === $this->current_action( ) ) {
            // In our file that handles the request, verify the nonce.
            $nonce = esc_attr( $_REQUEST[ '_wpnonce' ] ) ;
            if ( ! wp_verify_nonce( $nonce, 'gc_show_appraise' ) ) {
                die( 'Go get a life script kiddies' ) ;
            }
            else {
                $appraise = self::get_appraise( absint( $_GET[ 'appraise' ] ) )[0] ;
                include_once 'show_appraise.php';
                exit;
            }
        }
        if ( 'download' === $this->current_action( ) ) {
            // In our file that handles the request, verify the nonce.
            $nonce = esc_attr( $_REQUEST[ '_wpnonce' ] ) ;
            if ( ! wp_verify_nonce( $nonce, 'gc_download_appraise' ) ) {
                die( 'Go get a life script kiddies' ) ;
            }
            else {
                $idAppraisal = absint( $_GET[ 'appraise' ] );
                var_dump("Descargando...");die;

                //wp_redirect( esc_url( add_query_arg( ) ) ) ;
                exit;
            }
        }
    }

    /**
     * Method for name column
     *
     * @param array $item an array of DB data
     *
     * @return string
     */
    function column_name_artwork( $item ) {

        // create a nonce
        $show_nonce = wp_create_nonce( 'gc_show_appraise' );
        $download_appraise_nonce = wp_create_nonce( 'gc_download_appraise' );

        $title = '<strong>' . $item['name_artwork'] . '</strong>';
        $document = self::get_appraise($item['id'])[0]['document'];
        $urlDescarga = home_url().'/wp-content/uploads/appraisal/'.$document;
        $link = '<a href="'.$urlDescarga.'" download="'.$document.'" >Download</a>';
        if($document == '' || $document == null){
            $link = '<label style="color:#72777c;">Download</label>';
        }
        $actions = [
            'show' => sprintf( '<a href="?page=%s&action=%s&appraise=%s&_wpnonce=%s">Show</a>', esc_attr( $_REQUEST['page'] ), 'show', absint( $item['id'] ), $show_nonce ),
            'download' => $link
        ];

        return $title. $this->row_actions( $actions );
    }
}