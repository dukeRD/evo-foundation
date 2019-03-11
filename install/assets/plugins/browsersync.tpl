/**
 * BrowserSync
 *
 * reload pages at browsersync server (localhost:3000) on save chunks, templates, documents etc.
 *
 * @category    plugin
 * @version     1.0
 * @package     evo
 * @internal    @events OnSiteRefresh,OnChunkFormSave,OnDocFormSave,OnPluginFormSave,OnSnipFormSave,OnTVFormSave,OnTempFormSav,OnClientSettingsSave,OnPBContainerRender
 * @internal    @modx_category DEV
 * @internal    @properties
 * @internal    @installset base
 */

if (!defined('MODX_BASE_PATH')) {
    die('What are you doing? Get out of here!');
}

$role = $_SESSION['mgrRole'];

if ((!isset($adminRoleOnly) || $adminRoleOnly === 'yes') && (int)$role !== 1) {
    return;
}


$e =& $modx->event;
switch ($e->name ) {

	case 'OnSiteRefresh':
	case 'OnChunkFormSave':
	case 'OnDocFormSave':
	case 'OnPluginFormSave':
	case 'OnSnipFormSave':
	case 'OnTVFormSave':
	case 'OnTempFormSave':

		$url = 'http://localhost:3000/__browser_sync__?method=reload';
		$ch = curl_init();
		curl_setopt($ch,CURLOPT_URL, $url);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER, true);
		$result = curl_exec($ch);
	  break;

	default:
		return;
}