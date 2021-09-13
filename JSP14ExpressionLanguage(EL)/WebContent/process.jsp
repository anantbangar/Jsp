<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is process page</h2>
	<h4>welcome ${param.name}</h4>
	<h4>welcome ${sessionScope.session_name}</h4>
	<h4>welcome ${applicationScope.application_name}</h4>
	<h4>welcome ${cookie.cookie_name.value}</h4>
</body>
</html>