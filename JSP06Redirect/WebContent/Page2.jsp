<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>page 2</title>
</head>
<body style="background:green">
	<h1>This is page 2</h1>
	<%
		response.sendRedirect("Page3.jsp");
	%>
</body>
</html>