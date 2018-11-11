/**
 * form-room-prepare
 *
 * обрабатывает форму заказа Номера при загрузке формы 
 *
 * @category	snippet
 * @internal	@modx_category Forms
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/*
*
*/
$id    = $modx->documentIdentifier;

$hotel = $modx->runSnippet('hotel-name', array('id' => $id));

$pagetitle = $modx->runSnippet('DocInfo', array(
	'docid' => $id,
	'field' => 'pagetitle'
));	

if ($id == 'roomform'){
	$id = $FormLister->getCFGDef('pageID');
}

$FormLister->setField('hotel',      $hotel);
$FormLister->setField('room-title', $pagetitle);
$FormLister->setField('pageID',     $id);



return $data;