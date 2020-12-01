<?php
class Message{
    public function __construct()
    {
    }

    function showMessages($type, $msg){
        switch($type){
            case 'error':
                //add_action( 'admin_notices', function() use ($msg){
                echo '<div class="col-sm-12 col-md-12 col-lg-12">';
                echo '<div class="col-sm-6 col-md-6 col-lg-6">';
                echo '<div class="alert alert-danger alert-dismissable"><p>';
                echo '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                echo $msg;
                echo '</p></div></div></div>';
                //} );
                break;
            case 'success':
                //add_action( 'admin_notices', function() use ($msg){
                echo '<div class="col-sm-12 col-md-12 col-lg-12">';
                echo '<div class="col-sm-6 col-md-6 col-lg-6">';
                echo '<div class="alert alert-success alert-dismissable"><p>';
                echo '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                echo $msg;
                echo '</p></div></div></div>';
                //} );
                break;
        }
    }
}