/**
 * form-room-prepareProcess
 *
 * обрабатывает форму заказа Номера перед отправкой письма
 *
 * @category	snippet
 * @internal	@modx_category Forms
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

$id = $FormLister->getCFGDef('pageID');

$FormLister->setField('url', $modx->makeUrl($id,'','','full'));
	
return $data;