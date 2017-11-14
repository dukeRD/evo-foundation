/**
 * portfolio-prepare
 *
 * вывод кейса в Портфолио, обрезание изображения, добавление класса выделения, родительская категория
 *
 * @category	snippet
 * @internal	@modx_category Портфолио
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

//large
$large = ($data['tv.portfolio-preview-large'] == '1') ? 'portfolio__item--large':'';
$data['large'] = $large;

// title
$data['longtitle'] = ($data['longtitle'] === '') ? $data['pagetitle'] : $data['longtitle'];
																		
//image
$image = $modx->db->query( 'SELECT * FROM `evo_sg_images` WHERE sg_rid='.$data['id'].' AND sg_isactive=1 AND sg_index=0 ORDER BY sg_index ASC' );
$image = $modx->db->getRow($image);
$image = $image['sg_image'];

$thumbOptions = ($large == 'portfolio__item--large') ? 	$_DocLister->getCFGDef('thumbOptionsLarge') : $_DocLister->getCFGDef('thumbOptions');
$data['image'] = $modx->runSnippet('phpthumb', Array(
												'input'  => $image,
												'options'=> $thumbOptions
											));

//folder
$data['folder'] = $modx->runSnippet('DocInfo', Array('docid'=>$data['parent'],'field'=>'pagetitle'));

	
//output	
	return $data;