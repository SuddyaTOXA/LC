<?php get_header();
    $hero_title     = get_field('hero_title');
    $hero_sub_title     = get_field('hero_sub_title');
    $hero_image    = get_field('hero_image');
    $hero_buttons    = get_field('hero_buttons');

    $our_services_title = get_field('our_services_title');
    $our_services_content = get_field('our_services_content');
    $our_services_bottom_text = get_field('our_services_bottom_text');

    $case_studies_title = get_field('case_studies_title');
    $case_studies_content = get_field('case_studies_content');
    $case_studies_button = get_field('case_studies_button');

    $the_latest_title = get_field('the_latest_title');
    $the_latest_content = get_field('the_latest_content');
    $the_latest_button = get_field('the_latest_button');
    $the_latest_bg    = get_field('the_latest_bg');

    $our_clients_title = get_field('our_clients_title');
    $our_clients_content = get_field('our_clients_content');
    $our_clients = get_field('our_clients');

    $contact_title = get_field('contact_title');
    $contact_content = get_field('contact_content');
    $form = get_field('select_contact_form');
    $contact_bg = get_field('contact_bg');
?>

    <?php if ($hero_image || $hero_title || $hero_sub_title || $hero_buttons) { ?>
        <section class="section-hero vertical-align" id="main-content">
            <div class="container">
                <div class="container-box">
                    <?php if ($hero_title) { ?>
                    <div class="hero-box">
                        <h1 class="hero-title">
                            <span class="title">
                                <?= $hero_title; ?>
                            </span>
                            <?php if ($hero_sub_title) { ?>
                                <span class="sub-title"><?= $hero_sub_title ?></span>
                            <?php } ?>
                        </h1>
                        <?php if($hero_buttons && is_array($hero_buttons)) { ?>
                            <div class="hero-btn-box">
                                <?php foreach ($hero_buttons as $button) {
                                    $target = $button['target'] ? '_blank' : '_self';
                                    echo '<a href="'. esc_url($button['link']) .'" title="'. esc_attr($button['title']) .'" class="btn '. strip_tags($button['color']) .'" target="'.$target.'">'. $button['title'] .'</a>';
                                 } ?>
                            </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>
                <img src="<?= $hero_image ?>" alt="<?php echo strip_tags($hero_title ); ?>">
            </div>
            <a class="btn-go-bottom smooth-scroll" href="#our-services">
                <span class="icon icon-icon_chevron_white"></span>
            </a>
        </section>
    <?php } ?>

    <?php if ($our_services_title || $our_services_content || $our_services_bottom_text) { ?>
        <section class="section-our-services" id="our-services">
        <div class="container">
            <?php
                if ($our_services_title) {
                    echo '<h2 class="section-title line">'. $our_services_title .'</h2>';
                }
                if ($our_services_content) {
                    echo '<div class="content-wrap"><div class="content">'. $our_services_content .'</div></div>';
                }
                if( have_rows('services') ):
                    echo '<ul class="our-services-list">';
                    while ( have_rows('services') ) : the_row(); ?>
                        <li>
                            <div class="our-services-box">
                                <div class="our-services-icon-wrap">
                                    <span class="our-services-icon <?= the_sub_field('icon') ?>"></span>
                                </div>
                                <div class="our-services-title-wrap">
                                    <h3 class="our-services-title"><?= the_sub_field('title') ?></h3>
                                </div>
                                <div class="content"><p><?= the_sub_field('content') ?></p></div>
                            </div>
                        </li>
                    <?php endwhile;
                    echo '</ul>';
                endif;
                if ($our_services_bottom_text) {
                    echo '<span class="our-services-bottom-text">'. $our_services_bottom_text .'</span>';
                }
            ?>
        </div>
    </section>
    <?php } ?>

    <?php if ($case_studies_title || $case_studies_content || $case_studies_button ) { ?>
        <section class="section-home-case-studies inverse">
            <div class="container">
                <?php
                    if ($case_studies_title) {
                        echo '<h2 class="section-title line">'. $case_studies_title .'</h2>';
                    }
                    if ($case_studies_content) {
                        echo '<div class="content-wrap"><div class="content">'. $case_studies_content .'</div></div>';
                    }
                ?>

                <?php
                    global $wp_query;

                    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                    $args = array(
                        'post_type'     => 'study',
                        'post_status'   => 'publish',
                        'orderby'       => 'date',
                        'posts_per_page' => 3,
                        'order'         => 'ASC',
                        'paged'         => $paged,
                    );
                    $new_query = new WP_Query( $args );

                    if ($new_query->have_posts()) {
                        echo '<ul class="recent-case-post">';
                        while ($new_query->have_posts()) {
                            $new_query->the_post();
                            get_template_part('loop', 'study');
                        }
                        echo '</ul>';

                    }
                    wp_reset_query();
                ?>
                <?php
                    if ($case_studies_button && is_array($case_studies_button)) {
                        foreach ($case_studies_button as $button) {
                            echo '<a href="'. esc_url($button['link']) .'" title="'. esc_attr($button['title']) .'" class="btn btn-green-inverse">'. $button['title'] .'</a>';
                        }
                    }
                ?>
            </div>
        </section>
    <?php } ?>

    <?php if ($the_latest_title || $the_latest_content || $the_latest_button || $the_latest_bg) { ?>
        <section class="section-the-latest" style="background-image: url(<?= $the_latest_bg ?>)">
            <div class="container">
                <div class="left-box">
                    <div class="table-inner-box">
                        <?php
                            if ($the_latest_title) {
                                echo '<h2 class="section-title line">'. $the_latest_title .'</h2>';
                            }
                            if ($the_latest_content) {
                                echo '<div class="content-wrap"><div class="content">'. $the_latest_content .'</div></div>';
                            }
                             if($the_latest_button && is_array($the_latest_button)) {
                                foreach ($the_latest_button as $button) {
                                    echo '<a href="'. esc_url($button['link']) .'" title="'. esc_attr($button['title']) .'" class="btn btn-grey-inverse">'. $button['title'] .'<span class="icon '. strip_tags($button['icon']) .'"></span></a>';
                                }
                            }
                        ?>
                    </div>
                </div>
                <div class="right-box">
                    <div class="table-inner-box">
                        <?php
                        global $wp_query;

                        $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                        $args = array(
                            'post_type'     => 'post',
                            'post_status'   => 'publish',
                            'orderby'       => 'date',
                            'posts_per_page' => 3,
                            'order'         => 'ASC',
                            'paged'         => $paged,
                        );
                        $new_query = new WP_Query( $args );

                        if ($new_query->have_posts()) {
                            echo '<ul class="recent-blog-post">';
                            while ($new_query->have_posts()) {
                                $new_query->the_post();
//                                get_template_part('loop', 'post');
                            ?>
                                <li>
                                    <div class="recent-blog-box">
                                        <div class="f-coll">
                                            <span class="recent-blog-date"><?php the_date(); ?></span>
                                            <a href="<?php the_permalink(); ?>" title="<?php esc_attr(get_the_title()) ?>">
                                                <?php the_title('<span class="recent-blog-title">', '</span>'); ?>
                                            </a>
                                            <span class="recent-blog-name"><?php the_author_posts_link(); ?></span>
                                            <?php get_template_part('inc/sharehome'); ?>
                                        </div>
                                        <div class="s-coll" style="background-image: url(<?php the_post_thumbnail_url('medium'); ?>);">
                                            <a href="<?php the_permalink(); ?>" title="<?php esc_attr(get_the_title()) ?>">
                                                <?php the_post_thumbnail('medium'); ?>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="f-coll copy">
                                        <span class="recent-blog-date"><?php the_date(); ?></span>
                                        <a href="<?php the_permalink(); ?>" title="<?php esc_attr(get_the_title()) ?>">
                                            <?php the_title('<span class="recent-blog-title">', '</span>'); ?>
                                        </a>
                                        <span class="recent-blog-name"><?php the_author_posts_link(); ?></span>
                                        <?php get_template_part('inc/sharehome'); ?>
                                    </div>
                                </li>

                            <?php
                            }
                            echo '</ul>';

                        }
                        wp_reset_query();
                        ?>
                    </div>
                </div>
            </div>
        </section>
    <?php } ?>

    <?php if ($our_clients_title || $our_clients_content || $our_clients) { ?>
        <section class="section-our-clients inverse">
            <div class="container">
                <div class="left-box">
                    <div class="table-inner-box">
                       <?php
                            if($our_clients && is_array($our_clients)) {
                                echo '<ul class="our-clients-logo-list">';
                                    foreach ($our_clients as $client) {
                                        if ($client['logo']) { 
                                            echo '<li>';
                                                if (!empty($client['link'])) {
                                                    echo '<a href="'. esc_url($client['link']) .'" title="'. esc_attr($client['title']) .'" target="_blank">
                                                                <img src="'. $client['logo'] .'" alt="'. esc_attr($client['title']) .'">
                                                          </a>';
                                                }   else {
                                                    echo '<img src="'. $client['logo'] .'" alt="'. esc_attr($client['title']) .'">';
                                                }
                                            echo '</li>';
                                        }
                                    }
                                echo '</ul>';
                           }
                       ?>
                    </div>
                </div>
                <div class="right-box">
                    <div class="table-inner-box">
                        <?php
                            if ($our_clients_title) {
                                echo '<h2 class="section-title line">'. $our_clients_title .'</h2>';
                            }
                            if ($our_clients_content) {
                                echo '<div class="content-wrap"><div class="content">'. $our_clients_content .'</div></div>';
                            }
                            if($our_clients && is_array($our_clients)) {
                                echo '<ul class="our-clients-list">';
                                foreach ($our_clients as $client) {
                                    echo '<li>';
                                        if (!empty($client['link'])) {
                                            echo '<a href="'. esc_url($client['link']) .'" title="'. esc_attr($client['title']) .'"  target="_blank">'. $client['title'] .'</a>';
                                        } else {
                                            echo '<span>'. $client['title'] .'</span>';
                                        }
                                    echo '</li>';
                                }
                            }
                        ?>
                    </div>
                </div>
            </div>
        </section>
    <?php } ?>

    <?php if($contact_title || $contact_content || $form || $contact_bg) { ?>
    <section class="section-contact-us" style="background-image: url(<?= $contact_bg ?>)">
        <div class="container">
            <?php
                if ($contact_title) {
                    echo '<h2 class="section-title line">'. $contact_title .'</h2>';
                }
                if ($contact_content) {
                    echo '<div class="content-wrap"><div class="content">'. $contact_content .'</div></div>';
                }
                if (is_array($form) && is_object($form[0])) {
                    echo "<div class='form-wrap'>";
                    echo do_shortcode('[contact-form-7 id="'.$form[0]->ID.'" title="'.$form[0]->post_title.'"]');
                    echo "</div>";
                }
            ?>
        </div>
    </section>
<?php } ?>

<?php get_footer(); ?>