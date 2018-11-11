<?php

$id       =  isset( $content['id'] )        ? (int) $content['id']       : false;
$parent   = !empty( $content['parent']  )   ? (int) $content['parent']   : $_GET['pid'];
$folder   = !empty( $content['isfolder']  ) ? (int) $content['isfolder'] : false;


mm_widget_showimagetvs(); // Always give a preview of Image TVs

mm_createTab('SEO', 'seo', '', '', '', '');
mm_moveFieldsToTab('meta-title,alias,meta-keywords,meta-description,meta-noIndex','seo', '', '');
mm_moveFieldsToTab('link_attributes,menutitle,menuindex,parent,show_in_menu,template,description','settings','','');
mm_hideFields('description,link_attributes,menutitle', '', '');

//mm_hideFields('introtext', '', '4,7,19,21,12,13,15,16,14,9,10,6,23');

//HOME page
/*
mm_createTab('Слайдер', 'home-slider', '', 4, '', '');
mm_moveFieldsToTab('home-slider', 'home-slider', '', 4);
mm_createTab('Цифры', 'home-digits', '', 4, '', '');
mm_moveFieldsToTab('home-digits-text,home-digits-author,home-digits', 'home-digits', '', 4);
mm_createTab('Контакты', 'home-contacts', '', 4, '', '');
mm_moveFieldsToTab('home-contacts-phone,home-contacts-email,home-contacts-address', 'home-contacts', '', 4);
*/
// OFFERS
/*
if ( $id == 5 ){
//parent ROOMS
mm_hideFields('introtext,offer-col-1,offer-col-1-title,offer-col-2,offer-col-2-title,offer-price,offer-show-in-slider,offer-subheader,offer-warning,offer-persones,offer-cover-image', '', 7);

}
*/


//BLOG
/*
if ($parent == 8 || $id==8){

	mm_hideFields('introtext,blog-show-in-slider', '', 8);
}
if ($id==8){

	mm_hideFields('image', '', 8);
}
*/

// ROOMS
/*
if ( $folder ){
//parent ROOMS
mm_hideFields('room-price,room-avaliable,room-sale,room-persones,room-persones-add,oom-square,room-rooms,room-tarif,room-services-show,room-services-main,room-services-bathroom,room-services-balcony,room-scheme,room-square', '', 12);
mm_hideTabs('video', '', 12);
}

mm_createTab('Параметры номера', 'room', '', 12, '', '');
mm_moveFieldsToTab('room-price,room-avaliable,room-sale,room-persones,room-persones-add,oom-square,room-rooms,room-tarif,room-square', 'room', '', 12);
mm_createTab('Услуги', 'services', '', 12, '', '');
mm_moveFieldsToTab('room-services-show,room-services-main,room-services-bathroom,room-services-balcony', 'services', '', 12);
*/
//GALLERY
/*
if ( !$folder ) {
	mm_hideFields('gallery-slider,gallery-images-count','',13);
}
*/
//****************************

//mm_hideTemplates('0,5,8,9,11,12', '2,3');

//mm_hideTabs('settings, access', '2');
