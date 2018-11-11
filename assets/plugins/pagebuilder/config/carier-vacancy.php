<?php

    return [
        'title' => 'Вакансии',

       'show_in_templates' => [ 19 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/2col-text-photo.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row">
              <div class="col-12 text-left">
                  <h5 class="jobs__title">[+header+]</h5>
              </div>
              [[multiTV?
              &tvName=`vacancy`
              &docid=`[*id*]`
              &display=`[+display+]`
              ]]
          </div>

          <div class="row">
              <div class="col-md-7 col-12 text-center mr-auto ml-auto">
                  <p class="questionnaire">[+richtext+]</p>
                  <button
                      class="questionnaire__btn text-center vacancy-open-link"
                      data-toggle="modal"
                      data-target="#vacancyPageForm"
                      data-title="Свободная вакансия">
                      Заполнть анкету
                  </button>
              </div>
          </div>',
        ],

        'fields' => [


            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
                'default' => 'Вакансии',
            ],
            'richtext' => [
                'caption' => 'Текст',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => 'Если Вы не увидели подходящей вакансии, но ощущаете желание и уверены в своей экспертности в какой либо другой должности так же заполните анкету'
            ],

            'display' => [
              'type'    => 'text',
              'caption' => 'Количество вакансий (цифра или <span style="font-style: bold;">all</span> для показа всех)',
              'type'    => 'text',
              'default' => 'all'
            ]

        ]
    ];

