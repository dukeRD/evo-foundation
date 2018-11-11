<?php

    return [
        'title' => 'Карточки работников',

       'show_in_templates' => [ 19 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/image-title.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
            <div class="row">
              [[multiTV?
              &tvName=`career-employee`
              &docid=`[*id*]`
              &display=`[+display+]`
              &offset=`0`
              ]]
            </div>'
        ],

        'fields' => [
            'display' => [
            'type'    => 'text',
            'caption' => 'Количество выводимых карточек',
            'type'    => 'text',
            'default' => '6',
            'note'    => 'Выводит блок «Карточки работников»'
          ]
        ]
    ];

