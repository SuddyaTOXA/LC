<?php
get_header();

$title = get_field('title');
$content = get_field('content');
$bottom_btn = get_field('bottom_button');

?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-study-list">
        <div class="container">

            <?php
                $args = array(
                    'taxonomy' => 'study_category',
                );
                $terms = get_terms( $args );

                if( $terms && is_array($terms) ){
                    $tax_id = get_queried_object()->term_id;
                    echo '<ul class="study-filter">';
                        echo '<li><a href="'. get_the_permalink(10) .'" title="Show All">Show All</a></li>';
                        foreach( $terms as $term ){
                            $term_id = $term->term_id;
                            if ($tax_id == $term_id) {
                                echo '<li class="active"><a href="'. get_term_link( $term->term_id, $taxonomy = 'study_category' ) .'" title="'. $term->name .'">'. $term->name .'</a></li>';
                            } else {
                                echo '<li><a href="'. get_term_link( $term->term_id, $taxonomy = 'study_category' ) .'" title="'. $term->name .'">'. $term->name .'</a></li>';
                            }
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
                if ( have_posts() ) {
                    echo '<ul class="study-list">';
                        while ( have_posts() ) {
                            the_post();
                            get_template_part('loop', 'study');
                        }
                    echo '</ul>';
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
                }
            ?>
        </div>
    </section>
    <?php if ($bottom_btn && is_array($bottom_btn)) { ?>
    <section class="section-get-in-touch">
        <div class="container">
            <?php
                foreach ($bottom_btn as $btn) {
                    echo '<a href="'. esc_url($btn['link']) .'" class="bth-get-touch" title="'. esc_attr($btn['title']) .'">'. $btn['title'] .'</a>';
                }
            ?>
        </div>
    </section>
<? } ?>

<?php get_footer(); ?>