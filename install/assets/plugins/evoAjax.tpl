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
 * @internal @properties {}
 */
$email = $modx->config['cfg_contact-forms-email'];
switch($_GET['q']){     
	case 'feedbackform':
		echo $modx->runSnippet('FormLister', array(
			'formid' => 'FeedbackForm',
			'to' => $email,
			'config'=>'feedback'
			));
			die();
        break;
	case 'contactform':
		echo $modx->runSnippet('FormLister', array(
			'formid' => 'ContactForm',
			'to' => $email,
			'config'=>'contact',
			'debug'=>1
			));
			die();
        break;
}