/**
 * gallery-prepare
 *
 * выводит первые фото из дочерний галереи и остальные фото в виде ссылок для открытия в лайтбоксе
 *
 * @category	snippet
 * @internal	@modx_category Галерея
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

//*******************
$thumbs_to_show = 4;

$data['gallery-thumbs'] = $modx->runSnippet('sgLister', array(
	'parents'      => $data['id'],
	'display'      => $thumbs_to_show,
	'thumbSnippet' => 'phpthumb',
	'thumbOptions' => 'w=263&h=175&zc=1',
	'tpl'          => '<div class="col-lg-3 col-md-3 col-sm-6 col-12">
							<a href="[+sg_image+]" data-fancybox="gallery" data-caption="[+e.sg_description+]">
								<img src="[+thumb.sg_image+]" alt="[+e.sg_title+]" class="galery__img img-fluid" height="175" width="263">
							</a>
						</div>'
));

$data['gallery-links'] = $modx->runSnippet('sgLister', array(
	'parents' => $data['id'],
	'display' => 'all',
	'prepare' =>'function(){ return $data;}',
	'offset'  => $thumbs_to_show,
	'tpl'     => '<a href="[+sg_image+]" data-fancybox="gallery" data-caption="[+e.sg_description+]"></a>',
));

foreach($data as $k=>$v){
$data['test'] .= '['.$k.'] = '.$v.'<br>' ;
}


return $data;