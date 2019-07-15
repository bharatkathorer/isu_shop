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
<body onload="prod()">
<%@include file="navbar.jsp"%>
<%@include file="models.jsp"%>
	<br>
	<br>
	<br> ${param.msg}
<div id="prod">	
</div>
<div class="tt">
</div>

<%@include file="footer.jsp"%>
</body>
</html>