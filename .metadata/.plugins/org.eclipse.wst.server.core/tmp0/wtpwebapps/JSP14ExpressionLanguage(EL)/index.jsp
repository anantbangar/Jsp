<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is index page</h2>
	<form action="process.jsp">
		<input type="text" name="name" placeholder="enter your name"/>
		<input type="submit" value="go">
	</form>
	
	<%
		session.setAttribute("session_name","session_pawan");
		
		application.setAttribute("application_name","application_gulab");
	
		Cookie cookie=new Cookie("cookie_name","cookie_shailoo");
		response.addCookie(cookie);
	%>
</body>
</html>