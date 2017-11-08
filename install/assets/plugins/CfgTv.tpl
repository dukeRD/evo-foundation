/**
 * CfgTv
 *
 * <strong>0.1</strong> Save TV as system setting from some resourse
 *
 * @category	plugins
 * @internal	@modx_category uncategorized
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events 
 * @internal @installset base
 * @internal @properties {
  "ids": [
    {
      "label": "ID ресурсов настроек",
      "type": "text",
      "value": "4",
      "default": "347",
      "desc": ""
    }
  ],
  "prefix": [
    {
      "label": "Префикс",
      "type": "text",
      "value": "cfg_",
      "default": "cfg_",
      "desc": ""
    }
  ]
}
 */
$e =& $modx->event;
switch ($e->name ) {
    case 'OnBeforeDocFormSave':
                $list_id=explode(',',$ids);
                if (!in_array($_POST['id'],$list_id)) return;
                $SQL="SELECT * FROM ".$modx->getFullTableName('site_tmplvars').";";
                $result=$modx->db->query($SQL);
				while($row=$modx->db->getRow($result)) {
					$TVNAME[$row['id']]=$row['name'];
				}
                foreach($_POST as $key=>$value){
                	if (substr($key,0,2)!='tv') continue;
               		$id=substr($key,2,strlen($key));
               		$name=$prefix.$TVNAME[$id];
                	$settings[$name]=$value;
                	$SQL="SELECT * FROM ".$modx->getFullTableName('system_settings')." WHERE `setting_name`='".$name."'";
                	$count=$modx->db->getRow($modx->db->query($SQL));
        			if (!empty($count['setting_name'])){
                        $SQL="UPDATE ".$modx->getFullTableName('system_settings')." SET `setting_value`='".$value."' WHERE `setting_name`='".$name."'";
                		$modx->db->query($SQL);
        			} else {
						$SQL="INSERT into ".$modx->getFullTableName('system_settings')." SET `setting_name`='".$name."',`setting_value`='".$value."'";
                		$modx->db->query($SQL);
        			}
                }
    break ;
}