<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is forward </h2>
	<jsp:forward page="printdate.jsp">
		<jsp:param value="hello Anant" name="myname"/>
	</jsp:forward>
</body>
</html>