<div class="wrap about-wrap full-width-layout">
    <h1><?php esc_html_e( 'WooCommerce Pay Per Post', 'wc_pay_per_post' ); ?> (<a
                href="#changelog"><?php echo WC_PPP_VERSION; ?></a>)</h1>
    <div class="pramadillo-badge"><img src="<?php echo plugin_dir_url( __DIR__ ) . 'img/icon.png'; ?>"/></div>

    <div class="about-text">
		<?php _e( 'If you have any questions or want to suggest a feature request please reach out to me at <a href="https://pramadillo.com" target="_blank">pramadillo.com</a>.  If you really dig this plugin consider leaving me a review!', 'wc_pay_per_post' ); ?>
    </div>

	<?php if ( wcppp_freemius()->is_not_paying() && ! wcppp_freemius()->is_trial() ) : ?>
        <a href="<?php echo wcppp_freemius()->get_upgrade_url(); ?>"><img
                    src="<?php echo plugin_dir_url( __DIR__ ) . 'img/upgrade.png'; ?>"
                    style="position:fixed; right:0; bottom:0; margin-right:20px; margin-top:20px; max-width:250px;"/></a>
	<?php endif; ?>

    <nav class="nav-tab-wrapper wp-clearfix" aria-label="<?php esc_attr_e( 'Secondary menu' ); ?>">
        <a href="#" class="nav-tab nav-tab-active" aria-current="page"><?php _e( 'What&#8217;s New' ); ?></a>
        <a href="admin.php?page=wc_pay_per_post-getting-started" class="nav-tab"><?php _e( 'Getting Started' ); ?></a>
        <a href="#changelog" class="nav-tab"><?php _e( 'Changelog' ); ?></a>
        <a href="admin.php?page=wc_pay_per_post-help" class="nav-tab"><?php _e( 'Help' ); ?></a>
    </nav>

    <div class="changelog point-releases">
        <h3><?php _e( 'Latest release changelog' ); ?></h3>
        <p>
            <strong><?php _e( 'Version', 'wc_pay_per_post' ); ?> <?php echo WC_PPP_VERSION; ?> </strong>
			<?php
			echo str_replace( '*', '<br>', $last_change );
			?>
            <br><br>
            <strong><?php _e( 'For more information, see <a href="#changelog">the changelog</a>.', 'wc_pay_per_post' ); ?></strong>
        </p>

    </div>

	<?php if ( 'true' === $needs_upgrade ) : ?>
        <div class="wc-ppp-upgrade">
            <h3><?php esc_html_e( 'Your database needs to be upgraded as you have ', 'wc_pay_per_post' ); ?><?php echo $old_products->post_count; ?><?php esc_html_e( ' products that use an outdated version of this plugin!', 'wc_pay_per_post' ); ?></h3>
            <p><?php esc_html_e( 'It is', 'wc_pay_per_post' ); ?>
                <strong><?php esc_html_e( 'STRONGLY', 'wc_pay_per_post' ); ?></strong> <?php esc_html_e( 'recommended that you backup your database before doing any upgrades.', 'wc_pay_per_post' ); ?>
            </p>
            <form id="wc-ppp-upgrade" action="" method="post">
				<?php wp_nonce_field( 'wc_ppp_upgrade', 'wc_ppp_upgrade_nonce' ); ?>

                <ul>
					<?php
					while ( $old_products->have_posts() ) :
						$old_products->the_post();
						?>
                        <li>[<?php the_ID(); ?>] - <a
                                    href="<?php echo admin_url(); ?>post.php?post=<?php echo get_the_ID(); ?>&action=edit"><?php the_title(); ?></a>
                        </li>
					<?php endwhile; ?>
					<?php wp_reset_postdata(); ?>
                </ul>
                <input type="submit" name="wc-ppp-upgrade-btn" class="wc-ppp-upgrade-btn button action"
                       value="Upgrade Now">
            </form>

        </div>
	<?php endif; ?>

	<?php if ( isset( $_GET['upgrade_complete'] ) && $_GET['upgrade_complete'] === 'true' ) : ?>
        <div class="wc-ppp-upgrade success">
            <h3><?php esc_html_e( 'Awesome, the database upgrade was a success', 'wc_pay_per_post' ); ?></h3>
        </div>
	<?php endif; ?>
	<?php if ( wcppp_freemius()->is_not_paying() && ! wcppp_freemius()->is_trial() ) : ?>

    <div class="headline-feature">
        <h2><?php _e( 'Upgrade today for these awesome Premium features!', 'wc_pay_per_post' ); ?></h2>
        <ul>
            <li><?php _e( 'Ability to override Restricted Content Message on a per page basis', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Delay Restriction – This allows you to delay the paywall from appearing for a set amount of time.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Page View Restriction – This allows you to limit the number of page views the user who purchased this product has before the paywall reappears. Options to specify over a set amount of time or forever.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Expiry Restriction – This allows you to specify an expiration on this post which would require the user to repurchase the product associated with this post.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Custom WooCommerce tab on the My Account page to list out all purchased content.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Listing of purchased content on order receipt and order confirmation page.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'PolyLang Multiple Language support.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'Priority Support.', 'wc_pay_per_post' ); ?></li>
            <li><?php _e( 'And more!', 'wc_pay_per_post' ); ?></li>
        </ul>
    </div>

    <hr>
    <?php endif; ?>
    <div class="wc-ppp-changelog" id="changelog">
        <h2><?php esc_html_e( 'Changelog', 'wc_pay_per_post' ); ?></h2>

		<?php
		echo '<pre>';
		print_r( $full_change_log );
		echo '</pre>';
		?>

    </div>
</div>
