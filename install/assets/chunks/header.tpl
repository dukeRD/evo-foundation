/**
 * header
 *
 * верхняя панель с навигацией
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<header class="header">
    <div class="header__wrapper">
        <div class="header__offcanvas">
            <button type="button" class="offcanvas-toggle show-for-small-only" title="меню" data-toggle="offCanvas">Меню</button>
        </div>
        <div class="header__logo">
            {{logo}}
        </div>
        <div class="header__nav">
            <nav role="navigation">
				<ul class="nav">
					[[DLMenu? 
					&parents=`0` 
					&maxDepth=`1` 
					&rowTpl=`@CODE:<li class="nav__item [+classNames+]"><a href="[+url+]" class="nav__link ">[+title+]</a></li>`
					&hereClass=`active`		
					]]
				</ul>
			</nav>
        </div>
        <div class="header__contact-form">
            <button class="button contact-form-call " data-open="callbackFormReveal">Обратный звонок</button>
            {{form-callback-call}}
        </div>
    </div>
</header>