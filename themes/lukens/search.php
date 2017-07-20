<?php get_header(); ?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-blog-list" id="main-content">
        <div class="container">
            <div class="search-page-box">
                <div class="widget_search">
                    <form role="search" method="get" class="search-form" action="<?php echo home_url( '/' ); ?>">
                        <label>
                            <input type="search" class="search-field" placeholder="Search …" value="<?php esc_attr_e(trim(get_search_query())); ?>" name="s" title="Search …">
                        </label>
                        <input type="submit" class="search-submit" value="Search">
                    </form>
                </div>
            </div>
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