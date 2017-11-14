/**
 * offcanvas-content
 *
 * содержимое панели мобильной навигации
 *
 * @category	chunk
 * @internal @modx_category Template
 */
<!-- offcanvas.html -->
<div class="offcanvas__wrapper">

  <!-- Close button -->
  	<button class="offcanvas__close-button close-icon" aria-label="Закрыть меню" type="button" data-close>
	  <span aria-hidden="true">&times;</span>
	</button>

   <!-- Menu -->
  <ul class="offcanvas-nav">
	  [[DLMenu? 
	  &parents=`0` 
	  &maxDepth=`1` 
	  &rowTpl=`@CODE:<li class="offcanvas-nav__item [+classNames+]"><a href="[+url+]" class="offcanvas-nav__link ">[+title+]</a></li>`
	  &hereClass=`active`		
	  ]]
  </ul>

</div>
