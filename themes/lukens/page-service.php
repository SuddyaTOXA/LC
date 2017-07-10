<?php
/**
 * Template Name: Services
 */
get_header();

$title = get_field('title');
$content = get_field('content');
?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-services-list">
        <div class="container">
            <?php
                if ($title) {
                    echo '<h2 class="section-title line">'. $title .'</h2>';
                }
                if ($content) {
                    echo '<div class="content-wrap"><div class="content">'. $content .'</div></div>';
                }
            /*
                            global $wp_query;

                            $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                            $args = array(
                                'post_type'     => 'post',
                                'post_status'   => 'publish',
                                'orderby'       => 'date',
                                'order'         => 'DESC',
                                'paged'         => $paged,
                            );
                            $new_query = new WP_Query( $args );

                            if ($new_query->have_posts()) {
                                echo '<ul class="post-list">';
                                    while ($new_query->have_posts()) {
                                        $new_query->the_post();
                                        get_template_part('loop', 'post');
                                    }
                                echo '</ul>';
                                wp_pagenavi( array( 'query' => $new_query ) );

                            } else {
                                echo "<p class='no-results'>Sorry, articles not found...</p>";
                            }
                            wp_reset_query();
                        */
            ?>
        </div>
    </section>




<?php get_footer(); ?>