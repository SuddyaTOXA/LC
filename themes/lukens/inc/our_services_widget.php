<div class="widget our-services_widget">
    <h4>Services</h4>
<?php
    $page_url = current_url();
    
    global $wp_query;

    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
    $args = array(
        'post_type'     => 'service',
        'post_status'   => 'publish',
        'orderby'       => 'date',
        'order'         => 'DESC',
        'posts_per_page' => -1,
        'paged'         => $paged,
    );
    $new_query = new WP_Query( $args );

    if ($new_query->have_posts()) {

        echo '<ul class="services-widget-list">';
        while ($new_query->have_posts()) { $new_query->the_post();
            $title = get_the_title();
            $url = get_the_permalink();
            $class = ($page_url == $url) ? 'active' : '';

            echo '<li>
                    <a href="'. $url .'" class="'. $class .'" title="'. esc_attr($title) .'"><span class="w-icon '. get_field('icon') .'"></span>'. $title .'</a>
                </li>';
        }
        echo '</ul>';

    } else {
        echo "<p class='no-results'>Sorry, no services found...</p>";
    }
    wp_reset_query();
?>
</div>