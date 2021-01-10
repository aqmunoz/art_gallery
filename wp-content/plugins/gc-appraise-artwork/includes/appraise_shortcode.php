 
 <?php



 // Define a shortcode and link with a function
add_shortcode('gc_appraise_artwork_form', 'gc_appraise_artwork_form');
 
/** 
 * Function that define de form
 * @return string
 */
function gc_appraise_artwork_form()
{
    include_once plugin_dir_path(__FILE__).'../messages/messages.php';
    $message = new Message();
	global $wpdb;

     if (isset($_POST['name_artwork_appraise']) AND $_POST['name_artwork_appraise'] != ''
         AND $_POST['theme_artwork_appraise'] != ''
         AND $_POST['large_appraise'] != 0
         AND $_POST['width_appraise'] != 0
         AND $_POST['height_appraise'] != 0
         AND $_POST['author_name_appraise'] != ''
         AND wp_verify_nonce($_POST['csrf_galery_art'], 'appraise_artwork_2020')
     ) {
         $appraise_table = 'gc_appraise_artwork';
         $name_artwork = sanitize_text_field($_POST['name_artwork_appraise']);
         $theme_artwork = sanitize_text_field($_POST['theme_artwork_appraise']);
         $id_material = (int)$_POST['id_material_appraise'];
         $id_technique = (int)$_POST['id_technique_appraise'];
         $large = (double)$_POST['large_appraise'];

         $height = (double)$_POST['height_appraise'];
         $width = (double)$_POST['width_appraise'];
         $author_name = sanitize_text_field($_POST['author_name_appraise']);
         $author_resume = sanitize_text_field($_POST['author_resume_appraise']);
         $created_at = date('Y-m-d H:i:s');
         $id_user = (int)get_current_user_id();
         if ($id_user == 0) {
             //die('AAAAA');
             $message->showMessages('error', "<p class='error'><b>You are not authenticated</b>. You can't access to this section.</p>");
             exit;
         }
         $wpdb->insert(
             $appraise_table,
             array(
                 'name_artwork' => $name_artwork,
                 'theme_artwork' => $theme_artwork,
                 'id_material' => $id_material,
                 'id_technique' => $id_technique,
                 'large' => $large,
                 'height' => $height,
                 'width' => $width,
                 'author_name' => $author_name,
                 'author_resume' => $author_resume,
                 'id_user' => $id_user,
                 'created_at' => $created_at,
             )
         );

         $message->showMessages('success', "The appraisal has been send. Thank you very much.");
     }

    // Esta funci?n de PHP activa el almacenamiento en b?fer de salida (output buffer)
    // Cuando termine el formulario lo imprime con la funci?n ob_get_clean
    ob_start();
    ?>
    <div class="col-sm-12 col-md-12 col-lg-12 my-auto">
        <div class="col-sm-12 col-md-12 col-lg-12 my-auto">
            <h1 class="wp-heading-inline">Appraise artwork's form</h1>
        </div>
    </div>
    <form action="<?php get_permalink(); ?>" method="post" id="form_appraise">
		 <?php wp_nonce_field('appraise_artwork_2020', 'csrf_galery_art'); ?><!--EVITAR ataques CSRF-->
		<div class="col-sm-12 col-md-12 col-lg-12 my-auto">
			<div class="col-md-6 col-sm-6 col-lg-6 form-input">
				<label for="name_artwork_appraise">Artwork's name</label>
				<input class="form-control" type="text" name="name_artwork_appraise" id="name_artwork_appraise" required>
			</div>
            <div class="col-md-6 col-sm-6 col-lg-6 form-input">
                <label for="theme_artwork_appraise">Artwork's theme</label>
                <input class="form-control" type="text" name="theme_artwork_appraise" id="theme_artwork_appraise" required>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6 form-input">
                <label for="author_name_appraise">Author's name</label>
                <small>(The name of the author's artwork)</small>
                <input class="form-control" type="text" name="author_name_appraise" id="author_name_appraise" required>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6 form-input">
                <label for="author_resume_appraise">Author's resume</label>
                <small>(The resume of the author's artwork)</small>
                <textarea class="form-control" type="text" name="author_resume_appraise" id="author_resume_appraise"></textarea>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4 form-input">
                        <label for='large_appraise'>Length</label>
                        <input class="form-control" type="number" step="0.5" min="1" name="large_appraise" id="large_appraise" value="1" required>
                    </div>
                    <div class="col-md-4 col-sm-4 col-lg-4 form-input">
                        <label for='width_appraise'>Width</label>
                        <input class="form-control" type="number" step="0.5" min="1" name="width_appraise" id="width_appraise" value="1" required>
                    </div>
                    <div class="col-md-4 col-sm-4 col-lg-4 form-input">
                        <label for='height_appraise'>Height</label>
                        <input class="form-control" type="number" step="0.5" min="1" name="height_appraise" id="height_appraise" value="1" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
                        <label for="id_material_appraise">Material used</label>
                        <select class="form-control" id="id_material_appraise" name="id_material_appraise">
                        <?php
                            $materials = $wpdb->get_results(
                                    "SELECT
                                        wp_posts.ID as id,
                                        wp_posts.post_title as val
                                    FROM
                                        wp_posts
                                    INNER JOIN wp_term_relationships ON (
                                        wp_posts.ID = wp_term_relationships.object_id
                                    )
                                    INNER JOIN wp_term_taxonomy ON (wp_term_taxonomy.term_taxonomy_id = wp_term_relationships.term_taxonomy_id)
                                    INNER JOIN wp_terms ON (wp_term_taxonomy.term_id = wp_terms.term_id)
                                    WHERE
                                        wp_terms.`name` = 'Material'"
                            );
                            foreach($materials as $material){
                                ?>
                                <option value="<?php echo $material->id; ?>"><?php echo $material->val; ?></option>
                                <?php
                            }
                        ?>
                        </select>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
                        <label for="id_technique_appraise">Technique used</label>
                        <select class="form-control" id="id_technique_appraise" name="id_technique_appraise">
                            <?php
                            $materials = $wpdb->get_results(
                                "SELECT
                                    wp_posts.ID as id,
                                    wp_posts.post_title as val
                                FROM
                                    wp_posts
                                INNER JOIN wp_term_relationships ON (
                                    wp_posts.ID = wp_term_relationships.object_id
                                )
                                INNER JOIN wp_term_taxonomy ON (wp_term_taxonomy.term_taxonomy_id = wp_term_relationships.term_taxonomy_id)
                                INNER JOIN wp_terms ON (wp_term_taxonomy.term_id = wp_terms.term_id)
                                WHERE
                                    wp_terms.`name` = 'Technique'"
                            );
                            foreach($materials as $material){
                                ?>
                                <option value="<?php echo $material->id; ?>"><?php echo $material->val; ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
            </div>
			<div class="col-sm-6 col-md-6" style="margin-top: 5px;">
				<div class="form-input">
					<input class="btn btn-primary"  type="submit" value="Send">
				</div>
			</div>
		</div>
    </form>
    <?php
    // Devuelve el contenido del buffer de salida
    return ob_get_clean();
}
		 
    