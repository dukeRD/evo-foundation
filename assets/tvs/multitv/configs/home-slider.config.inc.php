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

	'title' => array(
		'caption' => 'Заголовок',
		'type' => 'text'
	),

	'link' => array(
		'caption' => 'Ссылка (id страницы)',
		'type' => 'text'
	)
);

$settings['configuration'] = array(
    'enablePaste' => false,
    'enableClear' => false
);

$settings['templates'] = array(
	'outerTpl' => '[+wrapper+]',
	'rowTpl' => '

		<div class="offer__slider_block[+iteration+]" style="background-image: url([+image+]);">
	    <div class="offer__slider_title">
	        <h1 class="offer__slider_text" data-wow-dalay="2s" data-wow-duration="3">
									[+title+]
								</h1>
	        <a class="offer__btn" data-wow-dalay="2s" data-wow-duration="3" href="[~[+link+]~]">
									Подробнее
								</a>
		    </div>
		</div>'

	);
