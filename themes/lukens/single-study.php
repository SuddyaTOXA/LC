<?php get_header();

$sub_title = get_field('sub_title');
?>

<?php get_template_part('inc/banner'); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <section class="section-study">
        <?php the_content(); ?>
    </section>
<?php endwhile; else: endif; ?>

<?php get_footer(); ?>