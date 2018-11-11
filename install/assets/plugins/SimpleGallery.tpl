/**
 * SimpleGallery
 *
 * <strong>1.2.3</strong> Plugin to create image galleries
 *
 * @category	plugins
 * @internal	@modx_category Images
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events 
 * @internal @installset base
 * @internal @properties {
  "tabName": [
    {
      "label": "Tab name",
      "type": "text",
      "value": "Галерея",
      "default": "SimpleGallery",
      "desc": ""
    }
  ],
  "controller": [
    {
      "label": "Controller class",
      "type": "text",
      "value": "",
      "default": "",
      "desc": ""
    }
  ],
  "templates": [
    {
      "label": "Templates",
      "type": "text",
      "value": "7,8,10,12,13,19",
      "default": "",
      "desc": ""
    }
  ],
  "documents": [
    {
      "label": "Documents",
      "type": "text",
      "value": "",
      "default": "",
      "desc": ""
    }
  ],
  "ignoreDoc": [
    {
      "label": "Ignore Documents",
      "type": "text",
      "value": "5,8,33,41,49,34",
      "default": "",
      "desc": ""
    }
  ],
  "role": [
    {
      "label": "Roles",
      "type": "text",
      "value": "",
      "default": "",
      "desc": ""
    }
  ],
  "folder": [
    {
      "label": "Galleries folder",
      "type": "text",
      "value": "assets/galleries/",
      "default": "assets/galleries/",
      "desc": ""
    }
  ],
  "thumbsCache": [
    {
      "label": "Thumbs cache folder",
      "type": "text",
      "value": "assets/.sgThumbs/",
      "default": "assets/.sgThumbs/",
      "desc": ""
    }
  ],
  "w": [
    {
      "label": "Thumbs width",
      "type": "text",
      "value": "140",
      "default": "140",
      "desc": ""
    }
  ],
  "h": [
    {
      "label": "Thumbs height",
      "type": "text",
      "value": "105",
      "default": "105",
      "desc": ""
    }
  ],
  "customThumbOptions": [
    {
      "label": "Custom thumb options",
      "type": "text",
      "value": "",
      "default": "",
      "desc": ""
    }
  ],
  "clientResize": [
    {
      "label": "Client Resize",
      "type": "list",
      "value": "No",
      "options": "No,Yes",
      "default": "No",
      "desc": ""
    }
  ],
  "jpegQuality": [
    {
      "label": "Jpeg quality",
      "type": "text",
      "value": "0.93",
      "default": "0.93",
      "desc": ""
    }
  ],
  "skipPHPThumb": [
    {
      "label": "Skip PHPThumb",
      "type": "list",
      "value": "No",
      "options": "No,Yes",
      "default": "No",
      "desc": ""
    }
  ],
  "allowDuplicate": [
    {
      "label": "Duplicate galleries with documents",
      "type": "list",
      "value": "No",
      "options": "No,Yes",
      "default": "No",
      "desc": ""
    }
  ]
}
 */
if (IN_MANAGER_MODE != 'true') die();
$e = &$modx->event;
if ($e->name == 'OnDocFormRender') {
    include_once(MODX_BASE_PATH . 'assets/plugins/simplegallery/lib/plugin.class.php');
    global $modx_lang_attribute, $richtexteditorIds;
    //Hack to check if TinyMCE scripts are loaded
    if (isset($richtexteditorIds['TinyMCE4'])) {
        $modx->loadedjscripts['TinyMCE4'] = array('version' => '4.3.6');
    }
    $plugin = new \SimpleGallery\sgPlugin($modx, $modx_lang_attribute);
    if ($id) {
        $output = $plugin->render();
    } else {
        $output = $plugin->renderEmpty();
    }
    if ($output) $e->output($output);
}
if ($e->name == 'OnEmptyTrash') {
    if (empty($ids)) return;
    include_once(MODX_BASE_PATH . 'assets/plugins/simplegallery/lib/plugin.class.php');
    $plugin = new \SimpleGallery\sgPlugin($modx);
    $where = implode(',', $ids);
    $modx->db->delete($plugin->_table, "`sg_rid` IN ({$where})");
    $plugin->clearFolders($ids, MODX_BASE_PATH . $e->params['thumbsCache'] . $e->params['folder']);
    $plugin->clearFolders($ids, MODX_BASE_PATH . $e->params['folder']);
    $sql = "ALTER TABLE {$plugin->_table} AUTO_INCREMENT = 1";
    $rows = $modx->db->query($sql);
}
if ($e->name == 'OnDocDuplicate' && isset($allowDuplicate) && $allowDuplicate == 'Yes') {
    include_once(MODX_BASE_PATH . 'assets/plugins/simplegallery/lib/plugin.class.php');
    $plugin = new \SimpleGallery\sgPlugin($modx);
    $sql = "SHOW COLUMNS FROM {$plugin->_table}";
    $rows = $modx->db->query($sql);
    $columns = array();
    while ($row = $modx->db->getRow($rows)) {
        if ($row['Key'] == 'PRI') continue;
        $columns[] = '`' . $row['Field'] . '`';
    }
    $fields = implode(',',$columns);
    $oldFolder = $e->params['folder'] . $id . '/';
    $newFolder = $e->params['folder'] . $new_id . '/';
    $values = str_replace(['`sg_rid`','`sg_image`'],[$new_id,"REPLACE(`sg_image`,'{$oldFolder}', '{$newFolder}')"], $fields);
    $sql = "INSERT INTO {$plugin->_table} ({$fields}) SELECT {$values} FROM {$plugin->_table} WHERE `sg_rid`={$id}";
    $modx->db->query($sql);
    $plugin->copyFolders(MODX_BASE_PATH . $oldFolder, MODX_BASE_PATH . $newFolder);
    $oldFolder = $e->params['thumbsCache'] . $e->params['folder'] . $id . '/';
    $newFolder = $e->params['thumbsCache'] . $e->params['folder'] . $new_id . '/';
    $plugin->copyFolders(MODX_BASE_PATH . $oldFolder, MODX_BASE_PATH . $newFolder);
}
