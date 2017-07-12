<?php get_header();

$sub_title = get_field('sub_title');
?>

<?php get_template_part('inc/banner'); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <section class="section-service" id="main-content">
        <div class="container">
            <div class="content-box-wrap">
                <?php
                    the_title('<h2 class="service-title line left">', '</h2>');
                    if ($sub_title) { echo '<h3 class="service-sub-title">'. $sub_title .'</h3>'; }
                ?>
                <div class="content">
                    <?php the_content(); ?>
                </div>
            </div>
            <aside class="sidebar" id="sidebar">
                <?php get_sidebar(); ?>
            </aside>
        </div>
    </section>
<?php endwhile; else: endif; ?>

<?php get_footer(); ?>