<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.usebean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is display page</h2>
	
	<%
		/*
		Student st=(Student)request.getAttribute("s1");
	
		out.println(st.getRollNum()+"<br>");
		out.println(st.getSname());
		*/
	%>
	
	<jsp:useBean id="s1" class="com.usebean.Student" scope="session"></jsp:useBean>
	<jsp:getProperty property="rollnum" name="s1"/>
	<jsp:getProperty property="sname" name="s1"/>
	
	<br>
	
	<jsp:useBean id="s2" class="com.usebean.Student" scope="session"></jsp:useBean>
	<jsp:getProperty property="rollnum" name="s2"/>
	<jsp:getProperty property="sname" name="s2"/>
</body>
</html>