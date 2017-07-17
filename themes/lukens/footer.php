    </div>

    <footer class="footer" id="footer">
        <a class="btn-go-top smooth-scroll" href="#main-content" title="Back to Top">
            <span class="icon icon-icon-chevron-up"></span>
        </a>
        <div class="container">
            <a href="<?php echo home_url(); ?>" class="footer-logo">
                <?php
                if ( get_field('footer_logo', 'option') ) {
                    $logo_url = get_field('footer_logo', 'option');
                } else {
                    $logo_url = get_bloginfo('template_url') . '/img/logo_white.png';
                }
                ?>
                <img src="<?php echo $logo_url; ?>" alt="<?php bloginfo('name'); ?>">
            </a>

            <?php wp_nav_menu(array(
                'theme_location'  => 'footer-menu',
                'menu'            => 'Footer Menu',
                'container'       => false,
                'menu_class'      => 'footer-menu',
                'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
                'depth'           => 1
            )); ?>

            <?php if( have_rows('contacts', 'option') ): ?>
                <ul class="address-list" >

                    <?php while( have_rows('contacts', 'option') ): the_row(); ?>
                        <li >
                            <div class="address-box" >
                                <?php
                                if (get_sub_field('address')) {
                                    echo '<p>'. get_sub_field('address') .'</p>';
                                }
                                if (get_sub_field('phone')) {
                                    echo '<a href="tel:+'. get_sub_field('phone') .'">'. get_sub_field('phone') .'</a>';
                                }
                                ?>
                            </div >
                        </li >
                    <?php endwhile; ?>

                </ul>
            <?php endif; ?>

            <div class="footer-bottom-box">
                <?php
                if ( get_field('copyright', 'option') ) { ?>
                    <div class="copyright"><?php echo get_field('copyright', 'option') ?></div>
                <?php } ?>
                <?php if( have_rows('social_links', 'option') ): ?>
                    <ul class="footer-social-list">
                        <?php while( have_rows('social_links', 'option') ): the_row(); ?>
                            <li><a href="<?php the_sub_field('link'); ?>" title="<?php esc_attr(the_sub_field('title')) ?>" target="_blank"><i class="fa <?php the_sub_field('icon'); ?>" aria-hidden="true"></i></a></li>
                        <?php endwhile; ?>
                    </ul>
                <?php endif; ?>
            </div>
        </div>
    </footer>

    <div id="modal" class="modal-popup zoom-anim-dialog mfp-hide get-a-copy inverse">
        <div class="modal-content">
            <div class="left-modal-box">
                <img src="<?= get_bloginfo('template_url'); ?>/img/icon-download.png" alt="icon-download" />
            </div>
            <div class="right-modal-box">
                <h2 class="modal-title left line">Get A Copy!</h2>

                <div class="content">
                    <p>Sign-up to recieve our newsletter and get a
                        <span>free copy</span> of the case study for a more in-depth look at the process and outcome of our work. </p>
                </div>

                <div class="form-wrap">
                    <form method="post" action="#">
                        <ul class="form-list">
                            <li>
                                <input class="input-style" type="text" name="your-name" value="" placeholder="Name*" title="Name">
                            </li>
                            <li>
                                <input class="input-style" type="email" name="your-email" value="" placeholder="Email*" title="Email">
                            </li>
                        </ul>
                        <div class="form-btn-box">
                            <div class="submit-wrap">
                                <input type="submit" value="SUBMIT" class="btn btn-submit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div id="modal2" class="modal-popup modal-thanks zoom-anim-dialog mfp-hide get-a-copy inverse">
        <div class="modal-content">
            <div class="left-modal-box">
                <img src="<?= get_bloginfo('template_url'); ?>/img/ion_zap.png" alt="icon-zap" />
            </div>
            <div class="right-modal-box">
                <h2 class="modal-title left line">Thanks!</h2>

                <div class="content">
                    <p>Your download will begin momentarily.
                        You can also download directly below. </p>
                </div>

                <div class="submit-wrap download">
                    <a class="btn btn-submit" href="#" title="download now">Download Now</a>
                </div>
            </div>
        </div>
    </div>

    <?php wp_footer(); ?>
</body>
</html>