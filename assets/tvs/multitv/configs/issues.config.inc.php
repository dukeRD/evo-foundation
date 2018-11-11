<?php
$settings['display'] = 'vertical';
$settings['fields'] = array(

    'question' => array(
        'caption' => 'Вопрос',
        'type' => 'textare'
    ),
    'answer' => array(
        'caption' => 'Ответ',
        'type' => 'richtext',
                'theme'   => 'mini',
                'options' => [
                    'height' => '200px',
                ]
    ),
);



$settings['configuration'] = array(
    'enablePaste' => true,
    'enableClear' => false
);

