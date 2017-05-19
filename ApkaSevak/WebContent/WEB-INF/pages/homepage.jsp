<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--This is the default landing page in live with the name : eslproducts-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no">
<title>Apka Sevak</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- <link rel="stylesheet" href="styles/products1/css/jquery.mobile.min.css" /> -->

<link href="styles/products1/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="styles/products1/css/animate.css">

<link href="styles/products1/css/jssor.css" rel="stylesheet" />
<link href="styles/products1/css/flip7.css" rel="stylesheet"
	type="text/css" />
<link href="styles/products1/css/style_products.css" rel="stylesheet"
	type="text/css" />
<link href="styles/products1/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<script language="JavaScript"
	src="http://www.geoplugin.net/javascript.gp" type="text/javascript"></script>
<!--[if lte IE 8]>
<link rel="stylesheet" type="text/css" href="css/style_IE.css" />
 <![endif]-->
<style>
.products h3 { /*     color: #0AAED4;
    margin-top: 5px;
    background-color: #fff;
     border: solid; */
	margin-left: -9px;
	width: 30%;
	padding-top: 25px;
	padding-bottom: 25px;
	font-weight: bold;
	border-radius: 8px;
	font-family: 'Segoe UI';
}

.fade-img {
	opacity: 0.3;
	/* background-color: #B0C4DE !important; */
}

.tile {
	-webkit-box-shadow: 10px 10px 5px -6px rgba(184, 178, 184, 1);
	-moz-box-shadow: 10px 10px 5px -6px rgba(184, 178, 184, 1);
	box-shadow: 10px 10px 5px -6px rgba(184, 178, 184, 1);
	margin-right: 6px;
	margin-bottom: 13px;
}
</style>

</head>

<body>

	<div class="wrapper products" style="overflow-y: hidden;">
		<div class="header col-lg-12 col-md-12 col-sm-12 col-xs-12"
			style="background: #fff;">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 col-xs-8 mt20">
					<img src="styles/products1/images/AS_logo.png" />
				</div>
			</div>
		</div>
		<div class="row">

			<div id="content_div"
				class="col-lg-9 col-md-9 col-sm-8 col-xs-8 mt20"
				style="margin-left: 150px;">

				<div class="row mt10">
					<ul class="tiles">

						<div class="clearfix">
							<a id="latlong" href="#"
								onclick="getLocation('1', 'styles/products1/images/Cobbler.png', 'Cobbler')">
								<input type=hidden id="image"
								value="styles/products1/images/Cobbler.png" />
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="cobbler">

										<img src="styles/products1/images/Cobbler.png" width="80"
											height="70" class="mt10" alt="Cobbler Services" /> <br /> <span>
											Cobbler </span>
									</div>

									<div class="green-bg">

										<span> Cobbler </span> <br />Performs repairs, polishing and
										restores footwear like chappal, shoe, etc.. <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('2', 'styles/products1/images/Maid.png', 'Maid')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="iaSrc">
										<img src="styles/products1/images/Maid.png" width="80"
											height="70" class="mt10" /> <br /> <span> Maid</span>
									</div>
									<div class="green-bg">
										<span>Maid </span> <br /> Provide a variety of household
										services like cleaning, washing, cooking, babysitting, etc. <br />
										<i class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('3', 'styles/products1/images/Sewage_Worker.png', 'Sewage Worker')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="cmSrc">
										<img src="styles/products1/images/Sewage_Worker.png"
											width="80" height="70" class="mt10" /> <br /> <span>Sewage
											Worker</span>
									</div>
									<div class="green-bg">
										<span>Sewage Worker</span> <br />Helps in repairing sewer
										pipes and clogged drains<br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>

									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('4', 'styles/products1/images/Ironer.png', 'Ironer')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="sedanSrc">
										<img src="styles/products1/images/Ironer.png" width="80"
											height="70" class="mt10" /> <br /> <span> Ironer </span>
									</div>
									<div class="green-bg">
										<span> Ironer </span> <br /> Irons out the wrinkled clothes
										and smoothen the fabric <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('5', 'styles/products1/images/Launder.png', 'Launderer')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="bicSrc">
										<img src="styles/products1/images/Launder.png" width="80"
											height="70" class="mt10" /> <br /> <span> Launderer</span>
									</div>
									<div class="green-bg">
										<span>Launderer  </span> <br /> Provides services of washing,
										dry cleaning and ironing your clothes  <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('6', 'styles/products1/images/Tailor.png', 'Tailor')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="obieeSrc">
										<img src="styles/products1/images/Tailor.png" width="80"
											height="70" class="mt10" /> <br /> <span>Tailor</span>
									</div>
									<div class="green-bg">
										<span>Tailor</span> <br />Helps in making custom fit designer
										dresses and alteration or repair services<br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('7', 'styles/products1/images/Key_Maker.png', 'Key maker')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="crSrc">
										<img src="styles/products1/images/Key_Maker.png" width="80"
											height="70" class="mt10" /> <br /> <span> Key maker

										</span>
									</div>
									<div class="green-bg">
										<span> Key maker </span> <br /> Lost your key or want to make
										a duplicate key for your near one, he who unlocks your problem
										<br /> <i class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('8', 'styles/products1/images/Gardener.png', 'Gardener')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="tasqSrc">
										<img src="styles/products1/images/Gardener.png" width="80"
											height="70" class="mt10" /> <br /> <span> Gardener </span>
									</div>
									<div class="green-bg">
										<span> Gardener </span> <br /> Helps you in nursing and
										maintaining your garden, park and greens around your building
										<br /> <i class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('9', 'styles/products1/images/mason.png', 'Mason')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="mmSrc">
										<img src="styles/products1/images/mason.png" width="80"
											height="70" class="mt10" /> <br /> <span> Mason</span>
									</div>
									<div class="green-bg">
										<span>Mason</span> <br /> Provides building and repairing
										services like building walls, kitchen platforms, roofs, tiles
										laying, etc.. <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('10', 'styles/products1/images/Carpenter.png', 'Carpenter')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="dgSrc">
										<img src="styles/products1/images/Carpenter.png" width="80"
											height="70" class="mt10" /> <br /> <span> Carpenter
										</span>
									</div>
									<div class="green-bg">
										<span> Carpenter </span> <br /> Provides services like making
										and repairing of furnitures, doors, storage cabinets<br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a>
							<li class="tile tile-big tile-17 slideTextLeft">
							</li> <a id="latlong" href="#"
								onclick="getLocation('11', 'styles/products1/images/garbageCollector.png', 'Garbage Colletor')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="dlrSrc">
										<img src="styles/products1/images/garbageCollector.png"
											width="80" height="70" class="mt10" /> <br /> <span>
											Garbage Colletor </span>
									</div>
									<div class="green-bg">
										<span> Garbage Colletor </span> <br /> Dispose of trash in
										safe, effective, and environmentally friendly ways to keep the
										city clean <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('12', 'styles/products1/images/Plumber.png', 'Plumber')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="rcSrc">
										<img src="styles/products1/images/Plumber.png" width="80"
											height="70" class="mt10" /> <br /> <span>Plumber</span>
									</div>
									<div class="green-bg">
										<span>Plumber</span> <br />Professional who provides
										installation and repairing services water pipelines to
										bathrooms and kitchens<br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a> <a id="latlong" href="#"
								onclick="getLocation('13', 'styles/products1/images/Electrician.png', 'Electrician')">
								<li class="tile tile-big tile-17 slideTextLeft">
									<div id="dcSrc">
										<img src="styles/products1/images/Electrician.png" width="80"
											height="70" class="mt10" /> <br /> <span>
											Electrician </span>
									</div>
									<div class="green-bg">
										<span> Electrician </span> <br /> Provides installation and
										repairing services electrical appliances <br /> <i
											class="fa fa-chevron-circle-right product-arrow"></i>
									</div>
							</li>
							</a>
						</div>


					</ul>
				</div>
			</div>
		</div>

		<div>
			<form:form action="service_provider"
				modelAttribute="userCurrentLocation" id="user_detail_id"
				method="POST">

				<form:hidden path="longitude" id="longitude_id" />
				<form:hidden path="latitude" id="latitude_id" />
				<form:hidden path="imageURL" id="imageURL_id" />
				<form:hidden path="type" id="type_id" />
				<form:hidden path="service_name" id="service_name_id" />

			</form:form>



		</div>
	</div>

	<div class="footer" style="background: transparent;">&copy; 2015
		Cognizant - All rights reserved</div>

	<div class="overlay"></div>
	<script>
		function getLocation(id, imageURL, servicename) {
			if (navigator.geolocation) {
				navigator.geolocation
						.getCurrentPosition(function(showPosition) {
							var lat = showPosition.coords.latitude;
							var lng = showPosition.coords.longitude;
							var image = imageURL;
							var type = id;
							var name = servicename;

							//hardcoding Ramapuram, Chennai geolocation for demo
							lat = "13.0090";
							lng = "80.19748";

							document.getElementById('longitude_id').value = lng;
							document.getElementById('latitude_id').value = lat;
							document.getElementById('imageURL_id').value = image;
							document.getElementById('type_id').value = type;
							document.getElementById('service_name_id').value = name;
							//  alert(image);
							document.getElementById("user_detail_id").submit();

							//window.location.replace("${pageContext.request.contextPath}/service_provider?id=1");
						});
			}
		}
	</script>

</body>
</html>