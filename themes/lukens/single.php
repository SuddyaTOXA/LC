<?php get_header();

$share_btn = get_field('share_btn');
?>

<?php get_template_part('inc/banner'); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <section class="section-blog" id="main-content">
        <div class="container">

            <?php if (has_post_thumbnail()) { ?>
                <div class="blog-img-wrap" style="background-image: url(<?php echo get_the_post_thumbnail_url() ?>)">
                    <?php the_post_thumbnail('full'); ?>
                </div>
            <?php } ?>
            <?php the_title('<h2 class="blog-title">', '</h2>'); ?>

            <div class="blog-info-box">
                <div class="info-left-box">
                    <span class="author">By <?php the_author_posts_link(); ?></span>
                    <span class="post-date"><?php the_date() ?></span>
                </div>

                <?php if ($share_btn) { get_template_part('inc/share'); } ?>
            </div>

            <div class="content">
                <?php the_content(); ?>
            </div>

        </div>
    </section>
<?php endwhile; else: endif; ?>


<?php get_footer(); ?>