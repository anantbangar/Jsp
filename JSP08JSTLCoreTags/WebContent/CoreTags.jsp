<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Tags</title>
</head>
<body>
	<h1>core tags example</h1>

	<c:set var="i" value="25" scope="application"></c:set>

	<h3>
		value of i is :
		<c:out value="${i}"></c:out>
	</h3>

	<c:remove var="i" />

	<h3>
		value of i is :
		<c:out value="${i}">variable i is removed</c:out>
	</h3>

	<c:set var="a" value="100" scope="application"></c:set>

	<c:if test="${a>10 }">
		<h3>condition is true you are in if loop</h3>
	</c:if>

	<c:choose>
		<c:when test="${a>0}">
			<h3>this is first case and number is positive</h3>
		</c:when>

		<c:when test="${a<0}">
			<h3>this is second case and number is negative</h3>
		</c:when>

		<c:otherwise>
			<h3>this is default case and number is zero</h3>
		</c:otherwise>
	</c:choose>

	<c:forEach var="i" begin="1" end="10">
		<c:out value="${i}"></c:out>
	</c:forEach>

	<c:url var="myurl" value="https://www.google.com/search">
		<c:param name="q" value="javatpoint"></c:param>
	</c:url>

	<h3> <c:out value="${myurl}"></c:out> </h3>

	<%-- <c:redirect url="https://www.google.com"></c:redirect> --%>
	<%-- <c:redirect url="${myurl}"></c:redirect> --%>
	
	<a href="Check_Scope.jsp" target="_blank">Check scope of variable</a>
	
</body>
</html>