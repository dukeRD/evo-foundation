/**
 * map-google
 *
 * Код карты для страницы Контактов
 *
 * @category	chunk
 * @internal @modx_category Vendors
 */
        <section class="contacts__map">

            <div id="map"></div>
            <script>
              function initMap() {
                var style = [{"featureType":"all","stylers":[{"saturation":0},{"hue":"#28253a"}]},{"featureType":"road","stylers":[{"saturation":-70}]},{"featureType":"transit","stylers":[{"visibility":"off"}]},{"featureType":"poi","stylers":[{"visibility":"off"}]},{"featureType":"water","stylers":[{"visibility":"simplified"},{"saturation":-60}]}];
                var uluru = {[*map-coordinates*]};

                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 17,
                  center: uluru,
                  styles: style
                });
                var marker = new google.maps.Marker({
                  position: uluru,
                  icon:'[*map-image*]',
                  map: map
                });
              }
            </script>
            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=[*map-api*]&callback=initMap">
            </script>


        </section>
        <div class="contact-address-wrap">
            <address class="contacts-address">
                <h4>Адрес:</h4>
                <p>[*contact-address*]</p>
                <h4>Телефон:</h4>
                <p>[*contact-phone*]</p>
                <h4>Почта:</h4>
                <p>[*contact-email*]</p>

            </address>

        </div>