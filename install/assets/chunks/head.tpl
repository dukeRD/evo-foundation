/**
 * head
 *
 * содержимое тега HEAD
 *
 * @category	chunk
 * @internal @modx_category Template
 */
    <meta charset="utf-8" >
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="[(site_url)]">
    <title>[*titl*]</title>
	[*noIndex*]

	<link rel="canonical" href="[(site_url)][[if? &is=`[*id*]:not:1` &then=`[~[*id*]~]`]]">
    <meta name="description" content="[*description*]">
    <meta name="Keywords" content="[*keyw*]">
	<meta name="image" content="http://[(site_url)]/tpl/dist/assets/img/map-marker.png">
	<meta name="author" content="dukerd.ru">
	
	<!-- Schema.org for Google -->
	<meta itemprop="name" content="[*titl*]">
	<meta itemprop="description" content="[*description*]">
	<meta itemprop="image" content="http://[(site_url)]/tpl/dist/assets/img/map-marker.png">
	<!-- Open Graph general (Facebook, Pinterest & Google+) -->
	<meta name="og:title" content="[*titl*]">
	<meta name="og:description" content="[*description*]">
	<meta name="og:type" content="website">
	<meta http-equiv="Content-language" content="ru-RU">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- favicon generator -->
    <link rel="apple-touch-icon" sizes="180x180" href="tpl/dist/assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="tpl/dist/assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="tpl/dist/assets/favicon/favicon-16x16.png">
    <link rel="manifest" href="tpl/dist/assets/favicon/manifest.json">
    <link rel="mask-icon" href="tpl/dist/assets/favicon/safari-pinned-tab.svg" color="#28253a">
    <link rel="shortcut icon" href="tpl/dist/assets/favicon/favicon.ico">
    <meta name="msapplication-config" content="tpl/dist/assets/favicon/browserconfig.xml">
    <meta name="theme-color" content="#28253a">

 
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400&amp;subset=cyrillic" rel="stylesheet">
	<link rel="stylesheet" href="tpl/dist/assets/css/app.css">

     <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->