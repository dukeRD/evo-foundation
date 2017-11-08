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