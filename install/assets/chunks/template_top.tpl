/**
 * template_top
 *
 * верхняя часть всех шаблонов
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<!doctype html>
<html class="no-js" lang="ru">

<head>
    {{head}}
</head>

<body class="parent[*parent*]" id="id[*id*]">

    <div class="off-canvas-wrapper">

        <div class="off-canvas position-top" id="offCanvas" data-off-canvas>
            {{offcanvas-content}}
        </div>

        <div class="off-canvas-content" data-off-canvas-content [[hero-image]]>
            {{header}}

            <div class="page [+page_class+]">
                <div class="page__wrapper grid-x grid-padding-x">
				<!-- ************************************************* -->	