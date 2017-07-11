<?php 
    $title = strip_tags(get_the_title()); 
    $url = get_the_permalink();
    $purposes = get_field('purposes');
    $logo = get_field('logo');
    $link = get_field('link');
    $results = get_field('results');

?>

<li>
    <div class="study-box">
        <?php if (has_post_thumbnail()) { ?>
<!--            <div class="study-right-box">-->
                <a href="<?php the_permalink(); ?>" title="<?php echo $title; ?>">
                    <span class="study-img-wrap" style=" background-image: url(<?php the_post_thumbnail_url('large'); ?>);">
                        <?php the_post_thumbnail('large'); ?>
                    </span>
                </a>
<!--            </div>-->
        <? } ?>

        <div class="study-left-box">
            <div class="study-info-box">
                <div class="study-logo">
                    <?php
                        if ($logo) {
                            echo '<img src="'. $logo['url'] .'" alt="'. esc_attr($title) .'">';
                        }
                    ?>
                </div>
                    <?php
                        if ($link) {
                            $regex = '/(?<!href=["\'])http:\/\//';
                            $url_title = preg_replace($regex, '', $link);
                            echo '<a href="'. esc_url($link) .'" title="'. esc_attr($title) .'" class="study-logo-link" target="_blank">'. $url_title .'</a>';
                        }
                    ?>
                <?php if($results && is_array($results)) { ?>
                    <div class="study-results">
                        <?php  foreach ($results as $result) { ?>
                            <div class="study-results-box">
                                <?php
                                if ($result['value']) {
                                    echo '<span class="study-value">'. $result['value'] .'</span>';
                                }
                                if ($result['dimension']) {
                                    echo '<span class="study-dimension">'. $result['dimension'] .'</span>';
                                }
                                if ($result['icon']) {
                                    echo '<span class="study-icon icon-icon_analytics"></span>';
                                }
                                ?>
                            </div>
                            <?php
                            if ($result['short_description']) {
                                echo '<span class="study-description">'. $result['short_description'] .'</span>';
                            }
                        } ?>
                    </div>
                <?php } ?>
            </div>

            <div class="study-desc-box">

                <?php
                    if ($purposes) {
                        echo '<span class="study-purposes">' . $purposes . '</span>';
                    }
                    if ($title) {
                        echo '<a href="'. $url .'" class="study-title" title="'. $title .'">'. $title .'</a>';
                    }
                ?>
                <span class="study-desc"><?php the_excerpt(); ?></span>

            <div class="study-tag">
                <?php
//                    if( get_the_tag_list() ){
//                        echo get_the_tag_list('<ul><li>','</li><li>','</li></ul>');
//                    }
                    $posttags = get_the_tags();
                    if ($posttags) {
                        echo '<ul>';
                        foreach($posttags as $tag) {
                            echo '<li>' .$tag->name. '</li>';
                        }
                        echo '</ul>';
                    }
                ?>
            </div>
        </div>
        </div>
    </div>
</li>




