<?php
include_once(MODX_BASE_PATH."assets/lib/MODxAPI/modResource.php");

$pages = Array(
	//pagetitle, alias,menuindex,image
	// ['','',,''],


	['Агентам и OTA',              'partners-agents',10,''],
	['Подрядчикам и поставщикам',  'partners-suplliers',20,''],
	['Собственникам и инвесторам', 'partners-investors',30,''],
	['Отельерам',                  'partners-hotel',40,'']
);

//*********************************************************************************************************************

$parent      = 7;
$template    = 17;
$content     = '<p><b>Страница на стадии заполнения...</b></p><p></p> <p></p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum voluptate, modi expedita magni explicabo. Laudantium accusamus ipsam reprehenderit quis unde. Beatae ducimus dolore repudiandae, quod maxime, tenetur blanditiis praesentium. Dicta!</p>';
// $description = 'описание страницы (для SEO)';
$introtext   = 'Это поле отображается при выводе страницы в каталогах.';


foreach ($pages as $page){
	$pagetitle = $page[0];
	$alias     = $page[1];
	$menuindex = $page[2];
	// $image     = 'tpl/img/bg-more.png';//$page[3];


	$doc = new modResource($modx);
	$doc->create(array(
		'parent'          =>  $parent,
	  'pagetitle'       =>  $pagetitle,
		'longtitle'       =>  'Полный заголовок для '.$pagetitle,
		'content'         =>  $content,
		// 'introtext'       =>  $introtext,
		// 'description'     =>  $description,
		// 'image'           =>  $image,
		'menuindex'       =>  $menuindex,
		'alias'           =>  $alias,
		'published'       =>  1,
		'hidemenu'        =>  0,
		'template'        =>  $template
	))->save();
}
