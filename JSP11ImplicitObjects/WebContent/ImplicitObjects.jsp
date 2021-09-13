<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>This is Implicit Objects Example</h1>
	<h3>out , request , respose , config , application , session, pageContext , page , exception</h3>
	<br>
	
	<% out.println("today is : "+java.util.Calendar.getInstance().getTime()); %>
	
	<br>
	
	<% 
		String name=request.getParameter("name");
		out.println("hello "+name);
		out.println("<br>");
		
		//response.sendRedirect("https://google.co.in");
		
		String oracleDriver=config.getInitParameter("oracleDriver");
		String mysqlDriver=config.getInitParameter("mysqlDriver");
		out.println("OracleDriver is "+oracleDriver+"<br>");
		out.println("MySQLDriver is "+mysqlDriver+"<br>");
		
		String oracleUrl=application.getInitParameter("oracleUrl");
		String mysqlUrl=application.getInitParameter("mysqlUrl");
		out.println("OracleUrl is "+oracleUrl+"<br>");
		out.println("MySQLUrl is "+mysqlUrl+"<br>");
		
		session.setAttribute("name",name);
		
		pageContext.setAttribute("name1","anant",PageContext.SESSION_SCOPE);
		
		//int a=10/0;
		//out.println(a);
		
	%>
	
	<a href="second.jsp">second.jsp</a>
		
</body>
</html>