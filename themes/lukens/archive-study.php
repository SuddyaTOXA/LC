<?php get_header();

    $title = get_field('title', 10);
    $content = get_field('content', 10);
?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-study-list" id="main-content">
        <div class="container">

            <?php
                $args = array(
                    'taxonomy' => 'study_category',
                );
                $terms = get_terms( $args );

                if( $terms && is_array($terms) ){
                    echo '<ul class="study-filter">';
                        echo '<li class="active"><a href="'. get_the_permalink(10) .'" title="Show All">Show All</a></li>';
                        foreach( $terms as $term ){
                            echo '<li><a href="'. get_term_link( $term->term_id, $taxonomy = 'study_category' ) .'" title="'. $term->name .'">'. $term->name .'</a></li>';
                        }
                    echo '</ul>';
                }
            ?>

            <?php
                if ($title) {
                    echo '<h2 class="section-title line">'. $title .'</h2>';
                }
                if ($content) {
                    echo '<div class="content-wrap"><div class="content">'. $content .'</div></div>';
                }

                global $wp_query;

                $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                $args = array(
                    'post_type'     => 'study',
                    'post_status'   => 'publish',
                    'orderby'       => 'date',
                    'order'         => 'ASC',
                    'paged'         => $paged,
                );
                $new_query = new WP_Query( $args );

                if ($new_query->have_posts()) {
                    echo '<ul class="study-list">';
                        while ($new_query->have_posts()) {
                            $new_query->the_post();
                            get_template_part('loop', 'study');
                        }
                    echo '</ul>';
                    wp_pagenavi( array( 'query' => $new_query ) );
                ?>
                    <script>
                        //for case study box
                        if (jQuery('.study-list').length) {
                            var maxHeight = 0,
                                box = jQuery('.study-left-box'),
                                imgBox = jQuery('.study-img-wrap');

                            box.each(function () {
                                if (jQuery(window).width() > 767) {
                                    if ( jQuery(this).outerHeight() > maxHeight ) {
                                        maxHeight = jQuery(this).outerHeight();
                                    }
                                    imgBox.css('height', maxHeight);
                                } else {
                                    imgBox.css('height', ' ');
                                }
                            });
                        }
                    </script>
                <?php
                } else {
                    echo "<p class='no-results'>Sorry, no case studies found...</p>";
                }
                wp_reset_query();
            ?>
        </div>
    </section>
    
    <?php get_template_part('inc/section', 'get-in-touch'); ?> 

<?php get_footer(); ?>