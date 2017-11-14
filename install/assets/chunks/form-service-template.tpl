/**
 * form-service-template
 *
 * форма уточнения деталей по услуге
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<div class="reveal service-form" id="serviceFormReveal" data-reveal>
     <!--Close button -->
    <button class="service-form__close" aria-label="Закрыть форму обратной связи" type="button" data-close>
        <div class="close-icon"></div>
    </button>
	<div class="service-form__wrapper">


    <form class="service-form__form" method="post" action="[~[*id*]~]" id="serviceForm">
        <input type="hidden" value="serviceForm" name="formid">

        <div class="grid-x">
            <div class="service-form__group [+message.errorClass+] [+message.requiredClass+]">
                <label class="service-form__label">Ваше имя: </label>
                <input class="service-form__input" name="name" type="text" value="[+name.value+]">
                <div class="service-form__error-msg">[+name.error+]</div>
            </div>
            <div class="service-form__group [+message.errorClass+] [+message.requiredClass+]">
                <label class="service-form__label">Email:</label>
                <input class="service-form__input" name="email" type="email" value="[+email.value+]">
                <div class="service-form__error-msg">[+email.error+]</div>
            </div>
            <div class="service-form__group [+message.errorClass+] [+message.requiredClass+]">
                <label class="service-form__label">Телефон:</label>
                <input class="service-form__input" name="phone" type="tel" value="[+phone.value+]">
                <div class="service-form__error-msg">[+phone.error+]</div>
            </div>
            <div class="service-form__group [+message.errorClass+] [+message.requiredClass+]">
                <label class="service-form__label">Сообщение:</label>
                <textarea class="service-form__input service-form__input--text" name="message">[+message.value+]</textarea>
                <div class="service-form__error-msg">[+message.error+]</div>
            </div>
            <div class="service-form__warning">
                Нажимая кнопку «Отправить», даю своё согласие на обработку моих персональных данных и согласие на получение информационных и рекламных рассылок
            </div>
            <div class="cell small-12 text-center">
                <button type="submit" class="button service-form__button">Уточнить цену</button>
            </div>
        </div>

    </form>
		
	</div>
</div>