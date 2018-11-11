/**
 * img-prepare
 *
 * превью изображения из ТВ-параметра (&thumbOptions=``)
 *
 * @category	snippet
 * @internal	@modx_category Images
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */



//image
$thumbOptions = $_DocLister->getCFGDef('thumbOptions');
$data['image'] = $data['tv.image'];
$data['tv.image'] = $modx->runSnippet('phpthumb', Array(
	'input'  => $data['tv.image'] ,
	'options'=> $thumbOptions
));

$data['st_thumbUrl'] = $modx->runSnippet('phpthumb', Array(
	'input'  => $data['st_thumbUrl'],
	'options'=> $thumbOptions
));


//output
	return $data;