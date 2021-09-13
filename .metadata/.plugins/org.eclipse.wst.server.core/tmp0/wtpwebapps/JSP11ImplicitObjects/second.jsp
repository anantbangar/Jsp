<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=(String)session.getAttribute("name");
		String name1=(String)pageContext.getAttribute("name1",PageContext.SESSION_SCOPE);
	
		out.println("welcome "+name);
		out.println("<br>");
		out.println("welcome "+name1);
	%>
</body>
</html>