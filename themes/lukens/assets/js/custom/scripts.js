jQuery(document).ready(function($) {
    $(function(){
        // header fade
        var header = $('#header');
        setTimeout(function(){
            header.addClass('show');
        },800);

        //header background on scroll
        $(window).on('load scroll', function() {
            var st2 = $(this).scrollTop();

            if (st2 > 0) {
                header.addClass('scrolling');
            } else {
                header.removeClass('scrolling');
            }
        });

        //for smooth scroll
        if ( $('a.smooth-scroll').length ) {
            smoothScroll.init({
                selector: '.smooth-scroll', // Selector for links (must be a class, ID, data attribute, or element tag)
                speed: 500, // Integer. How fast to complete the scroll in milliseconds
                easing: 'easeInQuad', // Easing pattern to use
                offset: 130 // Integer. How far to offset the scrolling anchor location in pixels
            });
        }

        $(document).ready(function() {
            // for burger menu
            $('.mobile-menu-toggle, .mobile-menu-overlay').on('click', function(){
                $('.mobile-menu-toggle').toggleClass('active');
                $('.mobile-menu-wrap').toggleClass('showing');
                $(document.body).toggleClass('overflow');
            });

            //for case study box
            $(window).on('load resize', function() {
                if ($('.study-list').length) {
                    var maxHeight = 0,
                        wrap = $('.study-box'),
                        box = $('.study-left-box'),
                        imgBox = $('.study-img-wrap');


                    box.each(function () {
                        if ($(window).width() > 767) {
                            if ( $(this).outerHeight() > maxHeight ) {
                                maxHeight = $(this).outerHeight();
                            }
                            imgBox.css('height', maxHeight);
                            wrap.css('height', '');
                        } else if ($(window).width() < 767 && $(window).width() > 640) {
                            if ( $(this).outerHeight() > maxHeight ) {
                                maxHeight = $(this).outerHeight();
                            }
                            imgBox.css('height', '');
                            wrap.css('height', maxHeight + 180);
                        } else {
                            imgBox.css('height', '');
                            wrap.css('height', '');
                        }
                    });
                }
            });

            //for home case study box
            $(window).on('load resize', function() {
                if ($('.recent-case-post').length) {
                    var box = $('.study-left-box'),
                        imgBox = $('.study-img-wrap');

                    box.each(function (i) {
                        if ($(window).width() > 767) {
                            var maxHeight = 0;
                            maxHeight = box.eq(i).outerHeight();
                            imgBox.eq(i).css('height', maxHeight);
                        } else {
                            imgBox.css('height', ' ');
                        }
                    });
                }
            });

            //for case related box
            $(window).on('load resize', function() {
                if ($('.related-case-list').length) {
                    var maxHeight = 0,
                        box = $('.related-case-decs'),
                        imgBox = $('.related-case-img-box');


                    box.each(function () {
                        if ( $(this).outerHeight() > maxHeight ) {
                            maxHeight = $(this).outerHeight();
                        }
                    });
                    imgBox.css('height', maxHeight)
                }
            });

            //services links
            $('.link-box').on('click', function() {
                var link = $(this).find('.services-box').find('a').attr('href');

                window.location = link;
            });

            //title for CF7
            $(window).on('load', function() {
                var field = $('[placeholder]');

                field.each(function () {
                    var value = $(this).attr('placeholder');
                    $(this).attr('title', value);
                });
            });

            //for text area height
            jQuery.each(jQuery('textarea'), function() {
                var offset = this.offsetHeight - this.clientHeight;

                var resizeTextarea = function(el) {
                    jQuery(el).css('height', 'auto').css('height', el.scrollHeight + offset);
                };
                jQuery(this).on('keyup input', function() { resizeTextarea(this); });
            });

            //for modal
            $('.popup-modal').magnificPopup({
                type: 'inline',

                fixedContentPos: false,
                fixedBgPos: true,

                overflowY: 'auto',

                closeBtnInside: true,
                preloader: false,

                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        //for case study slider
            //for desktop
            $(window).on('load', function() {
                if ($('.recent-case-post')) {
                    var wrap = $('.recent-case-post'),
                        box = wrap.find('li'),
                        imgBox = wrap.find('.study-img-wrap'),
                        contentBox = wrap.find('.study-left-box');

                        box.eq(0).addClass('active');

                        box.on('click', function (e) {
                            if (!($(this).hasClass('active'))) {
                                e.preventDefault();
                                wrap.prepend($(this));
                                contentBox.each(function (i) {
                                    if ($(window).width() > 767) {
                                        var maxHeight = 0;
                                        maxHeight = contentBox.eq(i).outerHeight();
                                        imgBox.eq(i).css('height', maxHeight);
                                    }
                                });
                                box.removeClass('active');
                                $(this).addClass('active');
                            }
                        })
                }
            })
            //for mobile
            $(window).on('load resize', function() {
                if ($('.case-mobile').length) {
                    var maxHeight = 0,
                        box = $('.case-mobile').find('.study-box');

                    box.each(function () {
                        if ($(this).outerHeight() > maxHeight) {
                            maxHeight = $(this).outerHeight();
                        }
                    });
                    box.css('height', maxHeight);
                }
            })
            $(window).on('load', function() {
                if ($('.case-mobile').length) {
                    var swiper = new Swiper('.swiper-container', {
                        pagination: '.swiper-pagination',
                        paginationClickable: true,
                        nextButton: '.swiper-button-next',
                        prevButton: '.swiper-button-prev',
                        spaceBetween: 30,
                        loop: true
                    })
                }
            })
        })

    });
});