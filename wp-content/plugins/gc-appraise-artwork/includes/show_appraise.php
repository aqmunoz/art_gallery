<div class="wrap">
    <div class="col-md-6 col-sm-6 col-lg-6">
        <h2>Showing appraisal of artwork</h2>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="name_artwork">Artwork's name</label>
        <p id="name_artwork"><?php echo $appraise['name_artwork'] ; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="theme_artwork">Artwork's theme</label>
        <p id="theme_artwork"><?php echo $appraise['theme_artwork'] ; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="author_name">Author's name</label>
        <p id="author_name"><?php echo $appraise['author_name'] ; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="author_resume">Author's resume</label>
        <p id="author_resume"><?php echo $appraise['author_resume'] ; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="dimensions">Dimensions</label>
        <p id="dimensions"><?php echo $appraise['large'].' X '. $appraise['width'].' X '.$appraise['height']; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="material">Material</label>
        <p id="material"><?php echo $appraise['material']; ?></p>
    </div>
    <div class="col-md-6 col-sm-6 col-lg-6 form-input">
        <label style="font-weight: bolder;" for="technique">Technique</label>
        <p id="technique"><?php echo $appraise['technique']; ?></p>
    </div>
    <div class="row">
        <div class="col-md-6 col-sm-6 col-lg-6">
            <input type="button" class="btn btn-primary" onclick="javascript:history.back()"  name="return_to_list" value="Return to list"/>
        </div>
    </div>
</div>
