/**
 * scripts
 *
 * вызов скриптов перед закрытием body
 *
 * @category	chunk
 * @internal @modx_category Template
 */

<script src="tpl/dist/assets/js/app.js"></script>

<script>
    //see plugin evoAjax


    // ****************************FORMS************************************

    // ROOM
    $(document).on('submit', '#roomForm', function(e) {
        var $form   = $('#roomForm');
        var wrap    = $form.parents('.form-wrap');

        var dateIn  = $('#dateInRoomForm');
        var dateOut = $('#dateOutRoomForm');

        if ( !!dateIn.val() || !!dateOut.val()){

            setCookie('dateIn',  dateIn.val());
            setCookie('dateOut', dateOut.val());

        }

        $.ajax({
            type   : 'post',
            url    : 'roomform',
            data   : $form.serialize(),
            success: function(data) {

                var success = $(data).find('.form-success');
                var hidden = $(data).find('input[type=hidden]');

                if (success.lengths) {

                    wrap.replaceWith(success);
                    setCookie('dateIn',  '');
                    setCookie('dateOut', '');

                } else {

                    $(wrap).replaceWith(data);

                    var dateIn        = $('#dateInRoomForm');
                    var dateOut       = $('#dateOutRoomForm');
                    var cookieDateIn  = getCookie('dateIn');
                    var cookieDateOut = getCookie('dateOut');

                    if (!!cookieDateIn || !!cookieDateOut){
                        dateIn.val(cookieDateIn);
                        dateOut.val(cookieDateOut);
                    }
                }
            }
        });

        e.preventDefault();
    });

    // ROOMS
    $(document).ready(function(){
        var roomsBtn = $('.rooms-book-btn');

        roomsBtn.on('click', function(e){
            var item = $(this);
            var room = item.parents('.rooms-item');

            if (item.hasClass('not-avaliable')){
                var popup = room.find('.rooms-avaliable-link').click();
            }

            $('#roomsPageForm').modal();

            var hidden = $('#roomForm').find('input[type=hidden]');

            $(hidden).each((i,field) =>{

               if (field.name == 'room-title') field.value = item.data('name');
               if (field.name == 'pageID') field.value = item.data('id');

            });

            e.preventDefault();
        })
    });


    // SUBSCRIBE
    $(document).on('submit', '#subscribeForm', function(e) {
        var $form   = $('#subscribeForm');
        var wrap    = $form.parents('.form-wrap');

        $.ajax({
            type   : 'post',
            url    : 'subscribeform',
            data   : $form.serialize(),
            success: function(data) {

                var success = $(data).find('.form-success');


                if (success.lengths) {
                    wrap.replaceWith(success);
                } else {
                    $(wrap).replaceWith(data);
                }
            }
        });

        e.preventDefault();
    });

    // CALLBACK
    $(document).on('submit', '#callbackForm', function(e) {
        var $form   = $('#callbackForm');
        var wrap    = $form.parents('.form-wrap');

        $.ajax({
            type   : 'post',
            url    : 'callbackform',
            data   : $form.serialize(),
            success: function(data) {

                var success = $(data).find('.form-success');

                if (success.lengths) {
                    wrap.replaceWith(success);
                } else {
                    $(wrap).replaceWith(data);
                }
            }
        });

        e.preventDefault();
    });

   //****************** UTILS ******************************/
    function setCookie(key, value) {
        var expires = new Date();
        expires.setTime(expires.getTime() + (1 * 24 * 60 * 60 * 1000));
        document.cookie = key + '=' + value + ';expires=' + expires.toUTCString();
    }

    function getCookie(key) {
        var keyValue = document.cookie.match('(^|;) ?' + key + '=([^;]*)(;|$)');
        return keyValue ? keyValue[2] : null;
    }

</script>