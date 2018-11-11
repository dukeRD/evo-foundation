<?php

    return [
        'title' => 'Блог: текст и слайдер фото',

       'show_in_templates' => [ 8 ],

//        'show_in_docs' => [ 2 ],

       'hide_in_docs' => [ 8,21,22,23 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/text-photo.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row align-items-center">
                <div class="col-lg-7 col-12">
                    <h6 class="blog-more__title_down">
                        [+header+]
                    </h6>
                    <p class="blog-more__text">
                       [+richtext+]
                    </p>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-8 col-10 m-auto">
                    <div class="blog-more__slide">
                    [[sgLister?
                    &display=`[+foto+]`
                    &thumbSnippet=`phpthumb`
                    &thumbOptions=`w=458&h=307&zc=1`
                    &tpl=`@CODE:
                    <img src="[+thumb.sg_image+]"
                         alt="[+e.sg_title+]"
                         title="[+e.sg_description+]"
                         class="blog-more__img img-fluid"
                         height="307"
                         width="458">`
                    ]]


                    </div>
                </div>
            </div>',
        ],

        'fields' => [
            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
            ],
            'foto' => [
                'caption' => 'Фото',
                'note'    => 'Количество фотографий из галереи в слайдере',
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

