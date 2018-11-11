/**
 * form-subscribe-template
 *
 * шаблон формы подписки
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<section class="form-wrap">
	<form class="form reviews__form" method="post" action="[~[*id*]~]" id="subscribeForm">

		<input type="hidden" value="subscribeForm" name="formid">

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
					<div class="form-group [+email.errorClass+] [+email.requiredClass+]">
						<input class="form-control" name="email" type="email" value="[+email.value+]"  placeholder="E-mail" required>
						<div>[+email.error+]</div>
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