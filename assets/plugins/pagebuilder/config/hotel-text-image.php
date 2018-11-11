<?php

    return [
        'title' => 'Текст с заголовком и большим изображением',

       'show_in_templates' => [ 10 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/text-photo.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
                 <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12 ml-auto mr-auto">
                    <h3 class="arli__title hotel-content-heading text-center">
                            [+header+]
                        </h3>
                            <div class="arli__text">
                                [+richtext+]
                            </div>
                        <img src="[+image+]" alt="[+image-alt+]" class="arli__img img-fluid d-block" height="334" width="1141">
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
            'image' => [
                'caption' => 'Изображение',
                'type'    => 'image'
            ],
            'image-alt' => [
                'caption' => 'Описание изображение (alt="")',
                'type'    => 'text'
            ],
        ],
    ];

