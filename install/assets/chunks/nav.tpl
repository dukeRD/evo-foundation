/**
 * nav
 *
 * Главное меню
 *
 * @category	chunk
 * @internal @modx_category Templates
 */
<nav class="nav-main">
	<ul class="nav-wrap">
		[[DLMenu? 
		&parents=`0` 
		&maxDepth=`1` 
		&rowTpl=`@CODE:<li class="nav-item [+classNames+]"><a href="[+url+]" class="nav-link ">[+title+]</a></li>`
		&hereClass=`active`		
		]]
	</ul>
</nav>