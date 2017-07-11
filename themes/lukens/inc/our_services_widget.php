<div class="widget our-services_widget">
    <h4>Services</h4>
<?php
    global $wp_query;

    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
    $args = array(
    'post_type'     => 'service',
    'post_status'   => 'publish',
    'orderby'       => 'date',
    'order'         => 'DESC',
    'paged'         => $paged,
    );
    $new_query = new WP_Query( $args );

    if ($new_query->have_posts()) {
    echo '<ul class="services-widget-list">';
        while ($new_query->have_posts()) {
            $new_query->the_post();
            echo '<li>
                       <a href="'. get_the_permalink() .'"> <span class="w-icon '. get_field('icon') .'"></span>'. get_the_title() .'</a>
                   </li>';
        }
        echo '</ul>';
    wp_pagenavi( array( 'query' => $new_query ) );

    } else {
    echo "<p class='no-results'>Sorry, services not found...</p>";
    }
    wp_reset_query();
?>
</div>