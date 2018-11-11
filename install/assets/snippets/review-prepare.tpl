/**
 * review-prepare
 *
 * подготавливает вывод комментариев в Review
 *
 * @category	snippet
 * @internal	@modx_category Отзывы
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/**
 * review-prepare
 *
 * подготавливает вывод комментариев с помощью DocLister
 *
 * @category	snippet
 * @internal	@modx_category Отзывы
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

$author = $data['createdby'];
if ($author != 0){
	$author = $modx->getUserInfo($author);
	$author = $author['fullname'] != '' ? $author['fullname'] : $author['username'];
} else{
	$table   = $modx->getFullTableName('jot_fields');   
    $result  = $modx->db->select( '*', $table, 'id='.$data['id'], '', '' );
	while( $row = $modx->db->getRow( $result ) ) {  
		if($row['label'] == 'name'){
			$author = $row['content'];
		}
    }  
}
$data['createdby'] = $author;

$data['createdon'] = date('d.m.Y', $data['createdon']);


	
return $data;