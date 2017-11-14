/**
 * form-callback-template
 *
 * форма заказа обратного звонка
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<div class="reveal callback-form" id="callbackFormReveal" data-reveal>
    <!-- Close button -->
    <button class="callback-form__close" aria-label="Закрыть форму обратной связи" type="button" data-close><div class="close-icon"></div></button>
	<div class="callback-form__wrapper">
		


    <form class="callback-form__form" method="post" action="[~[*id*]~]" id="callbackForm">
        <input type="hidden" value="callbackForm" name="formid">
            <div class="callback-form__group callback-form__description">
                Оставьте свой номер телефона, и мы перезвоним вам в ближайшее время.
            </div>
            <div class="callback-form__group  [+message.errorClass+] [+message.requiredClass+]">
                <label class="callback-form__label">Телефон:</label>
                <input class="callback-form__input" name="phone" type="tel" value="[+phone.value+]"  placeholder="+7 999 999 99 99" aria-describedby="нужно ввести номер телефона" required>
                <div class="callback-form__error-msg">[+phone.error+]</div>
            </div>
            <div class="callback-form__warning">
                Нажимая кнопку «Отправить», даю своё согласие на обработку моих персональных данных и согласие на получение информационных рассылок
            </div>
            <div class="cell small-12 text-center">
                <button type="submit" class="button callback-form__button">Заказать звонок</button>
            </div>
    </form>
	</div>	

</div>