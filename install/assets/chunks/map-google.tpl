/**
 * map-google
 *
 * Код карты для страницы Контактов
 *
 * @category	chunk
 * @internal @modx_category Vendors
 */
        <section class="map">

            <div id="map"></div>
            <script>
              function initMap() {
                var style = [{"featureType":"all","stylers":[{"saturation":0},{"hue":"#28253a"}]},{"featureType":"road","stylers":[{"saturation":-70}]},{"featureType":"transit","stylers":[{"visibility":"off"}]},{"featureType":"poi","stylers":[{"visibility":"off"}]},{"featureType":"water","stylers":[{"visibility":"simplified"},{"saturation":-60}]}];
                var centerPoint = [(map-coordinates)];

                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 17,
                  center: centerPoint,
                  styles: style
                });
                var marker = new google.maps.Marker({
                  position: centerPoint,
                  icon:'assets/images/logo.png',
                  map: map
                });
              }
            </script>
            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=[*map-api*]&callback=initMap">
            </script>


        </section>
