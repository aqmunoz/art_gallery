<?php


class dbQuery
{
    public function __construct()
    {
    }

    public function update_document_appraisal($document,$idAppraisal) {
        global $wpdb;
        $wpdb->update( 'gc_appraise_artwork', array( 'document' => $document),array('id'=>$idAppraisal));
    }
}