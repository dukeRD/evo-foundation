<?php

    return [
        'title' => 'Наша команда',

       'show_in_templates' => [ 19 ],

//        'show_in_docs' => [ 2 ],

//        'hide_in_docs' => [ 5 ],

//        'order' => 1,

        'image' => 'assets/plugins/pagebuilder/images/2col-text-photo.jpg',

//        'container' => 'default',

        'templates' => [
            'owner' => '
           <div class="row">
               <div class="col-12 text-center">
                   <h2 class="team__title">[+header+]</h2>
               </div>
               <div class="col-sm-6">
                   <div class="confession">
                       <h5 class="confession__title">[+header1+]</h5>
                       <div class="confession__text">[+richtext1+]</div>
                   </div>
               </div>
               <div class="col-sm-6">
                   <div class="sincerity">
                       <h5 class="sincerity__title">[+header2+]</h5>
                       <div class="sincerity__text">[+richtext2+]</div>
                   </div>
               </div>
               <div class="col-sm-6">
                   <div class="honesty">
                       <h5 class="honesty__title">[+header3+]</h5>
                       <div class="honesty__text">[+richtext3+]</div>
                   </div>
               </div>
               <div class="col-sm-6">
                   <div class="development">
                       <h5 class="development__title">[+header4+]</h5>
                       <div class="development__text">[+richtext4+]</div>
                   </div>
               </div>
               <div class="col-12">
                   <div class="growth">
                       <h5 class="growth__title">[+header5+]</h5>
                       <p class="growth__text">[+richtext5+]</p>
                   </div>
               </div>
           </div>',
        ],

        'fields' => [


            'header' => [
                'caption' => 'Заголовок блока',
                'type'    => 'text',
                'default' => 'Наша команда:<br> как мы работаем вместе',
            ],


            'header1' => [
                'caption' => 'Заголовок 1',
                'type'    => 'text',
                'default' => 'Признание',
            ],
            'richtext1' => [
                'caption' => 'Текст 1',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => 'Мы всегда отмечаем достижения друг друга. Мы искренне рады успехам каждого.'
            ],


            'header2' => [
                'caption' => 'Заголовок 2',
                'type'    => 'text',
                'default' => 'Искренность и позитивность',
            ],
            'richtext2' => [
                'caption' => 'Текст 2',
                'type'    => 'richtext',
                'default' => 'Мы не лицемерим и не притворяемся. Мы все делаем от души. Мы позитивно относимся к любой ситуации, к любым трудностям. Мы воспринимаем трудности как возможности.',
                'theme'   => 'mini'
            ],


            'header3' => [
                'caption' => 'Заголовок 3',
                'type'    => 'text',
                'default' => 'Честность и ответственность',
            ],
            'richtext3' => [
                'caption' => 'Текст 3',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => ' Мы строим отношения с коллегами на основе доверия и уважения друг к другу. Мы всегда делаем то, о чем договорились и что обещали сделать. Каждый из нас несет личную ответственность за общий результат'
            ],


            'header4' => [
                'caption' => 'Заголовок 4',
                'type'    => 'text',
                'default' => 'Развитие и наставничество'
            ],
            'richtext4' => [
                'caption' => 'Текст 4',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => 'Мы поддерживаем и обучаем друг друга. Извлекаем уроки из нашего опыта. Делимся конструктивной обратной связью друг с другом'
            ],


            'header5' => [
                'caption' => 'Заголовок 5',
                'type'    => 'text',
                'default' => 'Карьера',
            ],
            'richtext5' => [
                'caption' => 'Текст 5',
                'type'    => 'richtext',
                'theme'   => 'mini',
                'default' => 'Наша политика заключается в том, чтобы каждый сотрудник, работающий в GRACE, имел возможность раскрыть свой потенциал. Карьера и профессиональный рост в GRACE – отличная возможность самому повысить мастерство и добиться успеха. Мы предоставляем возможность повышать свое мастерство, как работая в должности, так и развиваться вверх, повышая свой карьерный уровень. Чтобы достигнуть определенных результатов, необходимо регулярно повышать собственную квалификацию. Больше половины сотрудников, занимающих руководящие должности, начинали свой путь с администраторов, менеджеров в наших отелях.'
            ]

        ]
    ];

