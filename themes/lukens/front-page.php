<?php get_header();
    $hero_title     = get_field('hero_title');
    $hero_sub_title     = get_field('hero_sub_title');
    $hero_image    = get_field('hero_image');
    $hero_buttons    = get_field('hero_buttons');

    $our_services_title = get_field('our_services_title');
    $our_services_content = get_field('our_services_content');
    $our_services_bottom_text = get_field('our_services_bottom_text');

    $case_studies_title = get_field('case_studies_title');
    $case_studies_content = get_field('case_studies_content');
    $case_studies_button = get_field('case_studies_button');

    $the_latest_title = get_field('the_latest_title');
    $the_latest_content = get_field('the_latest_content');
    $the_latest_bg    = get_field('the_latest_bg');
?>

    <?php if ($hero_image) { ?>
        <section class="section-hero vertical-align" id="main-content">
            <div class="container">
                <div class="container-box">
                    <?php if ($hero_title) { ?>
                    <div class="hero-box">
                        <h1 class="hero-title">
                            <span class="title">
                                <?= $hero_title; ?>
                            </span>
                            <?php if ($hero_sub_title) { ?>
                                <span class="sub-title"><?= $hero_sub_title ?></span>
                            <?php } ?>
                        </h1>
                        <?php if($hero_buttons && is_array($hero_buttons)) { ?>
                        <div class="hero-btn-box">
                            <?php foreach ($hero_buttons as $button) { ?>
                                <a href="<?= $button['link'] ?>" class="btn <?= $button['color'] ?>"><?= $button['title'] ?></a>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <img src="<?= $hero_image ?>" alt="<?php echo strip_tags($hero_title ); ?>">
            <a class="btn-go-bottom smooth-scroll" href="#our-services">
                <span class="icon icon-icon_chevron_white"></span>
            </a>
        </section>
    <?php } ?>

    <section class="section-our-services" id="our-services">
        <div class="container">
            <?php
                if ($our_services_title) {
                    echo '<h2 class="section-title line">'. $our_services_title .'</h2>';
                }
                if ($our_services_content) {
                    echo '<div class="content-wrap"><div class="content">'. $our_services_content .'</div></div>';
                }
                if( have_rows('services') ):
                    echo '<ul class="our-services-list">';
                    while ( have_rows('services') ) : the_row(); ?>
                        <li>
                            <div class="our-services-box">
                                <div class="our-services-icon-wrap">
                                    <span class="our-services-icon <?= the_sub_field('icon') ?>"></span>
                                </div>
                                <div class="our-services-title-wrap">
                                    <h3 class="our-services-title"><?= the_sub_field('title') ?></h3>
                                </div>
                                <div class="content"><p><?= the_sub_field('content') ?></p></div>
                            </div>
                        </li>
                    <?php endwhile;
                    echo '</ul>';
                endif;
                if ($our_services_bottom_text) {
                    echo '<span class="our-services-bottom-text">'. $our_services_bottom_text .'</span>';
                }
            ?>
        </div>
    </section>

    <section class="section-home-case-studies inverse">
        <div class="container">
            <?php
                if ($case_studies_title) {
                    echo '<h2 class="section-title line">'. $case_studies_title .'</h2>';
                }
                if ($case_studies_content) {
                    echo '<div class="content-wrap"><div class="content">'. $case_studies_content .'</div></div>';
                }
            ?>

            <div class="recent-case-post">
                <ul>
                    <li></li>
                </ul>
            </div>
            <?php
                if ($case_studies_button && is_array($case_studies_button)) {
                    foreach ($case_studies_button as $button) {
                        echo '<a href="'. $button['link'] .'" class="btn btn-green-inverse">'. $button['title'] .'</a>';
                    }
                }
            ?>

        </div>
    </section>

    <section class="section-the-latest" style="background-image: url(<?= $the_latest_bg ?>)">
        <div class="container">
            <div class="left-box">
                <div class="table-box">
                    <div class="table-cell-box">
                        <div class="table-inner-box">
                            <?php
                            if ($the_latest_title) {
                                echo '<h2 class="section-title line">'. $the_latest_title .'</h2>';
                            }
                            if ($the_latest_content) {
                                echo '<div class="content-wrap"><div class="content">'. $the_latest_content .'</div></div>';
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right-box"></div>
        </div>
    </section>

    <section class="section-contact-us">
        <div class="container"></div>
    </section>

<?php get_footer(); ?>