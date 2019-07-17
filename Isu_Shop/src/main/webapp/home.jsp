<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="links.jsp" %>
<%@include file="javascript.jsp" %>
<%@include file="style.jsp" %>

</head>
<body onload="prodctsss()">
<%@include file="navbar.jsp"%>
<%@include file="models.jsp"%>
	<br>
	<br>
<div class="ml3 text-success">
	<br> ${param.msg}
</div>
<input type="hidden" id="u_id" value="${user.getEmail()}">
<div id="prod">	
</div>
<div class="tt">
</div>


<div id="fid">
<%@include file="footer.jsp"%>
</div>
	
	

</body>
</html>