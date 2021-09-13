<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error page</title>
</head>
<body>

	<img src="imgs/sorry.jpg">
	<h3>sorry....something went wrong...</h3>
	<h3><%=exception %></h3>
</body>
</html>