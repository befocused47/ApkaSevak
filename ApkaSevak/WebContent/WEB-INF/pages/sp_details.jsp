<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles/products1/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Provider</title>
</head>
<body>

Name : ${serviceProviderDetail..name} ( ${serviceProviderDetail.star_rating} / 5)<br> 
Mobile No : ${serviceProviderDetail.mobile_no}<br>
Address 1 : ${serviceProviderDetail.addr1}<br>
Address 2 : ${serviceProviderDetail.addr2}<br>
Address 3 : ${serviceProviderDetail.addr3}<br>

---------(Give Your Rating Below)------<br>
<form name="rating" method="post"  action="${pageContext.request.contextPath}/serviceproviderrating">
Rating : <select name="rating">
  <option value="1" >1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4" >4</option>
  <option value="5" selected>5</option>
</select><br>
MObile NO :<input type="text" value="" name="mobile_no"><br>
comment :<input type="text" value="" name="comment"><br>
<input type="hidden" name="sp_id" value="${serviceProviderDetail.sp_id}">
<input type="submit" value="submit">
</form>
</body>
</html>