<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taglib Directive</title>
</head>
<body>
	<h1>Taglib Directive Example</h1>
	
	<c:set var="name" value="anant bangar"></c:set>
	<h3><c:out value="${name}"></c:out></h3>
	<c:if test="${5>1}">
		<h3>this is true block 5>1</h3>
	</c:if>


</body>
</html>