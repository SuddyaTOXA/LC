<?php get_header();

    $title = get_field('title') ? get_field('title') : get_the_archive_title();
    $content = get_field('content');
?>

    <?php get_template_part('inc/banner'); ?>

    <section class="section-blog-list" id="main-content">
        <div class="container">
            <?php
                if ($title) {
                    echo '<h2 class="section-title line left">'. $title .'</h2>';
                }
                if ($content) {
                    echo '<div class="content-wrap"><div class="content">'. $content .'</div></div>';
                }

                if (have_posts()) {
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