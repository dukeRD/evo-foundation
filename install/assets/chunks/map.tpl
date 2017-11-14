/**
 * map
 *
 * вызов карты Google
 *
 * @category	chunk
 * @internal @modx_category Vendors
 */
<section class="map">
    <div id="map"></div>
    <script>
    function initMap() {
        var style = [{ "featureType": "all", "stylers": [{ "saturation": 0 }, { "hue": "#28253a" }] }, { "featureType": "road", "stylers": [{ "saturation": -70 }] }, { "featureType": "transit", "stylers": [{ "visibility": "off" }] }, { "featureType": "poi", "stylers": [{ "visibility": "off" }] }, { "featureType": "water", "stylers": [{ "visibility": "simplified" }, { "saturation": -60 }] }];
        var uluru = { [(cfg_contact-map-coordinates)] };
		var info = '<div class="map-address"> <div class="map-address__title">Адрес</div> <div class="map-address__value">[(cfg_contact-address)]</div> <div class="map-address__title">Телефон</div> <div class="map-address__value">[(cfg_contact-phone)]</div> <div class="map-address__title">Почта</div> <div class="map-address__value">[(cfg_contact-email)]</div> </div>';
		
		var infowindow = new google.maps.InfoWindow({
			content: info
	  	});

        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 17,
            center: uluru,
            styles: style
        });
        var marker = new google.maps.Marker({
            position: uluru,
            map: map,
			title: 'oho studio'
        });
		
		//marker.addListener('click', function() {
			infowindow.open(map, marker);
		//});
    }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAD_FjuMV5OsKUCt1WaebFI11kBuUBhQgM&callback=initMap">
    </script>
	<style>
		.map-address {position: static;right: none;top: none;}
	</style>

</section>

