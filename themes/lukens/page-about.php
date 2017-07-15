<?php
/**
 * Template Name: About
 */
get_header();

    $title = get_field('title');
    $content = get_field('content');
?>

    <?php get_template_part('inc/banner'); ?>

    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="section-about" id="main-content">
            <?php echo the_content(); ?>
        </div>
    <?php endwhile; else: endif; ?>

    <?php get_template_part('inc/section', 'get-in-touch'); ?>

<?php get_footer(); ?>
