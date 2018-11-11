/**
 * form-room-template
 *
 * форма на странице Номера
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<section class="form-wrap">
	<form class="form" method="post" action="[~[*id*]~]" id="roomForm">
		
		<input type="hidden" value="roomForm" name="formid">

		<input type="hidden" value="[+hotel.value+]"        name="hotel">
		<input type="hidden" value="[+room-title.value+]"   name="room-title">
		<input type="hidden" value="[+pageID.value+]"       name="pageID">

		<div class="form-inner">
			
			<div class="row">
				<div class="col-12">
					<div class="form-messages">
						[+form.messages+]
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="date-in" class="">Дата заезда</label>
					<input name="date-in" id="dateInRoomForm" type="text" class="form-control" placeholder="">
				</div>
				<div class="col-12 col-md-6">
					<label for="date-out" class="">Дата отьезда</label>
					<input name="date-out" id="dateOutRoomForm" type="text" class="form-control" placeholder="">
				</div>
			</div>

			<div class="row">

				<div class="col-12 col-md-6">
					<label for="human" class="">Взрослые</label> 
					<div class="jq-number">
						<div class="jq-number__field">
							<input type="number" class="input-text text" value="1" name="human" id="human" min="1" step="1" max="20">
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6">
					<label for="human__small" class="">Дети</label>
					<div class="jq-number">
						<div class="jq-number__field">
							<input type="number" class="input-text text" value="0" name="human__small" id="human__small" min="0" step="1" max="20">
						</div>
					</div>
				</div>

			</div>


			<div class="row">

				<div class="col-12">
					<div class="form-group [+name.errorClass+] [+name.requiredClass+]">
						<label for="name">Ваше имя: </label>
						<input class="form-control" name="name" type="text" value="[+name.value+]" required>
						<div>[+name.error+]</div>
					</div>
				</div>

			</div>
			<div class="row">

				<div class="col-12 col-md-6">
					<div class="form-group [+email.errorClass+] [+email.requiredClass+]">
						<label for="email">Email:</label>
						<input class="form-control" name="email" type="email" value="[+email.value+]" required>
						<div>[+email.error+]</div>
					</div>
				</div>

				<div class="col-12 col-md-6">
					<div class="form-group [+phone.errorClass+] [+phone.requiredClass+]">
						<label for="phone">Телефон:</label>
						<input class="form-control" name="phone" type="tel" value="[+phone.value+]" required>
						<div>[+phone.error+]</div>
					</div>
				</div>

			</div>


			<div class="row">

				<div class="col-12">
					<div class="form-group [+message.errorClass+] [+message.requiredClass+]">
						<label for="message">Сообщение:</label>
						<textarea class="form-control" name="message">[+message.value+]</textarea>
						<div>[+message.error+]</div>
					</div>
				</div>

			</div>
			
		</div>
		
		<div class="row">

			<div class="col-12">
				<button type="submit" class="form-button button btn form-group__btn">Забронировать</button>
				<div class="form-warning">
					Нажимая кнопку «Забронировать», даю своё согласие на обработку моих персональных данных.
				</div>
			</div>

		</div>
	</form>
</section>