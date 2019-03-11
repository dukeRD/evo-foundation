/**
 * Страница
 *
 *
 *
 * Базовый шаблон страницы
 * @internal	@modx_category
 */
<!doctype html>
<html class="no-js" lang="ru">
	{{head}}
	<body class="docid[*id*] parent[*parent*]">
	{{nav}}
	{{header}}
	<main>
		<section class="content">
			[*content*]
		</section>
		[[if?
		&is=`[*isfolder*]:=:1`
		&then=`@TPL:folder-content`
		]]
		[[PageBuilder]]
	</main>
	{{footer}}
	{{scripts}}
	</body>
</html>