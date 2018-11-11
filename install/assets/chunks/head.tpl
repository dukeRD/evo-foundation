/**
 * head
 *
 * содержимое тега HEAD
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<meta charset="UTF-8">
<title>[*meta-title*]</title>
[*meta-noIndex*]

<base href="[(base_url)]">
<link rel="canonical" href="[(site_url)][[if? &is=`[*id*]:not:1` &then=`[~[*id*]~]`]]">

<meta name="keywords"    content="[*meta-keywords*]">
<meta name="description" content="[*meta-description*]">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection"      content="telephone=no">
<meta name="viewport"              content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<meta http-equiv="Reply-to"   content="dukerd@dukerd.ru">
<meta name="author" lang="ru" content="dukerd.ru">

<!-- Schema.org for Google -->
<meta itemprop="name"           content="[*meta-title*]">
<meta itemprop="description"    content="[*meta-description*]">
<meta itemprop="image"          content="[[if? &is=`[*image*]:notempty` &then=`[*image*]` &else=`assets/images/logo.png` ]]">

<!-- Open Graph general (Facebook, Pinterest & Google+) -->
<meta property="og:url"         content="[(site_url)][[if? &is=`[*id*]:not:1` &then=`[~[*id*]~]`]]">
<meta property="og:type"        content="article">
<meta property="og:title"       content="[*meta-title*]">
<meta property="og:description" content="[*meta-description*]">
<meta property="og:image"       content="[[if? &is=`[*image*]:notempty` &then=`[*image*]` &else=`assets/images/logo.png` ]]">

<!-- favicon generator -->
<link rel="apple-touch-icon" sizes="180x180" href="tpl/dist/assets/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="tpl/dist/assets/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="tpl/dist/assets/favicon/favicon-16x16.png">
<link rel="manifest" href="tpl/dist/assets/favicon/manifest.json">
<link rel="mask-icon" href="tpl/dist/assets/favicon/safari-pinned-tab.svg" color="#28253a">
<link rel="shortcut icon" href="tpl/dist/assets/favicon/favicon.ico">
<meta name="msapplication-config" content="tpl/dist/assets/favicon/browserconfig.xml">
<meta name="theme-color" content="#28253a">

<link rel="stylesheet" href="tpl/dist/assets/css/app.css">

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[if lt IE 9]>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
