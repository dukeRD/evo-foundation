<?php

    return [
        'title' => 'Корпоративные ценности',

       'show_in_templates' => [ 19 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/2col-text-photo.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row">
                <div class="col-12">
                    <h2 class="values__title_two">[+header+]</h2>
                </div>
                <div class="col-12">
                    <div class="hospitality">
                        <h5 class="hospitality__title">[+header1+]</h5>
                        <div class="hospitality__text">[+richtext1+]</div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mastery-bg">
                        <h5 class="mastery__title">[+header2+]</h5>
                        <div class="mastery__text_one">[+richtext2+]</div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mastery-bg">
                        <h5 class="mastery__title">[+header3+]</h5>
                        <div class="mastery__text_two">[+richtext3+]</div>
                    </div>
                </div>
            </div>',
        ],

        'fields' => [


            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
                'default' => 'Наши корпоративные принципы',
            ],


            'header1' => [
                'caption' => 'Заголовок 1',
                'type'    => 'text',
                'default' => 'Искреннее гостеприимство',
            ],
            'richtext1' => [
                'caption' => 'Текст 1',
                'type'    => 'richtext',
                'theme'   => 'mini'
            ],


            'header2' => [
                'caption' => 'Заголовок 2',
                'type'    => 'text',
                'default' => 'Мастерство',
            ],
            'richtext2' => [
                'caption' => 'Текст 2',
                'type'    => 'richtext',
                'default' => '',
                'theme'   => 'mini'
            ],


            'header3' => [
                'caption' => 'Заголовок 3',
                'type'    => 'text',
                'default' => 'Мастерство',
            ],
            'richtext3' => [
                'caption' => 'Текст 3',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => ''
            ]

        ]
    ];

