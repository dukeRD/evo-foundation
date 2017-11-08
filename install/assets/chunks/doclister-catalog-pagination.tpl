/**
 * portfolio-folder
 *
 * вывод каталога Портфолио (вызов из шаблона 5)
 *
 * @category	chunk
 * @internal @modx_category Портфолио
 */
[[DocLister?
&parents=`[[portfolio-folder-ids]]`
&prepare=`case-prepare`
&maxDepth=`3`
&thumbOptions=`w=256,h=200,zc=1`
&thumbOptionsLarge=`w=512,h=400,zc=1`
&tvList=`case-preview-image,case-preview-large`
&display=`14`
&orderBy=`menuindex ASC`


&paginate=`pages`
&PrevNextAlwaysShow=`1`

&tpl=`@CODE:
<div class="portfolio__item [+large+]">
	<div class="portfolio__inner">										
		<img src="[+tv.case-preview-image+]" alt="[+pagetitle+]" class="portfolio__img">
		<a href="[+url+]" class="portfolio__link">
			<div class="portfolio__description">
				<h5 class="portfolio__name">[+longtitle+]</h5>
				<span class="portfolio__text">[+folder+]</span>
			</div>
		</a>
	</div>
</div>`

&TplWrapPaginate=`@CODE:<ul class="pagination text-center" role="navigation" aria-label="Pagination">[+wrap+]</ul>`

&TplPage=`@CODE:<li class="page-item"><a href="[+link+]" class="page-link">[+num+]</a></li>`
&TplCurrentPage=`@CODE:<li class="page-item active"><a href="[+link+]" class="page-link">[+num+]</a></li> `	


&TplPrevP=`@CODE:<li class="pagination-previos"><a href="[+link+]" aria-label="Предыдущая страница">&larr; Назад</a></li>`
&TplNextP=`@CODE:<li class="pagination-next"><a href="[+link+]" aria-label="Следующая страница">Вперёд &rarr;</a></li>`
&TplPrevI=`@CODE:<li class="pagination-previos disabled">&larr; Назад</li>`
&TplNextI=`@CODE:<li class="pagination-next disabled">Вперёд &rarr;</li>`
]]