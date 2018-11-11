/**
 * map-yandex
 *
 * Яндекс карты
 *
 * @category	chunk
 * @internal @modx_category Контакты
 */
<script src="https://api-maps.yandex.ru/2.1/?lang=ru"></script>

<script defer>
	ymaps.ready(init);
	var myMap;

	function init(){
		// координаты центра берём у Арли
		var center     = '[(client-map-coordinates)]'.split(',');


		myMap = new ymaps.Map("map", {
			center: center,
			zoom: + [(client-map-zoom)]
		});



			var placemark = new ymaps.Placemark(center, {
				hintContent: 'hotel.title',
				balloonContent:  '<h5>'+'hotel.title'+'</h5><address class="map-address">' + hotel.address + '</address>',

			}, {
				iconLayout: 'default#image',
				iconImageHref: 'tpl/img/map-baloon.png',
				iconImageSize: [40, 50],
				iconImageOffset: [-19, -38]
			});

			myMap.geoObjects.add(placemark);




		// var over    = document.querySelector('.map-overlay');
		// var	map_div = document.getElementById('map');

		// over.addEventListener('click', function(){
		// 	this.style.display = 'none';
		// 	map_div.classList.remove('grayscale');
		// });
	}


</script>
