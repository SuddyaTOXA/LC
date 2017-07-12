<?php
if (is_tax('study_category')) {
    $id = 10;
} else {
    $id = get_the_id();
}

$title = get_field('page_heading', $id);
$short_info = get_field('page_short_info', $id);
$color = get_field('page_overlay', $id);
$bg_img = get_field('page_image', $id);

?>
    <?php if ($title || $short_info || $color || $bg_img) { ?>
        <section class="section-page-banner vertical-align">
            <div class="container">
                <div class="container-box">
                    <?php if ($title || $short_info) { ?>
                        <div class="banner-box">
                            <div class="banner-table">
                                <div class="banner-cell">
                                    <?php
                                        if ($title) echo '<h1 class="banner-title line">'. $title .'</h1>';
                                        if ($short_info) echo '<span class="short-info">'. $short_info .'</span>';
                                    ?>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="banner-overlay" style="background-color: <?= $color ?>"></div>
            <?php
                if ($bg_img) {
                    echo '<img src="'. $bg_img .'" alt="'. strip_tags($title) .'">';
                }  else {
                    $url = get_bloginfo('template_url') . '/img/service_bg.png';
                    echo '<img src="'. $url .'" alt="'. strip_tags($title) .'">';
                }
            ?>
        </section>
    <?php } ?>

