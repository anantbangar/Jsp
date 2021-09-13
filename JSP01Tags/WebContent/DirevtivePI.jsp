<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Directive tags Page and Include</title>
</head>
<body>
	<h1>This is Directive tag example</h1>
	<h1>Page Directive and Include Directive</h1>
	
	<%@include file="header.html" %>
	<p>current date is :<%=new Date().toString() %>
	<h3>Random number :
	<%
		Random r=new Random();
		int n=r.nextInt(10);
		
	//	out.println(n);
	%>
	<%=n %>
	</h3>
</body>
</html>