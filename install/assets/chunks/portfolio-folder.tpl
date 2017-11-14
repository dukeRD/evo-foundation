/**
 * portfolio-folder
 *
 * Папки портфолио, выводи галерею работ
 *
 * @category	chunk
 * @internal @modx_category Портфолио
 */
<!-- ---------portfolio----------- -->
<section class="portfolio">
    <div class="portfolio__filters">
        <ul class="filter">
            <li class="filter__items">
                <a href="[~2~]" class="filter__link active">Всё</a>
            </li>
			[[DocLister?
			&parents=`2`
			&orderBy=`menuindex ASC`
			&tpl=`@CODE:<li class="filter__items">
			<a href="[+url+]" class="filter__link">[+pagetitle+]</a>
			</li>`
			]]
        </ul>
    </div>
<!-- ************************************************* -->
    <div id="portfolio">
<!-- ************************************************* -->
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
		&PrevNextAlwaysShow=`0`

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

		&TplPage=`@CODE:<li class="pagination__item"><a href="[+link+]" class="page-link">[+num+]</a></li>`
		&TplCurrentPage=`@CODE:<li class="pagination__item active"><a href="[+link+]" class="page-link">[+num+]</a></li> `	


		&TplPrevP=`@CODE: `
		&TplNextP=`@CODE: `
		&TplPrevI=`@CODE: `
		&TplNextI=`@CODE: `
		]]
  
  
<!-- ***************************************** -->
    </div>
<!-- ***************************************** -->
</section>

<div class="cell small-12 text-center">
	[+pages+]
</div>
<!-- ---------portfolio----------- -->