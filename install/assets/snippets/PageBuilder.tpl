/**
 * PageBuilder
 *
 * <strong>1.3.5</strong> output content sections for current page
 *
 * @category	snippet
 * @internal	@modx_category Content
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
include_once MODX_BASE_PATH . 'assets/plugins/pagebuilder/pagebuilder.php';
return (new PageBuilder($modx))->render($params);

