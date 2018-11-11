/**
 * review-form
 *
 * форма Отзыва
 *
 * @category	chunk
 * @internal @modx_category Отзывы
 */
<div class="row">
	<div class="col-lg-6 col-md-8 col-sm-10 col-12 ml-auto mr-auto">
		<!-- ******************************************* -->
		<div class="jot-form-wrap">
			<div class="center">
				<a name="jf[+jot.link.id+]"></a>
				<h2 class="jot-reply-title reviews__title">[+form.edit:is=`1`:then=`Изменить отзыв`:else=`Оставить отзыв`+]</h2>
				[+form.error:isnt=`0`:then=`
				<div class="jot-err">
					[+form.error:select=`
					&-3=Вы пытаетесь отправить одно и то же сообщение. Возможно вы нажали кнопку отправки более одного раза.
					&-2=Ваше сообщение было отклонено.
					&-1=Ваше сообщение сохранёно, оно будет опубликовано после просмотра администратором.
					&1=Вы пытаетесь отправить одно и то же сообщение. Возможно вы нажали кнопку отправки более одного раза.
					&2=Вы ввели неправильный защитный код.
					&3=Вы можете отправлять сообщения не чаще [+jot.postdelay+] секунд.
					&4=Ваше сообщение было отклонено.
					&5=[+form.errormsg:ifempty=`Вы не заполнили все требуемые поля`+]
					`+]
				</div>
				`:strip+]
				[+form.confirm:isnt=`0`:then=`
				<div class="jot-cfm reviews__confirm">
					[+form.confirm:select=`
					&1=Ваше сообщение опубликовано.
					&2=Ваше сообщение сохранёно, оно будет опубликовано после просмотра администратором.
					&3=Сообщение сохранено.
					`+]
				</div>
				`:strip+]
			</div>

			<form method="post" action="[+form.action:esc+]#jf[+jot.link.id+]" class="jot-form reviews__form" id="feedback-form">
				<input name="JotForm" type="hidden" value="[+jot.id+]" />
				<input name="JotNow" type="hidden" value="[+jot.seed+]" />
				<input name="parent" type="hidden" value="[+form.field.parent+]" />
				<div class="reviews__form_input">

					<div class="jot-edit-comment-header">


						[+form.moderation:is=`1`:then=`
						<div class="jot-info col-12">
							<b>Создан:</b> [+form.field.createdon:date=`%d %b %Y в %H:%M`+]<br />
							<b>Автор:</b> [+form.field.createdby:userinfo=`username`:ifempty=`[+jot.guestname+]`+]<br />
							<b>IP:</b> [+form.field.secip+]<br />
							<b>Опубликовано:</b> [+form.field.published:select=`0=Нет&1=Да`+]<br />
							[+form.field.publishedon:gt=`0`:then=`
							<b>Дата публикации:</b> [+form.field.publishedon:date=`%d %b %Y в %H:%M`+]<br />
							<b>Опубликовал:</b> [+form.field.publishedby:userinfo=`username`:ifempty=` - `+]<br />
							`+]
							[+form.field.editedon:gt=`0`:then=`
							<b>Дата изменения:</b> [+form.field.editedon:date=`%d %b %Y в %H:%M`+]<br />
							<b>Редактировал:</b> [+form.field.editedby:userinfo=`username`:ifempty=` -`+]<br />
							`+]
						</div>
						`:strip+]

						[+form.guest:is=`1`:then=`
						<div class="jot-controls jot-inputs row">
							<div class="col-sm-12 col-md-6">

								<div class="jot-input-prepend">
									<input class="reviews__form_control" 
										   tabindex="[+jot.seed:math=`?+1`+]" 
										   name="name" type="text" 
										   value="[+form.field.custom.name:esc+]" 
										   placeholder="Ваше имя" 
										   title="Ваше имя">
								</div>
							</div>
							<div class="col-sm-12 col-md-6">

								<div class="jot-input-prepend">

									<input class="reviews__form_control" 
										   tabindex="[+jot.seed:math=`?+2`+]" 
										   name="email" type="email" 
										   value="[+form.field.custom.email:esc+]" 
										   placeholder="Email (не публикуется)" 
										   title="Email (не публикуется)">
								</div>
							</div>
						</div>
						`+]	

						<div class="jot-controls">
							<textarea tabindex="[+jot.seed:math=`?+4`+]" name="content" cols="50" rows="6" placeholder="Введите отзыв...">
								[+form.field.content:esc+]
							</textarea>
						</div>

					</div>



					[+jot.captcha:is=`1`:then=`
					<div class="jot-controls jot-captcha-wrapper">
						<a href="[+jot.link.current:esc+]" 
						   onclick="onclick=document.captcha.src=src+'?rand='+Math.random(); return false;" 
						   title="Если код не читается, нажмите сюда, чтобы сгенерировать новый" 
						   class="float-left">
							<img src="[(base_url)]manager/includes/veriword.php?rand=[+jot.seed+]" 
								 name="captcha" 
								 class="jot-captcha" 
								 width="148" height="60" alt="" />
						</a>
						<br />
						<div class="jot-captcha-field">
							<label for="vericode-[+jot.link.id+]">Код:</label>
							<input type="text" name="vericode" id="vericode-[+jot.link.id+]" size="20">
						</div>
					</div>
					`+]
					
					<div class="col-md-12">
						<div class="jot-form-actions">
							
							<button tabindex="[+jot.seed:math=`?+5`+]" 
									class="reviews__btn button" 
									type="submit">
								[+form.edit:is=`1`:then=`Сохранить`:else=`Отправить`+]
							</button>
							
							[+form.edit:is=`1`:then=`
							<button tabindex="[+jot.seed:math=`?+6`+]" 
									class="jot-btn jot-btn-cancel" 
									onclick="history.go(-1);return false;">
								Отмена
							</button>`+]
							
						</div>	
					</div>
				</div>	
			</form>

		</div>

		<!-- ******************************************* -->				
	</div>
</div>
