<?php

    return [
        'title' => 'Блог: текст с заголовком',

       'show_in_templates' => [ 8 ],

//        'show_in_docs' => [ 2 ],

       'hide_in_docs' => [ 8,21,22,23 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/text.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
                <div class="row">
                    <div class="col-12">
                        <h6 class="blog-more__title_up">
                            [+header+]
                        </h6>
                        <p class="blog-more__text">
                            [+richtext+]
                        </p>
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
                // 'theme'   => 'mini',
                'options' => [
                    'height' => '600px',
                ],
            ],
        ],
    ];

