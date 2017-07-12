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
    <section class="section-about">
        <div class="container">
            <?php
    //            if ($title) {
    //                echo '<h2 class="section-title line left">'. $title .'</h2>';
    //            }
    //            if ($content) {
    //                echo '<div class="content-wrap"><div class="content">'. $content .'</div></div>';
    //            }
            ?>

        </div>
        <?php echo the_content(); ?>
    </section>
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




