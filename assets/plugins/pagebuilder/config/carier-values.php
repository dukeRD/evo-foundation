<?php

    return [
        'title' => 'Ценности',

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
                        <h2 class="values__title_one">
                            [+header+]
                        </h2>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="pride">
                            <h5 class="pride__title">[+header1+]</h5>
                            <div class="pride__text">[+richtext1+]</div>
                        </div>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="passion">
                            <h5 class="passion__title">[+header2+]</h5>
                            <div class="passion__text">[+richtext2+]</div>
                        </div>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="personality">
                            <h5 class="personality__title">[+header3+]</h5>
                            <div class="personality__text">[+richtext3+]</div>
                        </div>
                    </div>
                </div>',
        ],

        'fields' => [


            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
            ],
            'header1' => [
                'caption' => 'Заголовок 1',
                'type'    => 'text',
            ],
            'richtext1' => [
                'caption' => 'Текст 1',
                'type'    => 'richtext',
                'default' => '',
                'theme'   => 'mini'
            ],


            'header2' => [
                'caption' => 'Заголовок 2',
                'type'    => 'text',
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
            ],
            'richtext3' => [
                'caption' => 'Текст 3',
                'type'    => 'richtext',
                'default' => '',
                'theme'   => 'mini'
            ]

        ]
    ];

