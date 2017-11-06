/**
*
* helper functions
*
**/

$(window).on('changed.zf.mediaquery', function(event, newSize, oldSize) {
   // newSize is the name of the now - current breakpoint, oldSize is the previous breakpoint
    console.log(oldSize, '=>', newSize);
});


/**
*
* pages widget for navigation between pages on dev
*
**/

function pageWidget(pages) {
    var widgetWrap = $('<div class="widget_wrap"><ul class="widget_list"></ul></div>');
    widgetWrap.prependTo("body");
    for (var i = 0; i < pages.length; i++) {
        $('<li class="widget_item"><a class="widget_link" href="' + pages[i] + '.html' + '">' + pages[i] + '</a></li>').appendTo('.widget_list');
    }
    var widgetStilization = $('<style>body {position:relative} .widget_wrap{position:absolute;top:0;left:0;z-index:9999;padding:10px 20px;background:#222;border-bottom-right-radius:10px;-webkit-transition:all .3s ease;transition:all .3s ease;-webkit-transform:translate(-100%,0);-ms-transform:translate(-100%,0);transform:translate(-100%,0)}.widget_wrap:after{content:" ";position:absolute;top:0;left:100%;width:24px;height:24px;background:#222 url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAgMAAABinRfyAAAABGdBTUEAALGPC/xhBQAAAAxQTFRF////////AAAA////BQBkwgAAAAN0Uk5TxMMAjAd+zwAAACNJREFUCNdjqP///y/DfyBg+LVq1Xoo8W8/CkFYAmwA0Kg/AFcANT5fe7l4AAAAAElFTkSuQmCC) no-repeat 50% 50%;cursor:pointer}.widget_wrap:hover{-webkit-transform:translate(0,0);-ms-transform:translate(0,0);transform:translate(0,0)}.widget_item{padding:0 0 10px}.widget_link{color:#fff;text-decoration:none;font-size:15px;}.widget_link:hover{text-decoration:underline} </style>');
    widgetStilization.prependTo(".widget_wrap");
}

$(document).ready(function($) {
//    pageWidget(['index', 'product', 'tiles_new', 'contacts']);
});




/**
*
* disable hover event on scroll
*
**/
(function() {
    var body = document.body,
        timer;
    window.addEventListener('scroll', function() {
        if ($(window).scrollTop() > $(window).height()) {
            clearTimeout(timer);
            if (!body.classList.contains('disable-hover')) {
                body.classList.add('disable-hover')
            }
            timer = setTimeout(function() {
                body.classList.remove('disable-hover')
            }, 500);
        }
    }, false);

})();

/**
*
* remove empty PrevNext block
*
**/
$(document).ready(function() {
    var prevnext = $('.page__prev-next');
    if (!prevnext.find('a').length) {
        prevnext.remove();
    }
});



/**
*
* debounce function
*
**/
(function($) {
    $.extend({
        debounce: function(fn, timeout, invokeAsap, ctx) {
            if (arguments.length == 3 && typeof invokeAsap != 'boolean') {
                ctx = invokeAsap;
                invokeAsap = false;
            }
            var timer;
            return function() {
                var args = arguments;
                ctx = ctx || this;
                invokeAsap && !timer && fn.apply(ctx, args);
                clearTimeout(timer);
                timer = setTimeout(function() {
                    !invokeAsap && fn.apply(ctx, args);
                    timer = null;
                }, timeout);
            };
        }
    });
})(jQuery);