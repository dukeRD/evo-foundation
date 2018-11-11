<?php

    return [
        'title' => 'Карусель из Галереи',

       'show_in_templates' => [ 19 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/gallery.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row">
                <div class="col-12">
                    <div class="confession__bg">
                        <h5 class="confession__title">[+header+]</h5>
                        <div class="confession__text">[+richtext+]</div>
                    </div>

                    <div class="confession__slider">
                        [[sgLister?
                        &display=`[+display+]`
                        &thumbSnippet=`phpthumb`
                        &thumbOptions=`w=360&h=240&zc=1`
                        &tpl=`@CODE:
                        <img src="[+thumb.sg_image+]"
                             alt="[+e.sg_title+]"
                             title="[+e.sg_description+]"
                             class="slide__img img-fluid"
                             height="240"
                             width="360">`
                        ]]
                </div>
                </div>
            </div>
            ',
        ],

        'fields' => [


            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
                'default' => 'Признание',
            ],
            'richtext' => [
                'caption' => 'Текст',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => 'Мы всегда отмечаем сотрудников за добросовестную работу, приверженность к бренду и стремление к развитию.'
            ],

            'display' => [
              'type'    => 'text',
              'caption' => 'Количество фотографий из Галереи (цифра или <span style="font-style: bold;">all</span> для показа всех фото)',
              'type'    => 'text',
              'default' => 'all',
              'note'    => ''
            ]

        ]
    ];

