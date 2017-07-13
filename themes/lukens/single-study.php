<?php get_header();

$sub_title = get_field('sub_title');
define('ID', get_the_id());

?>

<?php get_template_part('inc/banner'); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <div class="section-study" id="main-content">
        <?php the_content(); ?>
    </div>
<?php endwhile; else: endif; ?>

<section class="section-related-case">
    <div class="container">
        <h3 class="section-title line">related case studies</h3>
        <?php
            global $wp_query;

            $paged = get_query_var('paged') ? get_query_var('paged') : 1;
            $args = array(
                'post_type'     => 'study',
                'post_status'   => 'publish',
                'orderby'       => 'date',
                'order'         => 'ASC',
                'posts_per_page' => 2,
                'paged'         => $paged,
            );
            $new_query = new WP_Query( $args );

            if ($new_query->have_posts()) {
                echo '<ul class="related-case-list">';
                while ($new_query->have_posts()) {
                    $new_query->the_post();
                    ?>
                    <li>
                        <a href="<?= get_the_permalink() ?>" title="<?= esc_attr(get_the_title()) ?>">
                            <span class="related-case-box">
                                <?php if (has_post_thumbnail()) { ?>
                                    <span class="related-case-img-box" style="background-image: url(<?php echo get_the_post_thumbnail_url() ?>)">
                                        <?php the_post_thumbnail('full'); ?>
                                    </span>
                                <?php } ?>
                                <span class="related-case-decs">
                                    <span class="proposes"><?php the_field('purposes'); ?></span>
                                    <?php the_title('<span class="related-case-title">', '</span>'); ?>
                                </span>
                            </span>
                        </a>
                    </li>
                    <?php
                }
                echo '</ul>';
            }
            wp_reset_query();
        ?>
        <?php
            $previous_post = get_previous_post();
            $next_post = get_next_post();
        ?>
        <ul class="case-post-nav">
                <li>
                    <?php if ($previous_post) { ?>
                        <a href="<?= $previous_post->guid ?>" title="<?= esc_attr($previous_post->post_title) ?>">
                            <span class="case case-prev">PREV</span>
                            <span class="case-post-title"><?= $previous_post->post_title ?></span>
                        </a>
                    <?php } ?>
                </li>
            <li class="center">
                <a href="<?= get_the_permalink(10) ?>" title="ALL CASE STUDIES" class="btn btn-green-inverse">
                    ALL CASE STUDIES
                </a>
            </li>

            <li>
                <?php if ($next_post) { ?>
                    <a href="<?= $next_post->guid ?>" title="<?= esc_attr($next_post->post_title) ?>">
                        <span class="case case-next">NEXT</span>
                        <span class="case-post-title"><?= $next_post->post_title ?></span>
                    </a>
                <?php } ?>
            </li>
        </ul>
    </div>
</section>

<?php get_footer(); ?>





