/**
 * alterTitle
 *
 * <strong>1</strong> Pagetitle если Longtitle пуст
 *
 * @category	snippet
 * @internal	@modx_category add
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
//[[alterTitle? &id = `[+id+]`]] к примеру для вывода в Ditto
$id = isset($id) ? $id : $modx->documentIdentifier;  
$arr = $modx->getPageInfo($id,1,'pagetitle,longtitle');
$title = (strlen($arr["longtitle"])>0) ? $arr["longtitle"] : $arr["pagetitle"]; 
return $title;