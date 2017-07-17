<?php get_header(); ?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-blog-list" id="main-content">
        <div class="container">
            <h2 class="section-title line left"><?php
                if ( $search_keys = trim( get_search_query() ) )
                    echo __('Results for').' "'.$search_keys.'"';
                else 
                    _e("No keywords entered");
            ?></h2>

            <?php if ($search_keys && have_posts()) {

                echo '<ul class="post-list">';

                    while ( have_posts() ) : the_post();
                        get_template_part('loop', 'post');
                    endwhile;

                echo '</ul>';
                wp_pagenavi();

                } else {
                    echo "<p class='no-results'>Sorry, no posts found...</p>";
                }
            ?>
        </div>
    </section>

<?php get_footer(); ?>