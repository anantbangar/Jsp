<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Function Tags</title>
</head>
<body>
	<h1>function tags example</h1>

	<c:set var="a" value="ANANT BANGAR"></c:set>

	<h3>
		value of a is :
		<c:out value="${a}"></c:out>
	</h3>

	<h3>
		length of variable a is :
		<c:out value="${fn:length(a)}"></c:out>
	</h3>

	<c:out value="${fn:toLowerCase(a)}"></c:out>

	<br>

	<c:out value="${fn:contains(a,'BANGAR')}"></c:out>


</body>
</html>