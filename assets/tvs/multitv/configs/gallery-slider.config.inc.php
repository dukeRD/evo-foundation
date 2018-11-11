<?php
$settings['display'] = 'vertical';
$settings['fields'] = array(
	'image' => array(
		'caption' => 'Изображение',
		'type' => 'image'
	),

	'thumb' => array(
	    'caption' => 'превью',
	    'type'    => 'thumb',
	    'thumbof' => 'image'
	),

	'alt' => array(
		'caption' => 'Описание изображения (alt="")',
		'type' => 'text'
	)
);

$settings['configuration'] = array(
    'enablePaste' => false,
    'enableClear' => false
);

$settings['templates'] = array(
	'outerTpl' => '[+wrapper+]',
	'rowTpl'   => '<img src="[+image+]" alt="[+alt+]" class="slire__img img-fluid">'

	);
