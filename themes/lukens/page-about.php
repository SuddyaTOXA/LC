<?php
/**
 * Template Name: About
 */
get_header();

    $title = get_field('title');
    $content = get_field('content');
    $bottom_btn = get_field('bottom_button');
?>

    <?php get_template_part('inc/banner'); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <div class="section-about" id="main-content">
        <?php echo the_content(); ?>
    </div>
<?php endwhile; else: endif; ?>

    <?php if ($bottom_btn && is_array($bottom_btn)) { ?>
        <section class="section-get-in-touch">
            <div class="container">
                <?php
                foreach ($bottom_btn as $btn) {
                    echo '<a href="'. esc_url($btn['link']) .'" class="bth-get-touch" title="'. esc_attr($btn['title']) .'">'. $btn['title'] .'</a>';
                }
                ?>
            </div>
        </section>
    <? } ?>



<?php get_footer(); ?>



