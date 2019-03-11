/**
 * head
 *
 * содержимое тега head для всех шаблонов
 *
 * @category	chunk
 * @internal @modx_category Templates
 */
<head>
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
	<meta itemprop="image"          content="[[if? &is=`[*image*]:notempty` &then=`[*image*]` &else=`assets/images/logo.svg`]]">

	<!-- Open Graph general (Facebook, Pinterest & Google+) -->
	<meta property="og:url"         content="[(site_url)][[if? &is=`[*id*]:not:1` &then=`[~[*id*]~]`]]">
	<meta property="og:type"        content="article">
	<meta property="og:title"       content="[*meta-title*]">
	<meta property="og:description" content="[*meta-description*]">
	<meta property="og:image"       content="[[if? &is=`[*image*]:notempty` &then=`[*image*]` &else=`assets/images/logo.svg`]]">

	<link rel="stylesheet" href="tpl/dist/css/app.css">
</head>
