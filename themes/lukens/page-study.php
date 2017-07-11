<?php
/**
 * Template Name: Case Studies
 */
get_header();

$title = get_field('title');
$content = get_field('content');

$taxonomy = 'study_category';
$categories = get_terms($taxonomy, array('orderby' => 'term_order', 'parent' => 0));
?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-study-list">
        <div class="container">
            <?php /*
            if ($categories && is_array($categories)) {
                $c = 0;
                $services_ids = [];

                echo '<nav class="side-nav d-cell">';
                foreach($categories as $cat) {
                    $args = array(
                        'post_type'      => 'study',
                        'post_status'    => 'publish',
                        'posts_per_page' => '-1',
                        'orderby'        => 'menu_order',
                        'order'          => 'ASC',
                        'tax_query'      => array(
                            array(
                                'taxonomy'           => $taxonomy,
                                'field'              => 'slug',
                                'terms'              => $cat->slug,
                                'include_children'   => true
                            ),
                        ),
                        'cache_results'  => false
                    );

                    $loop = new WP_Query($args);
                    if( $loop->have_posts() ) {
                        $s = 0;
                        echo "<div class='side-nav-block'>
                                    <div class='title'>{$cat->name}</div>
                                    <ul class='side-nav-list'>";
                        while( $loop->have_posts() ) : $loop->the_post();
                            if ($c === 0 && $s === 0) {
                                define('ID', get_the_id());
                                $class = 'active';
                            } else {
                                $class = '';
                            }
                            $services_ids[] = get_the_id();

                            echo '<li class="side-nav-item '.$class.'"><a href="'.get_permalink().'" class="side-nav-link" title="'.esc_attr(get_the_title()).'">'.get_the_title().'</a></li>';
                            $s++;
                        endwhile;
                        echo   "</ul>
                                 </div>";
                    }
                    wp_reset_query();
                    $c++;
                }
                echo '</nav>';
            }
            */?>
            <ul class="study-filter">
                <li>
                    <a href=""></a>
                </li>
            </ul>

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
                    'order'         => 'DESC',
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

                } else {
                    echo "<p class='no-results'>Sorry, articles not found...</p>";
                }
                wp_reset_query();
            ?>
        </div>
    </section>




<?php get_footer(); ?>