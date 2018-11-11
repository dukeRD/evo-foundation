/**
 * gallery-page-content
 *
 * страница Галереи
 *
 * @category	chunk
 * @internal @modx_category Галерея
 */
<section class="galery-bg" id="galery-bg">
	<div class="galery-bg__slide">
		[[multiTV?
		&tvName=`gallery-slider`
		&docid=`[*parent*]`
		&display=`all`
		]]
	</div>
</section>

<section class="page-content">
	<div class="container">
		<div class="row justify-content-sm-center">
			<div class="col-12 text-center">
				<h2>[*longtitle*]</h2>
			</div>
			<div class="col-12 arli__text">
				[*content*]
			</div>
		</div>
	</div>
</section>

<section class="galery" id="galery">
	<div class="container">
		<h2 class="galery__title">
			[[alterTitle]]
		</h2>
		<hr class="galery__line">
		<div class="galery__photo">
			<div class="row">
				
				[[sgLister?
				&display=`all`
				&thumbSnippet=`phpthumb`
				&thumbOptions=`w=263&h=175&zc=1`
				&tpl=`@CODE:
				<div class="gallery-item col-lg-3 col-md-3 col-sm-6 col-12">
					<a href="[+sg_image+]" data-fancybox="gallery" data-caption="[+e.sg_description+]">
						<img src="[+thumb.sg_image+]" alt="[+e.sg_title+]" class="galery__img img-fluid" height="175" width="263">
					</a>
				</div>`
				]]

			</div>
		</div>
	</div>
</section>
