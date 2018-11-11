<?php
$settings['display'] = 'vertical';
$settings['fields'] = array(


    'title' => array(
        'caption' => 'Должность',
        'type' => 'text'
    ),

    'icon' => array(
        'caption'  => 'Иконка',
        'type'     => 'image'
    ),

    'thumb' => array(
        'caption' => 'превью',
        'type'    => 'thumb',
        'thumbof' => 'icon'
    ),

    'duties' => array(
        'caption' => 'Обязаности',
        'type'    => 'richtext',
        'theme'   => 'mini'
    ),

    'requirements' => array(
        'caption' => 'Требования',
        'type'    => 'richtext',
        'theme'   => 'mini'
    ),

    'conditions' => array(
        'caption' => 'Условая',
        'type'    => 'richtext',
        'theme'   => 'mini'
    )
);



$settings['configuration'] = array(
    'enablePaste' => true,
    'enableClear' => false
);


$settings['templates'] = array(
    'outerTpl' => '[+wrapper+]',
    'rowTpl'   => '
    <div class="col-sm-6 col-12 text-left">
        <div class="jobs__dj vacancy-item" data-icon="[+icon+]">
            <h6 class="jobs__dj_title vacancy-title">[+title+]</h6>
            <ul class="dj vacancy-item-description">
                <li class="dj__item">
                    <p> Обязанности: </p>
                </li>
                <li class="dj__item"> <span> [+duties+] </span> </li>
                <li class="dj__item">
                    <p> Требования: </p>
                </li>
                <li class="dj__item"> <span> [+requirements+] </span> </li>
                <li class="dj__item">
                    <p> Условия: </p>
                </li>
                <li class="dj__item"> <span> [+conditions+] </span> </li>
            </ul>
            <div class="description__link flex-s">
                <div class="description__link_show with-collapse1">
                    <p class="description__link_more vacancy-description-open"> Подробнее </p>
                    <p class="description__link_hide vacancy-description-hide"> Скрыть </p>
                </div>
                <p class="description__link_look">
                    <a  class="vacancy-open-link"
                        href="#"
                        data-toggle="modal"
                        data-target="#vacancyPageForm"
                        data-title="[+title+]">
                    Откликнуться
                    </a>
                </p>
            </div>
        </div>
    </div>'
);