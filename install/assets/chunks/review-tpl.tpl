/**
 * review-tpl
 *
 * шаблон Отзыва (для посетителей)
 *
 * @category	chunk
 * @internal @modx_category Отзывы
 */
<div class="row">
	<div class="col-12">
		<div class="reviews__user">
			<h6 class="jot-comment-head reviews__user_title jot-name">
				[+createdby+]
			</h6>
			<div class="reviews__user_text jot-row">
				<div class="jot-message">
				[+content+]
			
				</div>
			</div>
			<p class="reviews__user_text jot-date">
				<span>
					[+createdon+]
				</span>
			</p>
		</div>
		<hr class="reviews__line">
	</div>
</div>