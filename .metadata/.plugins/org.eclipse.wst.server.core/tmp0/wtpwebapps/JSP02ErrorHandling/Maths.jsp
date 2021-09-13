<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page errorPage="Error_Page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Maths Example</title>
</head>
<body>
	<h1>this is maths exmaple page</h1>
	
	<%
		int a=100;
		int b=0;
		int div;
		div=a/b;
		
		out.println("division is "+div);
	%>
</body>
</html>