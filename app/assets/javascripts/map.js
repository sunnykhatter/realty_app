
$(document).ready(function() {

function initialize() {
var myVarsJSON = $("#property").html();
var property = JSON.parse(myVarsJSON.replace(/&quot;/g,'"'));
  var latitude = property.latitude;
  var longitude = property.longitude;
  var myLatlng = new google.maps.LatLng(latitude,longitude);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
  var map_options = {
          center: myLatlng,
          zoom: 16,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: property.address
  });

}
  google.maps.event.addDomListener(window, 'load', initialize);



});


