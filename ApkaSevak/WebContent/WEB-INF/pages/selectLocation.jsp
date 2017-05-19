<!DOCTYPE html>
<html>
<head>
<!-- <script
src="http://maps.googleapis.com/maps/api/js">
</script> -->
<script src="https://maps.googleapis.com/maps/api/js?key=123456ABCDEFG&sensor=false"></script> 
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

<script>
var map, marker;
function initialize() {
    var myLatlng = new google.maps.LatLng(24.18061975930,79.36565089010);
    var myOptions = {
        zoom:7,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
    // marker refers to a global variable
    marker = new google.maps.Marker({
        position: myLatlng,
        map: map
    });

    google.maps.event.addListener(map, "click", function(event) {
        // get lat/lon of click
        var clickLat = event.latLng.lat();
        var clickLon = event.latLng.lng();

        // show in input box
        document.getElementById("lat").value = clickLat.toFixed(5);
        document.getElementById("lon").value = clickLon.toFixed(5);

          var marker = new google.maps.Marker({
                position: new google.maps.LatLng(clickLat,clickLon),
                map: map
             });
    });
}   
google.maps.event.addDomListener(window, 'load', initialize);

function submit()
{
	window.location.replace("${pageContext.request.contextPath}/selectedLocation?latitude=" + document.getElementById("lat").value + "&longitude=" + document.getElementById("lon").value );
	//document.getElementById("selected_loc_id").submit();
}
</script>
</head>

<body>
<div id="googleMap" style="width:500px;height:380px;"></div>
<!-- <form:form action="service_provider"  id="selected_loc_id" method="POST">
		
			<form:hidden path="longitude" id="longitude_id"/>
			<form:hidden path="latitude" id="latitude_id"/>
</form:form> -->
<input type="hidden" id='lat'>
<input type="hidden" id='lon'>
<div><input type="button" onclick="submit();"</div>

</body>
</html>