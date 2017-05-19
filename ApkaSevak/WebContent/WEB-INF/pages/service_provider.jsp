<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<!DOCTYPE html>
<html>
<head>
<!-- <style type="text/css">
 /* html {
	height: 100%
}

body {
	height: 100%;
	margin: 0;
	padding: 0
}

#map_canvas {
	height: 100%
}  */
</style> -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false">
</script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">

	var map; 
	function initialize() {
		var curLat = "${latitude}";
		var curLng = "${longitude}";
		var myOptions = {
			center : new google.maps.LatLng(curLat, curLng),
			zoom :16,
			mapTypeId : google.maps.MapTypeId.ROADMAP,
			//disableDefaultUI : true

		};

		map= new google.maps.Map(document.getElementById("default"),myOptions);
		
		map.addListener('bounds_changed', function() {
			//console.log('bounds-boundary:'+map.getBounds());
			if(map.getBounds==='undefined') 
			{
				return;
			}
			setServiceProvider(constructRequest(map.getBounds()));
			});
				
	 }
	
	function constructRequest(boundary){
		var northEastLngLat=boundary.getNorthEast();
		var southWestLngLat=boundary.getSouthWest();
		var serviceProviderRequest=new Object();
		serviceProviderRequest.northEastLatitude=northEastLngLat.lat();
		serviceProviderRequest.northEastLongitude=northEastLngLat.lng();
		serviceProviderRequest.southWestLongitude=southWestLngLat.lng();
		serviceProviderRequest.southWestLatitude=southWestLngLat.lat();
		serviceProviderRequest.serviceTypeId="${type}";
		return serviceProviderRequest;
	}
	function setServiceProvider(serviceProviderRequest)
	{
		$.ajax({
			url:'getServiceProvidersLocations',
			type:'POST',
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify(serviceProviderRequest),
			success:function(res){
				//console.log('Response:'+res);
				setMarkers(res);
			}
		});	
		
	}

	function setMarkers(locations) {

		var i=0;
		if(locations.length==0){
			return;
		}
		//var bounds = new google.maps.LatLngBounds();
		var minLat=parseFloat(locations[i].latitude);
		var maxLat=parseFloat(locations[i].latitude);
		var minLng=parseFloat(locations[i].longitude);
		var maxLng=parseFloat(locations[i].longitude);
		
//		map.clearOverlays();
		
		for (i = 0; i < locations.length; i++) {
			 
				var lat = parseFloat(locations[i].latitude);
				var longit = parseFloat(locations[i].longitude);
				var latlngset = new google.maps.LatLng(lat, longit);
				//console.log('console providerid-'+location.serviceProviderId);
				var marker = new google.maps.Marker({
					map : map,
					title : "Cobbler",
					position : latlngset,
					data:locations[i].serviceProviderId
				});
				if(minLat>lat){
					minLat=lat;
				}
				if(maxLat<lat){
					maxLat=lat;
				}
				if(minLng>longit){
					minLng=longit;
				}
				if(maxLng<longit){
					maxLng=longit;
				}
				
				marker.addListener('click', function() { getContactDetails ( this.data ) });
			
		}
		var lowerLeft=new google.maps.LatLng(minLat, minLng);
		var upperRight=new google.maps.LatLng(maxLat, maxLng);
//		map.fitToBounds(new google.maps.LatLngBounds(lowerLeft,upperRight));
		
	}
	
	function onEnter(e)
	{
		var code = (e.keyCode ? e.keyCode : e.which);
	    if (code == 13) 
	    {
	    	
	        FindLocaiton();

	   		return false;
	    }
	}

	function Button1_onclick() {
	       FindLocaiton();
    }
	
	function FindLocaiton() {
        geocoder = new google.maps.Geocoder();

        var address = document.getElementById("addressinput").value;

        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
            }
            else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });

    }
	
	function getContactDetails(id) {
        document.getElementById('sp_id').value=id;

        document.getElementById("user_detail_id").submit();
}
	
	function addNewProvider()
	{
		document.getElementById("new_user_detail_id").submit();
	}
</script>
</head>
<body onload="initialize()">
	<div class="header col-lg-12 col-md-12 col-sm-12 col-xs-12"
		style="background: #fff;">
		<div class="row">
			<div class="col-lg-1 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
				<a href="home"><img src="styles/products1/images/AS_logo.png" /></a>
			</div>
			
				
        	
            <div class="col-lg-1 col-md-1 pdl0 col-sm-1 col-xs-4 text-right-xs pull-right-xs pull-right   mt-xs-20">
              	<a id="oldHomePage" href="#" title="Go back to the Old Portal"><i class="fa fa-home logout" style="font-size: 25px;"></i></a>
              	<a id="logout" onclick="logout();" href="#" title="Sign out"><i class="fa fa-power-off logout" style="margin-left: 10px;"></i></a>
              </div>
            <div class="col-lg-7 col-md-8 col-sm-8 col-xs-8  pull-right">
                  <ul id="nav" class="nav nav-pills pull-right menu hidden-xs">
                  <div class="row">
           	 	<!-- <img border="none" src="styles/products1/images/whiteline.png" width="100%" height="10px"/> -->
           	 	<div><p style="font-size: 1px;">&nbsp;</p></div>
           	 	</div>
                  <div style="vertical-align: middle;display: inline-block;min-height:30px; "><img src="${image}" width="50px" height="50px" /></div>
                  <div style="vertical-align: middle;display: inline-block;min-height:30px; "><span style="font-size: 25px;">&nbsp;${name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
                  <div style="vertical-align: middle;display: inline-block;min-height:30px;"><input type="text" class="form-control " id="addressinput"
						onkeypress="onEnter(event)"
						onfocus="if (this.value == 'Search for Area, City') {this.value = '';}"
						onblur="if (this.value =='') {this.value = 'Search for Area, City';}"
						value="Search for Area, City" /></div>
                  <div style="vertical-align: middle;display: inline-block;min-height:30px; margin-top: 10px"><span style="max-height:100px !important;" class="none" onclick="Button1_onclick()"
						style="cursor: pointer"><img
						src="styles/products1/images/search-icon.png" />
						<a href="home"><img src="styles/products1/images/home.png" /></a>
						<img onclick="addNewProvider();" src="styles/products1/images/addservice.png" /></span>
						</div>
                </ul>
                
            </div>
           	 	
				
			
		</div>
		<div class="row">
           	 	<img src="styles/products1/images/line.png" width="100%" height="10px"/>
           	 	</div>
           	 	<div class="row"><p>&nbsp;</p></div>
</div>

			<div  style="width:90%; margin-left:5%; height:70%; border:5px solid; border-color:#ddd;" id="default"  class="mt10"></div>


	<form:form action="contactDetails" modelAttribute="userCurrentLocation" id="user_detail_id" method="POST">
			<form:hidden path="imageURL" id="imageURL_id" value="${image}"/>
			<form:hidden path="type" id="type_id" value="${type}"/>
			<form:hidden path="service_name" id="service_name_id" value="${name}"/>
			<form:hidden path="sp_id" id="sp_id"/>
		
		</form:form>
		
		<form:form action="addserviceprovider" modelAttribute="userCurrentLocation" id="new_user_detail_id" method="POST">
			<form:hidden path="imageURL" id="imageURL_id" value="${image}"/>
			<form:hidden path="type" id="type_id" value="${type}"/>
			<form:hidden path="service_name" id="service_name_id" value="${name}"/>
		</form:form>

		<input type="hidden" value="${ProviderList}" id="locations"
			name="locations"></input>

	

</body>
</html>