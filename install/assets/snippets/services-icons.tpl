/**
 * services-icons
 *
 * Получает список иконок из определенной папки для вывода в списке Услуг
 *
 * @category	snippet
 * @internal	@modx_category Услуги
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

$path  = MODX_BASE_PATH.'assets/images/srv-icons/';
$files = array_diff(scandir($path), array('.', '..'));
return $files;