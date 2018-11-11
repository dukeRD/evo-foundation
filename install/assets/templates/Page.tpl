/**
 * Страница
 *
 *
 *
 * Базовый шаблон страницы
 * @internal	@modx_category
 */
{{template-top}}

	<h1 class="page-header">[[alterTitle]]</h1>

	<section class="content">
			[*content*]
	</section>
	[[if?
	&is=`[*isfolder*]:=:1`
	&then=`@TPL:folder-content`
	]]

{{template-bottom}}