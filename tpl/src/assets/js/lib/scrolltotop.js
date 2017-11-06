$(document).ready(function(){
  var scrolltop = $('.scroll-to-top');

   $(window).on('scroll', $.debounce(function(){
    if($(window).scrollTop() >= $(window).height() / 2){


        scrolltop.css('transform','translateX(4rem)');

    } else {
        scrolltop.css('transform','translateX(-4rem)');
    }



   }, 1000));


   scrolltop.on('click',function(){
    $('html, body').stop().animate({
         'scrollTop': 0
    }, 900, 'swing');
   });




});