<?php

    return [
        'title' => 'Текст с заголовком',

       'show_in_templates' => [ 10 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/text.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12 mr-auto ml-auto">
                    <h3 class="hotel-content-heading text-center arli__title">
                        [+header+]
                    </h3>
                    <div class="arli__text">
                        [+richtext+]
                    </div>
                </div>
            </div>',
        ],

        'fields' => [
            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
            ],
            'richtext' => [
                'caption' => 'Текст',
                'type'    => 'richtext',
                'default' => '',
                'theme'   => 'mini',
                'options' => [
                    'height' => '600px',
                ],
            ],
        ],
    ];

