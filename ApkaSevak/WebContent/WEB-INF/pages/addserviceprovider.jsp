<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html  lang="en">
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="styles/products1/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"	src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>


<title>New Service Provider Details</title>
<script type="text/javascript">
function setType(type)
	{
	if(type == 1)
		type = "Cobbler";
	if(type == 2)
		type  = "Maid";
	if(type == 3)
		type  = "Sewage Worker";
	if(type == 4)
		type  = "Ironer";
	if(type == 5)
		type  = "Launderer";
	if(type == 6)
		type  = "Tailor";
	if(type == 7)
		type  = "Key Maker";
	if(type == 8)
		type  = "Gardener";
	if(type == 9)
		type  = "Mason";
	if(type == 10)
		type  = "Carpenter";
	if(type == 11)
		type  = "Garbage Collector";
	if(type == 12)
		type  = "Plumber";
	if(type == 13)
		type  = "Electrician";
	}

	var map;
	var marker;
	function initialize() {
	    var myLatlng = new google.maps.LatLng(13.0090,80.19748);
	    var myOptions = {
	        zoom:7,
	        center: myLatlng,
	        mapTypeId: google.maps.MapTypeId.ROADMAP
	    }
	    map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
	    // marker refers to a global variable
	    /* marker = new google.maps.Marker({
	        position: myLatlng,
	        map: map
	    }); */
	   google.maps.event.addListener(map, "click", function(event) {
	        // get lat/lon of click
	        var clickLat = event.latLng.lat();
	        var clickLon = event.latLng.lng();

	        // show in input box
	        document.getElementById("latitude").value = clickLat;
	        document.getElementById("longitude").value = clickLon;

	           marker = new google.maps.Marker({
	                position: new google.maps.LatLng(clickLat,clickLon),
	                map: map
	             });
	    });  
	}  
	
</script>	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script>
	
	function submitDetails() {
		
		if(document.getElementById("latitude").value == "Latitude" || document.getElementById("latitude").value == "" )
			 {
			 	alert("Please select a location from map");
			 	document.getElementById("latitude").focus();
		 		return false;
			 }
	    
		 var val = document.getElementById("mobileNo").value;
		 if (/^\d{10}$/.test(val)) {
		     // value is ok, use it
		 } else {
		     alert("Invalid number; must be ten digits");
		     document.getElementById("mobileNo").focus();
		     return false
		 }
		
		var details = new Object();
		details.serviceProviderId = $('#sp_id').val();
		details.name = $('#sp_name').val();
		details.mobileNo = $('#mobileNo').val();
		details.address1 = $('#address1').val();
		details.added_by_name = $('#added_by_name').val();
		details.added_by_mobile = $('#added_by_mobile').val();
		details.aadhaarId =  $('#aadhaarId').val();
		details.status =  $('#status').val();
		details.comment =  $('#comment').val();
		details.rating =  $('#rating').val();
		/* details.type =  $('#sp_id').val(); */
		details.latitude =  $('#latitude').val();
		details.longitude =  $('#longitude').val(); 
		$.ajax({
			url : 'addnewserviceprovider',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(details),
			success : function(result) {
				alert(result);
				$('#Button').prop('disabled', true);
				}
		});
	}
	
</script>
</head>
<body  onload="setType(${type});initialize();">
	
	<div class="header col-lg-12 col-md-12 col-sm-12 col-xs-12"
		style="background: #fff;">
		<div class="row">
			<div class="col-lg-1 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
				<a href="home"><img src="styles/products1/images/AS_logo.png" /></a>
			</div>
			<div class="col-lg-7 col-md-8 col-sm-8 col-xs-8  pull-right">
				<ul id="nav" class="nav nav-pills pull-right menu hidden-xs">
					<div class="row">
						<!-- <img border="none" src="styles/products1/images/whiteline.png" width="100%" height="10px"/> -->
						<div>
							<p style="font-size: 1px;">&nbsp;</p>
						</div>
					</div>
					<div
						style="vertical-align: middle; display: inline-block; min-height: 30px;">
						<img src="${image}" width="50px" height="50px" />
					</div>
					<div
						style="vertical-align: middle; display: inline-block; min-height: 30px;">
						<span style="font-size: 25px;">&nbsp;${name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					</div>
					<div
						style="vertical-align: middle; display: inline-block; min-height: 30px; margin-top: 10px">
						<a href="home"><img src="styles/products1/images/home.png" /></a>
						</span>
					</div>
				</ul>

			</div>



		</div>
		<div class="row">
			<img src="styles/products1/images/line.png" width="100%"
				height="10px" />
		</div>
		<div class="row">
			<p>&nbsp;</p>
		</div>
	</div>
	<div>
	${sp}
	</div>
		<div class="jumbotron vertical-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-3 col-sm-3 col-xs-3 col-xs-3">
						<div class="panel panel-primary" style="margin-left: -50px;">
							<div class="panel-heading">${name}- Details</div>
							<div class="panel-body">
								<div clss="container">
									<div class="row" style="background-color: #D8D8D8;">
									<input type="hidden" name="sp_id" id="sp_id"
											value="${type}">
											<input type="hidden" name="rating" id="rating"
											value="0">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Name </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="sp_name" id="sp_name">

										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Address 1 </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<textarea rows="3" cols="25" id="address1" value=""></textarea>
										</div>
									</div>
									<div>&nbsp;</div>
									
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Mobile No </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="mobileNo" id="mobileNo">
										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Aadhaar ID </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="aadhaarId" id="aadhaarId">
										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Status</div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<select id="status" name="status">
												<option value="Active">Active</option>
												<option value="Inactive">Inactive</option>
											</select>
										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Added By (Name)</div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="added_by_name" id="added_by_name">
										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Added By (Mobile) </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="added_by_mobile"
												id="added_by_mobile">
										</div>
									</div>
									<div>&nbsp;</div>
									<div class="row" style="background-color: #D8D8D8;">
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Comments </div>
										<div
											class="col-lg-9 col-md-9 col-sm-9 col-xs-9 col-xs-9 pull-right">
											<input type="text" value="" name="comment" id="comment">
										</div>
									</div>
									<div style="margin-left: 150px;" ><input id="submit_button" type="button" value="submit" onclick="submitDetails();"></div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-8 col-md-6 col-sm-6 col-xs-6 col-xs-6 ">
								 <div style="vertical-align: middle;display: inline-block;min-height:30px;"><input type="text" class="form-control " id="latitude"
						onkeypress="onEnter(event)"
						onfocus="if (this.value == 'Latitude') {this.value = '';}"
						onblur="if (this.value =='') {this.value = 'Latitude';}"
						value="Latitude" /></div>
						<div style="vertical-align: middle;display: inline-block;min-height:30px;"><input type="text" class="form-control " id="longitude"
						onkeypress="onEnter(event)"
						onfocus="if (this.value == 'Longitude') {this.value = '';}"
						onblur="if (this.value =='') {this.value = 'Longitude';}"
						value="Longitude" /></div>
								<!-- <div clss="container"> -->
									<!-- <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
											Latitude 
									</div>
									<div>
										<input type="text" value="" name="latitude" id="latitude">
									</div> -->
									
									<div id="googleMap" style="width: 800px; height: 480px;"></div>

									
								<!-- </div> -->
							
						
					</div>
					
				</div>
			</div>
		</div>

	
</body>
</html>