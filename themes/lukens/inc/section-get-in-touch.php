<?php $bottom_btn = get_field('bottom_button', 'option'); ?>

<?php//if ($bottom_btn && is_array($bottom_btn)) { ?>
    <section class="section-get-in-touch">
        <div class="container">
            <?php
//                    foreach ($bottom_btn as $btn) {
//                        echo '<a href="'. esc_url($btn['link']) .'" class="bth-get-touch" title="'. esc_attr($btn['title']) .'">'. $btn['title'] .'</a>';
//                    }
            ?>
            <a href="<?= get_permalink(15); ?>" class="bth-get-touch" title="Get in touch">Get in touch</a>
        </div>
    </section>
<? //} ?>