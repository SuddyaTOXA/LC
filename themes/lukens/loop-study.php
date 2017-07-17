<?php 
    $title = strip_tags(get_the_title()); 
    $url = get_the_permalink();
    $purposes = get_field('purposes');
    $logo = get_field('logo');
    $link = get_field('link');
    $results = get_field('results');

?>

<li>
    <a href="<?php the_permalink(); ?>" title="<?php echo $title; ?>">
        <span class="study-box">
            <?php if (has_post_thumbnail()) { ?>            
                <span class="study-img-wrap" style=" background-image: url(<?php the_post_thumbnail_url('large'); ?>);">
                    <?php the_post_thumbnail('large', array(
                        'alt'   => esc_attr($post->post_title )
                    )); ?>
                </span>                
            <? } ?>

            <span class="study-left-box">
                <span class="study-info-box">
                    <span class="study-logo-wrap">
                        <span class="study-logo">
                            <?php
                                if ($logo) {
                                    echo '<img src="'. $logo['url'] .'" alt="'. esc_attr($title) .'">';
                                }
                            ?>
                        </span>
                            <?php
                                if ($link) {
                                    $regex = '/(?<!href=["\'])http:\/\//';
                                    $url_title = preg_replace($regex, '', $link);
                                    echo '<span class="study-logo-link">'. $url_title .'</span>';
                                }
                            ?>
                    </span>
                    <?php if($results && is_array($results)) { ?>
                        <span class="study-results">
                            <?php  foreach ($results as $result) { ?>
                                <span class="study-results-box">
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
                                </span>
                                <?php
                                if ($result['short_description']) {
                                    echo '<span class="study-description">'. $result['short_description'] .'</span>';
                                }
                            } ?>
                        </span>
                    <?php } ?>
                </span>

                <span class="study-desc-box">

                    <?php
                        if ($purposes) {
                            echo '<span class="study-purposes">' . $purposes . '</span>';
                        }
                        if ($title) {
                            echo '<span class="study-title">'. $title .'</span>';
                        }
                    ?>
                    <span class="study-desc"><?php the_excerpt(); ?></span>

                <span class="study-tag">
                    <?php
                        $args = array(
                            'taxonomy' => 'case_tag',
                        );
                        $terms = get_terms( $args );

                        if( $terms && is_array($terms) ){
                            echo "<span class='study-tag-list'>";
                            foreach( $terms as $term ){
                                echo "<span>". $term->name ."</span>";

                            }
                            echo "</span>";
                        }
                    ?>
                </span>
            </span>
            </span>
        </span>
    </a>
</li>

<?php /*
<li>
    <div class="study-box">
        <?php if (has_post_thumbnail()) { ?>
                <a href="<?php the_permalink(); ?>" title="<?php echo $title; ?>">
                    <span class="study-img-wrap" style=" background-image: url(<?php the_post_thumbnail_url('large'); ?>);">
                        <?php the_post_thumbnail('large', array(
                            'alt'   => esc_attr($post->post_title )
                        )); ?>
                    </span>
                </a>
        <? } ?>

        <div class="study-left-box">
            <div class="study-info-box">
                <div class="study-logo-wrap">
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
                </div>
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
                    $args = array(
                        'taxonomy' => 'case_tag',
                    );
                    $terms = get_terms( $args );

                    if( $terms && is_array($terms) ){
                        echo "<ul>";
                        foreach( $terms as $term ){
                            echo "<li>". $term->name ."</li>";

                        }
                        echo "</ul>";
                    }
                ?>
            </div>
        </div>
        </div>
    </div>
</li>
*/ ?>



