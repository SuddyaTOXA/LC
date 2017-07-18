<div class="widget case-studies-widget">
    <h4>Case Studies</h4>
<?php
    global $wp_query;

    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
    $args = array(
        'post_type'     => 'study',
        'post_status'   => 'publish',
        'post__not_in'  => array($post->ID),
        'orderby'       => 'date',
        'order'         => 'DESC',
        'posts_per_page' => 6,
        'paged'         => $paged,
    );
    $new_query = new WP_Query( $args );

    if ($new_query->have_posts()) {
    echo '<ul class="study-widget-list">';

        while ($new_query->have_posts()) { $new_query->the_post();
            $title = get_the_title();
            $url = get_the_permalink();

            echo '<li>
                       <a href="'. $url .'" title="'. esc_attr($title) .'">'. $title .'</a>
                   </li>';
        }
        echo '</ul>';

    } else {
        echo "<p class='no-results'>Sorry, no posts found...</p>";
    }
    wp_reset_query();
?>
</div>