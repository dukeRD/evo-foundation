/**
 * offcanvas-content
 *
 * мобильная навигация
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<!-- offcanvas.html -->

  <!-- Close button -->
  <button class="close-button" aria-label="Закрыть меню" type="button" data-close><span aria-hidden="true">&times;</span></button>

  <!-- Menu -->

	  		[[DLMenu? 
			&parents=`0` 
			&maxDepth=`1` 
			&outerClass=`offcanvas-nav`
			&rowTpl=`@CODE:<li class="offcanvas-nav__item "><a href="[+url+]" class="offcanvas-nav__link ">[+title+]</a></li>`
			&hereClass=`active`		
			]]



  <div class="offcanvas__contacts">
  <!-- <p>
    Позвоните нам:
  </p>
    <a class="skype" href="skype:vesia-home?call">vesia-home</a>
    <a class="email" href="mailto:info@card-r.ru">info@card-r.ru</a> 
    <a class="phone" href="tel:+74957602360" title="Позвонить в Карт Регион">+7(495)760-23-60</a>-->
  </div>

