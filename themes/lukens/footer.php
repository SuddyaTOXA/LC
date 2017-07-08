

    </div><!--/wrap-->
        <footer class="footer" id="footer">
        <a class="btn-go-top smooth-scroll" href="#main-content">
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
                            <li><a href="<?php the_sub_field('link'); ?>" target="_blank"><i class="fa <?php the_sub_field('icon'); ?>" aria-hidden="true"></i></a></li>
                        <?php endwhile; ?>
                    </ul>
                <?php endif; ?>
            </div>
        </div>
    </footer>

    <?php wp_footer(); ?>
</body>
</html>