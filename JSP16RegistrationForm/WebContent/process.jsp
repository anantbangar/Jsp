<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.registrationform.RegisterDao" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.registrationform.User1Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<h4>UserName is </h4><jsp:getProperty property="uname" name="obj"/><br>
	<h4>City is </h4><jsp:getProperty property="city" name="obj"/><br>
	
	<%
		int status=RegisterDao.register(obj);
		if(status>0)
		{
			out.println("You are successfully registered");
		}
	
	%>
	
</body>
</html>