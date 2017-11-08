/**
 * contact-form-report
 *
 * шаблон письма формы в модальном окне
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<p>Имя: [+name.value+]</p>
<p>Телефон: [+phone.value+]</p>
<p>Сообщение: [+message:strip_tags:nl2br+]</p>
[+file.value+]
[+attachments.value+]