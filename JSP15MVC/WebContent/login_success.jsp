<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.mvc.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is login success page</h2>
	<h3>you are login successfully</h3>
		
	<%
		LoginBean loginbean=(LoginBean)request.getAttribute("loginbean");
		
		out.println("Welcome "+loginbean.getName());
	%>
</body>
</html>