/**
 * mm_rules
 *
 * Default ManagerManager rules.
 *
 * @category	chunk
 * @internal @modx_category Js
 */
// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php
// example of how PHP is allowed - check that a TV named documentTags exists before creating rule

//if ($modx->db->getValue($modx->db->select('count(id)', $modx->getFullTableName('site_tmplvars'), "name='documentTags'"))) {
//	mm_widget_tags('documentTags', ' '); // Give blog tag editing capabilities to the 'documentTags (3)' TV
//}
mm_widget_showimagetvs(); // Always give a preview of Image TVs

mm_createTab('SEO', 'seo', '', '', '', '');
mm_moveFieldsToTab('titl,keyw,desc,description,alias,introtext,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude', 'seo', '', '');
mm_moveFieldsToTab('link_attributes,menutitle,menuindex,parent,show_in_menu,template', 'settings', '', '');
mm_widget_tags('keyw',','); // Give blog tag editing capabilities to the 'documentTags (3)' TV




//HOME page
mm_createTab('Хиро', 'hero', '', '4', '', '');
mm_moveFieldsToTab('hero-image,hero-name,hero-slogan,hero-subheader,hero-info,hero-links', 'hero', '', '4');

mm_createTab('Преимущества', 'benefits', '', '4', '', '');
mm_moveFieldsToTab('benefits-header,benefits', 'benefits', '', '4');

mm_createTab('Клиенты', 'clients', '', '4', '', '');
mm_moveFieldsToTab('clients-header,clients', 'clients', '', '4');




//CASE page

mm_renameField('pagetitle', 'Название кейса', '', '7');
mm_changeFieldHelp('pagetitle', 'Название проекта, отображается в заголовке стриницы', '7');
mm_renameField('longtitle', 'Краткое описание', '', '7');
mm_changeFieldHelp('longtitle', 'Строка после заголовка. Лучше избегат кавычек и нестандартных символов', '7');
mm_renameSection('tv', 'Параметры ссылки проекта', '7');
mm_renameTab('general', 'КЕЙС', '7');

mm_createTab('Контент', 'case-top', '', '7', '', '');
mm_moveFieldsToTab('content,which_editor,case-content-header,case-content-subheader,case-content-image-1-name,case-content-image-1,case-content-images', 'case-top', '', '7');

mm_createTab('Контент (внизу страницы)', 'case-bottom', '', '7', '', '');
mm_moveFieldsToTab('case-misc-header,case-misc-goodby,case-misc-images,case-misc-image-outro', 'case-bottom', '', '7');


////////////////////////////////////////////////////////////////////////////////////////////////////////


//mm_createTab('Images', 'photos', '', '', '', '850');
//mm_moveFieldsToTab('images,photos', 'photos', '', '');

//mm_hideFields('longtitle,description,link_attributes,menutitle,content', '', '6,7');

//mm_hideTemplates('0,5,8,9,11,12', '2,3');

//mm_hideTabs('settings, access', '2');
