/**
 * folder-content
 *
 * вывод каталога
 *
 * @category	chunk
 * @internal @modx_category
 */

<section class="catalog">

    [[DocLister?
    &parents=`[*id*]`
    &id=`catalog`
    &prepare=`img-prepare`
    &maxDepth=`1`
    &thumbOptions=`w=200,h=200,zc=1`

    &tvList=`image`
    &orderBy=`menuindex ASC`

    &e=`pagetitlw`

    &tpl=`@CODE:
    <div class="catalog-item">
        <img class="catalog-item__img" src="[+tv.image+]" alt="[+e.pagetitle+]">
        <h5  class="catalog-item__header">[+longtitle+]</h5>
        <div class="catalog-item__description">[+introtext+]</div>
        <a   class="catalog-item__link" href="[+url+]">Подробнее</a>
    </div>`

    &paginate=`pages`
    &display=`10`
    &PrevNextAlwaysShow=`1`

    &TplNextP=`@CODE:
    <li class="pagination-item"><a class="pagination-link" href="[+link+]">&rarr;</a></li>`
    &TplPrevP=`@CODE:
    <li class="pagination-item"><a class="pagination-link" href="[+link+]">&larr;</a></li>`

    &TplPage=`@CODE:
    <li class="pagination-item">
        <a class="pagination-link" href="[+link+]" tabindex="[+iteration+]">
            	[+num+]
            </a>
    </li>`

    &TplCurrentPage=`@CODE:
    <li class="pagination-item pagination-item--current">
        [+num+]
    </li>`

    &TplWrapPaginate=`@CODE:
		<ul class="pagination">
      [+wrap+]
    </ul>`
    ]]

    [+catalog.pages+]
</section>