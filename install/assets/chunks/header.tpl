/**
 * header
 *
 * верхняя панель с навигацией
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<header class="header">
    <div class="header__offcanvas">
        <button type="button" class="offcanvas-toggle show-for-small-only" data-toggle="offCanvas">NAV</button>
    </div>
    <div class="header__logo">
        <a href="[(site_url)]" class="logo" title="На главную страницу сайта"><span class="logo__image">r</span>reezoq.</a>
    </div>
    <div class="header__nav">
        <nav role="navigation">
			[[DLMenu? 
			&parents=`0` 
			&maxDepth=`1` 
			&outerClass=`nav hide-for-small-only`
			
			&rowTpl=`@CODE:<li class="nav__item"><a href="[+url+]" class="nav__link  [+classNames+]">[+title+]</a></li>`
			&hereClass=`active`		
			&activeClass=`active`		
			]]
		</nav>

    </div>
    <div class="header__contact-form">
        <button class="button contact-form-call " data-open="contactForm">Сделать заказ</button>
    </div>
</header>