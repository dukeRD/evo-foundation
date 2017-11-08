/**
 * contact-form-template
 *
 * шаблон формы в модальном окне
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<div class="cnt-form__wrapper">
    <h3 class="cnt-form__header">Сделать заказ</h3>
    <p class="cnt-form__text">Мы свяжемся с Вами в ближайшее время</p>
    <form class="cnt-form__form" method="post" action="[~[*id*]~]" id="ContactForm"  enctype="multipart/form-data">
		<input type="hidden" name="formid" value="ContactForm">
        <div class="grid-x">
			<div class="callout">[+form.messages+]</div>
			<div class="cnt-form__group [+message.errorClass+] [+message.requiredClass+]">
            <label class="cnt-form__label">Ваше имя: </label>
            <input class="cnt-form__input" name="name" type="text" value="[+name.value+]">
			 <div class="cnt-form__error-msg">[+name.error+]</div>	
			</div>	
			<div class="cnt-form__group [+message.errorClass+] [+message.requiredClass+]">
            <label class="cnt-form__label">Телефон:</label>
            <input class="cnt-form__input" name="phone" type="tel" value="[+phone.value+]">
			 <div class="cnt-form__error-msg">[+phone.error+]</div>	
			</div>	
				
			<div class="cnt-form__group [+message.errorClass+] [+message.requiredClass+]">
            <label class="cnt-form__label">Сообщение:</label>
            <textarea class="cnt-form__input" name="message">[+message.value+]</textarea>
			 <div class="cnt-form__error-msg">[+message.error+]</div>	
			</div>	
				
            <div class="cnt-form__warning">
                Нажимая кнопку «Отправить», даю своё согласие на обработку моих персональных данных и согласие на получение информационных и рекламных рассылок
            </div>
            <div class="cell small-6 text-center">
                <button type="submit" class="button">Сделать заказ</button>
            </div>
            <div class="cell small-6 text-center [+message.errorClass+] [+message.requiredClass+]">
            		<div class="file-input-replace">Прикрепить
            			<input name="attachment" type="file">
            		</div>
				<div class="cnt-form__error-msg">[+attachment.error+]</div>
            </div>
        </div>
		
    </form>
</div>	