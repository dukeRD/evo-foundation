/**
 * contact-form-call
 *
 * шаблон формы в модальном окне
 *
 * @category	chunk
 * @internal @modx_category Forms
 */
<div class="reveal cnt-form" id="contactForm" data-reveal>
    <!-- Close button -->
    <button class="cnt-form__close" aria-label="Закрыть форму обратной связи" type="button" data-close><div class="close-icon"></div></button>
<!-- **************************************	 -->
	[!FormLister?
	&formid=`ContactForm`
	&to=`[(cfg_contact-forms-email)]`
	&config=`contact`
	!]
	
<!-- **************************************	 -->
</div> <!-- /reveal -->

<!-- 
******************************************
<script>
// FORMS AJAX SUBMIT
		$(document).on('submit','#ContactForm',function(ev){
			var $frm = $('#ContactForm');
			var formData = false;
			if (window.FormData){
				formData = new FormData($frm[0]);
			}

			$.ajax({
				type: 'post',
				url: 'contactform',
				data: formData ? formData : $frm.serialize(),
				processData: false,
				contentType: false,
				success: function (data) {
					// console.log(data);
					$('.cnt-form__wrapper').empty();
					$('.cnt-form__wrapper').html( data );
				}
			});
			ev.preventDefault();
		});
// FORM AJAX
</script>
**********************************************
-->


