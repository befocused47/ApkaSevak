<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html lang="en">
<head>
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Service Provider - Contact Info</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="styles/products1/css/bootstrap.css" rel="stylesheet"
	type="text/css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.vertical-center {
	min-height: 100%; /* Fallback for browsers do NOT support vh unit */
	min-height: 100vh; /* These two lines are counted as one :-)       */
	display: flex;
	align-items: center;
}
</style>
</head>
<body>

	<div class="header col-lg-12 col-md-12 col-sm-12 col-xs-12"
		style="background: #fff;">
		<div class="row">
			<div class="col-lg-1 col-md-3 col-sm-3 col-xs-3 col-xs-3 mt20">
				<a href="home"><img src="styles/products1/images/AS_logo.png" /></a>
			</div>

			<div
				class="col-lg-1 col-md-1 pdl0 col-sm-1 col-xs-4 text-right-xs pull-right-xs pull-right   mt-xs-20">
				<a id="oldHomePage" href="#" title="Go back to the Old Portal"><i
					class="fa fa-home logout" style="font-size: 25px;"></i></a> <a
					id="logout" onclick="logout();" href="#" title="Sign out"><i
					class="fa fa-power-off logout" style="margin-left: 10px;"></i></a>
			</div>
			<div class="col-lg-7 col-md-8 col-sm-8 col-xs-8  pull-right">
				<ul id="nav" class="nav nav-pills pull-right menu hidden-xs">
					<div class="row">
						<!-- <img border="none" src="styles/products1/images/whiteline.png" width="100%" height="10px"/> -->
						<div>
							<p style="font-size: 1px;">&nbsp;</p>
						</div>
					</div>
					<div style="vertical-align: middle; display: inline-block; min-height: 30px;">
						<img src="${image}" width="50px" height="50px" />
					</div>
					<div
						style="vertical-align: middle; display: inline-block; min-height: 30px;">
						<span style="font-size: 25px;">&nbsp;${name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					</div>
					<div
						style="vertical-align: middle; display: inline-block; min-height: 30px; margin-top: 10px">
						<span style="max-height: 100px !important;" class="none"
							onclick="Button1_onclick()" style="cursor: pointer"><a href="home"><img
							src="styles/products1/images/home.png" /></a></span>
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
		<div class="container">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="panel panel-primary">
						<div class="panel-heading">Contact Details</div>
						<div class="panel-body">
							<div>
								<div class="row" style="background-color: lavender;">
									<div class="col-sm-6">Name</div>
									<div class="col-sm-6">${serviceProviderDetail.name} (
										${serviceProviderDetail.rating} / 5)</div>
								</div>
								<div class="row" style="background-color: lavenderblush;">
									<div class="col-sm-6">Mobile</div>
									<div class="col-sm-6">${serviceProviderDetail.mobileNo}</div>
								</div>
								<div class="row" style="background-color: lavender;">
									<div class="col-sm-6">Address</div>
									<div class="col-sm-6">
										${serviceProviderDetail.address1}<br>${serviceProviderDetail.address2}<br>${serviceProviderDetail.address3}
									</div>
								</div>
								<div class="row" style="background-color: lavenderblush;">
									<div class="col-sm-6">Aadhaar ID</div>
									<div class="col-sm-6">${serviceProviderDetail.aadhaarId}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="panel panel-primary">
						<div class="panel-heading">Submit Ratings</div>
						<div class="panel-body">
							<div>
								<div class="row" style="background-color: lavender;">
									<div class="col-sm-6">Rating</div>
									<div class="col-sm-6">
										<select id="rating" name="rating">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5" selected>5</option>
										</select> Star(s)
									</div>
								</div>
								<div class="row" style="background-color: lavenderblush;">
									<div class="col-sm-6">Mobile</div>
									<div class="col-sm-6">
										<input type="text" value="" name="mobile_no" id="mobile_no">
									</div>
								</div>
								<div class="row" style="background-color: lavender;">
									<div class="col-sm-6">Comment</div>
									<div class="col-sm-6">
										<textarea rows="3" cols="25" id="comment value=""></textarea>
									</div>
								</div>
								<div class="row" style="background-color: lavenderblush;">
									<div class="col-sm-6">
										<input type="hidden" name="sp_id" id="sp_id"
											value="${serviceProviderDetail.serviceProviderId}">
									</div>
									<div class="col-sm-6">
										<input type="button" value="submit" onclick="submitRating();">
										<input type="button" value="back" onclick="backButton();">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script>
		function submitRating() {
			var rating = new Object();
			rating.serviceProviderId = $('#sp_id').val();
			rating.mobileNo = $('#mobile_no').val();
			rating.comment = $('#comment').val();
			rating.rating = $('#rating').val();
			$.ajax({
				url : 'serviceproviderrating',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(rating),
				success : function(result) {
					alert(result);
				}
			});
		}
		
		function backButton()
		{
			location.href = "home";
		}
	</script>
</body>
</html>