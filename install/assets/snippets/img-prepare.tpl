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
$data['tv.image'] = $modx->runSnippet('phpthumb', Array(
	'input'  => $data['tv.image'] ,
	'options'=> $thumbOptions
));

	
//output	
	return $data;