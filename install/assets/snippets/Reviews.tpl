/**
 * Reviews
 *
 * вывод Отзывов
 *
 * @category	snippet
 * @internal	@modx_category Отзывы
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/**
 * Reviews
 *
 * вывод Отзывов
 *
 * @category	snippet
 * @internal	@modx_category Отзывы
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
	

if($_SESSION['mgrRole'] == 1){
	
  $output = $modx->runSnippet('JotX',array(
		//'cssFile'      => '',
		'moderated'    => 1,
	  	'output'       => 1,
		'placeholders' => 1,
	    'action'       => 'comments',

	    'tplForm'      => 'review-manager-form',
		'tplComments'  => 'review-manager-tpl'
	));

} else {
	// reviews on page, tv &display=`[*reviews-on-page*]`
	$display = isset($display) ?  $display : 3;

	$output = $modx->runSnippet('DocLister',array(
		'controller'    => 'onetable',
		'table'         => 'jot_content',
		'debug'         => '0',
		'showParent'    => '1',
		'parentField'   => 'uparent',
		'addWhereList'  => 'published = 1',
		'orderBy'       => 'createdon DESC',
		'prepare'       => 'review-prepare',

		'display'        => $display,
		'paginate'       => 'pages',
		'TplNextP'       => '@CODE: <li class="pagination-item"><a class="pagination-link" href="[+link+]">&rarr;</a></li>',
		'TplPrevP'       => '@CODE: <li class="pagination-item"><a class="pagination-link" href="[+link+]">&larr;</a></li>',
		'TplCurrentPage' => '@CODE: <li class="pagination-item pagination-item--current">[+num+]</li>',
		'TplPage'        => '@CODE: 
		<li class="pagination-item">
			<a class="pagination-link" href="[+link+]" tabindex="[+iteration+]">
				[+num+]
            </a>
        </li>',

		'ownerTPL'     => 'reviews-wrap-tpl',
		'tpl'          => 'review-tpl'
	));	

	$output .= $modx->runSnippet('JotX',array(
		'cssFile'      => '',
		'moderated'    => 1,
		'captcha'      => 0,
		'tplForm'      => 'review-form',
		'output'       => 1,
		'tplComments'  => 'review-tpl',
		'placeholders' => 0,
		'action'       => 'form'
	));
	
}


return $output;