/**
 * treeIcons
 *
 * иконки в дереве
 *
 * @category	plugins
 * @internal	@modx_category Manager and Admin
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events 
 * @internal @installset base
 * @internal @properties {}
 */
$e = &$modx->Event;
switch($e->name){
    case 'OnManagerNodePrerender':
        
		if($ph['id'] == '3'){
            $ph['icon'] = "<i class='fa fa-cubes'></i>";

        }
		if($ph['id'] == '7'){
            $ph['icon'] = "<i class='fa fa-sitemap'></i>";

        }
		if($ph['id'] == '5'){
            $ph['icon'] = "<i class='fa fa-cogs'></i>";
			$ph['icon_folder_open'] = "<i class='fa fa-cogs'></i>";
            $ph['icon_folder_close'] = "<i class='fa fa-cogs'></i>";
        }
		if($ph['id'] == '4'){
            $ph['icon'] = "<i class='fa fa-address-card-o'></i>";
            $ph['icon_folder_open'] = "<i class='fa fa-address-card-o'></i>";
            $ph['icon_folder_close'] = "<i class='fa fa-address-card-o'></i>";
	    }
			 
		$e->output(serialize($ph));
	break;
}


