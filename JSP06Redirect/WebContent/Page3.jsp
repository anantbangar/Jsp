<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>page 3</title>
</head>
<body style="background:yellow">
	<h1>This is page 3</h1>
	<%
		response.sendRedirect("https://www.javatpoint.com");
	%>
</body>
</html>