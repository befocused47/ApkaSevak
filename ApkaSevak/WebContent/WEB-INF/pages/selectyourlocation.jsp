<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="styles/products1/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false">
</script>
<script type="text/javascript">
function selectLocation()
	{
		var map;
		var myOptions = {
				center : new google.maps.LatLng("13.0090", "80.19748"),
				zoom :16,
				mapTypeId : google.maps.MapTypeId.ROADMAP,
				//disableDefaultUI : true

			};
		map= new google.maps.Map(document.getElementById("default"),myOptions);
		google.maps.event.addDomListener(window, 'load', initialize);
	}
</script>
</head>
<body>
<div  style="width:90%; margin-left:5%; height:70%; border:5px solid; border-color:#ddd;" id="default"  class="mt10"></div>
</body>
</html>