<?php 
    $title = strip_tags(get_the_title()); 
    $url = get_the_permalink();
?>

<li>
    <div class="post-box">
        <div class="post-img-wrap">
            <a href="<?php the_permalink(); ?>" title="<?= esc_attr($title); ?>">
                <?php the_post_thumbnail('blog-thumb'); ?>
            </a>
            <span class="post-date"><?php the_date(); ?></span>
        </div>
        <div class="post-desc-box">
            <h3 class="post-title"><?php echo $title; ?></h3>
            <div class="post-desc">
                <?php the_excerpt(); ?>
            </div>
            <a href="<?php the_permalink(); ?>" title="Read More" class="btn btn-read-more">Read more . . .</a>
        </div>
    </div>
</li>