<div class="share-box">
    <ul class="share-btn-list">
        <li>
            <a title="Share to Facebook" href="http://facebook.com/sharer.php?url=<?php the_permalink(); ?>" target="_blank"  rel="nofollow">
                <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
        </li>
        <li>
            <a title="Share to Twitter" href="http://twitter.com/intent/tweet?text=RT @AlexeyVLFF <?php the_title(); ?>: <?php the_permalink(); ?>" target="_blank" rel="nofollow">
                <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
        </li>
        <li>
            <a title="Share to LinkedIn" href="https://www.linkedin.com/shareArticle?mini=true&url=<?php the_permalink(); ?>&amp;title=<?php the_title(); ?>" target="_blank"  rel="nofollow">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
        </li>
        <li>
            <a title="Share to Email" href="mailto:?Subject=<?php the_title(); ?>&Body=<?php the_permalink(); ?>">
                <i class="fa fa-envelope-o" aria-hidden="true"></i>
            </a>
        </li>
    </ul>
</div>
