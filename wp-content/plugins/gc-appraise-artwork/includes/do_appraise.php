<?php
include_once plugin_dir_path(__FILE__).'../messages/messages.php';
$message = new Message();

$action =  plugins_url( 'upload_appraisal.php', __FILE__ );//esc_url( add_query_arg('upload_appraisal.php') );
$documentsPath = plugin_dir_path(__FILE__).'../../../uploads/';
$dirVerify = $documentsPath.'appraisal/';

if(!is_dir($dirVerify)){
    mkdir($dirVerify,0777);
}
$in = false;
if('POST' == $_SERVER['REQUEST_METHOD'] && isset($_POST['path_doc_appraisal']) &&  wp_verify_nonce($_POST['csrf_galery_art'], 'appraise_artwork_2020')) {
    $filename = $_FILES['appraisal_file']['name'];
    $ext = pathinfo($filename, PATHINFO_EXTENSION);
    $allowed = array('doc', 'docx', 'pdf');
    $nameDestFile = uniqid('doc-') . '.' . $ext;
    $destFile = $dirVerify . $nameDestFile;
    if($filename == '' || $filename == null){
        $message->showMessages('error', "<p class='error'><b>Empty field</b>. You must select a file.</p>");
        $in = true;
    }
    else if (!in_array($ext, $allowed)) {
        $message->showMessages('error', "<p class='error'><b>Extensions not allowed</b>. You can upload files with the following extensions [doc, docx, pdf].</p>");
        $in = true;
        //exit;
    }
    else if (!move_uploaded_file($_FILES['appraisal_file']['tmp_name'], $destFile)) {
        $message->showMessages('error', "<p class='error'><b>Upload failed</b>. The system can't upload the file.</p>");
        $in = true;
        //exit;
    }
    else {
        if (!$in) {
            include_once plugin_dir_path(__FILE__).'../db/dbQuery.php';
            $db = new dbQuery();
            $db->update_document_appraisal($nameDestFile,$idAppraisal);
            $urlList = home_url().'/wp-admin/admin.php?page=gc_appraise_list_menu';
            wp_redirect(esc_url($urlList));
            $message->showMessages('success', "Appraisal upload successfully.");
        }
    }
}
?>
<div class="wrap">
    <div class="col-sm-6 col-md-6 col-lg-6">
        <h2>Appraisal</h2>
    </div>
    <form id="new_appraise" action="<?php echo get_permalink(); ?>" method="POST" enctype="multipart/form-data">
        <?php wp_nonce_field('appraise_artwork_2020', 'csrf_galery_art'); ?><!--EVITAR ataques CSRF-->
        <div class="col-sm-6 col-md-6 col-lg-6">
            <label for="appraisal_file">Document(doc,docx,pdf)</label>
            <input class="form-control" accept=".doc,.docx,.pdf" id="appraisal_file" name="appraisal_file" type="file"/>
            <input id="path_doc_appraisal" name="path_doc_appraisal" type="hidden" value="<?php echo $dirVerify;?>"/>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <input style="margin-top: 5px;"  class="btn btn-primary" type="submit" value="Upload"/>
        </div>
    </form>
</div>