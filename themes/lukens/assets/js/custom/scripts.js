jQuery(document).ready(function($) {
    $(function(){
        // header fade
       var header = $('#header');
           setTimeout(function(){
                header.addClass('show');
           },800);

        //header background on scroll
        var header = $('#header');
        $(window).on('load scroll', function() {
           var st2 = $(this).scrollTop();

           if (st2 > 0) {
              header.addClass('scrolling');

           } else {
           	header.removeClass('scrolling');
           }

        });
        //for smooth scroll
        if ( $('a').is('.smooth-scroll') ) {
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
                        box = $('.study-left-box'),
                        imgBox = $('.study-img-wrap');


                    box.each(function () {
                        if ($(window).width() > 767) {
                            if ( $(this).outerHeight() > maxHeight ) {
                                maxHeight = $(this).outerHeight();
                            }
                            imgBox.css('height', maxHeight);
                        } else {
                            imgBox.css('height', ' ');
                        }
                    });
                }
            })

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
            })

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
            })

        })

    });
});