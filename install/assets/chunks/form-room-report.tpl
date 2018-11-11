/**
 * form-room-report
 *
 * шаблон письма формы заказа номера со страницы номера
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<div>
	<p><strong>Поступила заявка на бронирование номера в отеле [+hotel.value+]</strong></p>
</div>

<h4>Контактные данные</h4>
<p>Имя: [+name.value+]</p>
<p>Email: <a href="mailto:[+email.value+]">[+email.value+]</a></p>
<p>Телефон: [+phone.value+]</p>
<p>Сообщение: [+message:strip_tags:nl2br+]</p>

<hr style="margin-bottom: 2rem;">


<h4>Данные номера</h4>
<p>Отель: [+hotel.value+]</p>
<p>Тип номера: [+room-title.value+]</p>
<p>Страница номера: [+url.value+]</p>

<hr style="margin-bottom: 2rem;">


<h4>Параметры заказа</h4>
<p>Дата заезда: [+date-in.value+]</p>
<p>Дата выезда: [+date-out.value+]</p>
<p>Взрослых: [+human.value+]</p>
<p>Детей: [+human__small.value+]</p>

<hr style="margin-bottom: 2rem;">
<p>Отправлено в [+form.date+]</p>

