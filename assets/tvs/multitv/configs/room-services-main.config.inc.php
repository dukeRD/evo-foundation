<?php
$settings['display'] = 'vertical';
$settings['fields'] = array(

    'icon' => array(
        'caption' => 'Иконка (из папки images/srv-icons/)',
        'type' => 'dropdown',
        'elements' => '@EVAL return $modx->runSnippet("services-icons");'
    ),
    'item' => array(
        'caption' => 'Описание пункта',
        'type' => 'text'
    )
);



$settings['configuration'] = array(
    'enablePaste' => true,
    'enableClear' => false
);

$settings['templates'] = array(
    'outerTpl' => '<ul class="room-service-list col-12">[+wrapper+]</ul>',
    'rowTpl'   => '
        <li class="room-service-item" style="background-image: url(assets/images/srv-icons/[+icon+])">
            <p class="more-info__services_text">
                [+item+]
            </p>
        </li>'
);