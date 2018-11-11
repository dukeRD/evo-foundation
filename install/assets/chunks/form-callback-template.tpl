/**
 * form-callback-template
 *
 * шаблон формы обратного звонка
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<section class="form-wrap">
	<form class="form reviews__form" method="post" action="[~[*id*]~]" id="callbackForm">

		<input type="hidden" value="callbackForm" name="formid">

		<div class="form-inner">

			<div class="row">
				<div class="col-12">
					<div class="form-messages">
						[+form.messages+]
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-6">
					<div class="form-group [+name.errorClass+] [+name.requiredClass+]">

						<input class="form-control" name="name" type="text" value="[+name.value+]"  placeholder="Имя" required>
						<div>[+name.error+]</div>
					</div>
				</div>
				<div class="col-6">
					<div class="form-group [+phone.errorClass+] [+phone.requiredClass+]">
						<input class="form-control" name="phone" type="phone" value="[+phone.value+]"  placeholder="Телефон" required>
						<div>[+phone.error+]</div>
					</div>
				</div>

			</div>

		</div>

		<div class="row">	
			<div class="col-12">
				<button type="submit" class="restaurant__btn1 form-button button btn form-group__btn" >Подписаться</button>
			</div>
		</div>
	</form>
</section>