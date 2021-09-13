<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page errorPage="Error_Page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>String example</title>
</head>
<body>
	<h1>this is string example page</h1>
	
	<%
		String name=null;
	
		int length=name.length();
		
		out.println("string length is "+length);
	%>
</body>
</html>