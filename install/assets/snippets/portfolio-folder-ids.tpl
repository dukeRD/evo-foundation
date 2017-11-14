/**
 * portfolio-folder-ids
 *
 * подставляет id папок в вызов каталога Портфолио
 *
 * @category	snippet
 * @internal	@modx_category Портфолио
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

$portfolioId = 2;
$docId = (int)$modx->documentIdentifier;

 if ($docId === $portfolioId){

	 $ids = $modx->getActiveChildren($portfolioId,'menuindex','ASC','id,isfolder'); 
	
	 // выбираем id дочерних папок
	 $output = array_reduce($ids, function ($carry, $item){
		 if ($item['isfolder'] === '1'){
			$carry[$item['id']] = $item['id'];
			return $carry;		
		 }
	 });
 
 	$output = implode(',',$output);
 
 } else {
	 //если мы в папке
	 $output = $docId;
 }
	

return $output;