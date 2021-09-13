<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="/WEB-INF/tlds/mytaglib.tld" prefix="t" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom tag with Attribute</title>
</head>
<body>
	<h1>This is jsp page Custom tag with Attribute example</h1>
	<t:printTable number="20" color="red"></t:printTable>
	<t:printTable color="blue" number="9"></t:printTable>
	<t:printTable color="green" number="50"></t:printTable>
	
</body>
</html>