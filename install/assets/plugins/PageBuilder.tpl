/**
 * PageBuilder
 *
 * <strong>1.3.5</strong> Creates form for manage content sections
 *
 * @category	plugins
 * @internal	@modx_category Content
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events 
 * @internal @installset base
 * @internal @properties {"tabName":[{"label":"Tab name","type":"text","value":"Компоненты страницы","default":"Page Builder","desc":""}],"addType":[{"label":"Add type","type":"menu","value":"images","options":"dropdown,icons,images","default":"dropdown","desc":""}],"placement":[{"label":"Placement","type":"menu","value":"content","options":"content,tab","default":"tab","desc":""}],"order":[{"label":"Default container ordering","type":"text","value":"0","default":"0","desc":""}]}
 */
include_once MODX_BASE_PATH . 'assets/plugins/pagebuilder/pagebuilder.php';

$e = &$modx->event;

switch ($e->name) {
    case 'OnWebPageInit':
    case 'OnManagerPageInit': {
        $modx->db->query("DELETE FROM " . $modx->getFullTableName('site_plugin_events') . "
            WHERE pluginid IN (
               SELECT id
               FROM " . $modx->getFullTableName('site_plugins') . "
               WHERE name = '" . $e->activePlugin . "'
               AND disabled = 0
            )
            AND evtid IN (
               SELECT id
               FROM " . $modx->getFullTableName('system_eventnames') . "
               WHERE name IN ('OnWebPageInit', 'OnManagerPageInit')
            )");

        $modx->clearCache('full');

        (new PageBuilder($modx))->install();

        return;
    }

    case 'OnDocFormRender': {
        $e->output((new PageBuilder($modx))->renderForm());
        return;
    }

    case 'OnDocFormSave': {
        (new PageBuilder($modx))->save();
        return;
    }

    case 'OnBeforeEmptyTrash': {
        (new PageBuilder($modx))->delete();
        return;
    }

    case 'OnDocDuplicate': {
        (new PageBuilder($modx))->duplicate();
        return;
    }
}


