/**
 * yearCopyright
 *
 * <strong>0.1</strong> Automatically updates the year on the site.
 *
 * @category	snippet
 * @internal	@modx_category Content
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

$dy = isset($dy) ? (int)$dy : '2017';
if($dy===0) $dy=date('Y');
$sep = isset($sep) ? $sep : '&mdash;'; //Разделитель между годами
return (date('Y')==$dy) ? date('Y') : $dy.' '.$sep.' '.date('Y');