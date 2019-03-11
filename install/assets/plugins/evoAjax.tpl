/**
 * evoAjax
 *
 * отправка форм ajax'ом
 *
 * @category	plugins
 * @internal	@modx_category Forms
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events
 * @internal @installset base
 * @internal @properties
 */
/*
		ob_start();
		var_dump($_POST);
		$debug = ob_get_clean();
		$modx->logEvent('1','2', "<pre>".$debug."</pre>" ,'evoAjax POST '.$_POST['room-page']);
*/
$email = $modx->config['client_email'];

switch($_GET['q']){
	case 'roomform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'roomForm',
			'to'     => $email,
			'config' => 'room',
			'pageID' => $_POST['pageID']

		));
		die();
		break;

	case 'restaurantform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'restaurantForm',
			'to'     => $email,
			'config' => 'restaurant'
		));
		die();
		break;

	case 'subscribeform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'subscribeForm',
			'to'     => $email,
			'config' => 'subscribe'
		));
		die();
		break;

	case 'callbackform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'callbackForm',
			'to'     => $email,
			'config' => 'callback'
		));
		die();
		break;

	case 'offerform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'offerForm',
			'to'     => $email,
			'config' => 'offer',
			'pageID' => $_POST['pageID']

		));
		die();
		break;

	case 'vacancyform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'vacancyForm',
			'to'     => $email,
			'config' => 'vacancy',
			'title'  => $_POST['title']

		));
		die();
		break;

	case 'partnerform':

		echo $modx->runSnippet('FormLister', array(
			'formid' => 'partnerForm',
			'to'     => $email,
			'config' => 'partner',
			'pageID' => $_POST['pageID'],
			'title'  => $_POST['title']

		));
		die();
		break;
}


