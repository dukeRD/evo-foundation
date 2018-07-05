/**
 * form-default-template
 *
 * форма
 *
 * @category	chunk
 * @internal @modx_category Forms
 */

<form class="" method="post" action="[~[*id*]~]" id="defaultForm">
    <input type="hidden" value="defaultForm" name="formid">

    <div class="form-group [+name.errorClass+] [+name.requiredClass+]">
        <label for="name">Ваше имя: </label>
        <input name="name" type="text" value="[+name.value+]">
        <div>[+name.error+]</div>
    </div>

    <div class="form-group [+email.errorClass+] [+email.requiredClass+]">
        <label for="email">Email:</label>
        <input name="email" type="email" value="[+email.value+]">
        <div>[+email.error+]</div>
    </div>

    <div class="form-group [+phone.errorClass+] [+phone.requiredClass+]">
        <label for="phone">Телефон:</label>
        <input name="phone" type="tel" value="[+phone.value+]">
        <div>[+phone.error+]</div>
    </div>

    <div class="form-group [+message.errorClass+] [+message.requiredClass+]">
        <label    for="message">Сообщение:</label>
        <textarea name="message">[+message.value+]</textarea>
        <div>[+message.error+]</div>
    </div>

    <button type="submit" class="form-button button btn">Уточнить цену</button>

    <div class="form-warning">
        Нажимая кнопку «Отправить», даю своё согласие на обработку моих персональных данных и согласие на получение информационных и рекламных рассылок
    </div>
</form>