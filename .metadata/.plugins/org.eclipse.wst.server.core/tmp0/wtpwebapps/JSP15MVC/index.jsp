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
	<form action="ControllerServlet" method="post">
		Enter name <input type="text" name="name" />
		Enter password <input type="password" name="password" />
		<input type="submit" value="submit "/>
	</form>
</body>
</html>