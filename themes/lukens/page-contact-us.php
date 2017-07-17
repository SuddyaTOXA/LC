<?php
/**
 * Template Name: Contact
 */
get_header();

    $contact_page_title = get_field('contact_page_title');
    $contact_page_content = get_field('contact_page_content');
    $form = get_field('contact_page_select_form');

    $location_title = get_field('location_title');
    $location_content = get_field('location_content');
    $location = get_field('location');
?>

    <?php get_template_part('inc/banner'); ?>

    <?php if ($contact_page_title || $contact_page_content || $form) {?>
        <section class="section-contact-page" id="main-content">
            <div class="container">
                <?php
                    if ($contact_page_title) {
                        echo '<h2 class="section-title line left">'. $contact_page_title .'</h2>';
                    }
                    if ($contact_page_content) {
                        echo '<div class="content-wrap"><div class="content">'. $contact_page_content .'</div></div>';
                    }
                    if (is_array($form) && is_object($form[0])) {
                        echo "<div class='form-page-wrap'>";
                        echo do_shortcode('[contact-form-7 id="'.$form[0]->ID.'" title="'.$form[0]->post_title.'"]');
                        echo "</div>";
                    }
                ?>
            </div>
        </section>
    <?php } ?>

    <?php if ($location_title || $location_content || $location) { ?>
        <section class="section-location">
            <div class="container">
                <?php
                    if ($location_title) {
                        echo '<h2 class="section-title line">'. $location_title .'</h2>';
                    }
                    if ($location_content) {
                        echo '<div class="content-wrap"><div class="content">'. $location_content .'</div></div>';
                    }
                    if ($location) {
                        echo '<ul class="location-list">';
                            foreach ($location as $loc) {
                                echo '<li>
                                        <div class="location-box">
                                            <h3 class="location-title">' . $loc['title'] . '</h3>
                                            <div class="location">
                                                <p>' . $loc['address'] . '</p>
                                                <span>Phone: <a href="tel:+' . $loc['phone'] . '" title="' . $loc['phone'] . '">' . $loc['phone'] . '</a></span>
                                            </div>
                                        </div>
                                    </li>';
                            }
                        echo '</ul>';
                    }
                ?>
            </div>
        </section>
    <?php } ?>

    <?php get_template_part('inc/section', 'popup-modal'); ?>

<?php get_footer(); ?>
