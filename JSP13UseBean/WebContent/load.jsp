
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.usebean.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>this is load page</h2>
	
	<%
		/* 
		
		int rollnum=Integer.parseInt(request.getParameter("rollnum"));
		String sname=request.getParameter("sname");
		
		Student s1=new Student();
		s1.setRollNum(rollnum);
		s1.setSname(sname);
		
		//out.println(s1.getRollNum()+"<br>");
		//out.println(s1.getSname());
		
		request.setAttribute("s1",s1);
		
		RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		rd.forward(request, response); 
		
		*/
	%> 
	
	<jsp:useBean id="s1" class="com.usebean.Student" scope="session"></jsp:useBean>
	
	<!--
	<jsp:setProperty property="rollnum" name="s1" value='<%=Integer.parseInt(request.getParameter("rollnum")) %>' />
	<jsp:setProperty property="sname" name="s1" value='<%=request.getParameter("sname") %>'/>
	-->
	
	<jsp:setProperty property="*" name="s1"/>
	
	<jsp:useBean id="s2" class="com.usebean.Student" scope="session"></jsp:useBean>
	<jsp:setProperty property="rollnum" name="s2" value="200"/>
	<jsp:setProperty property="sname" name="s2" value="ram"/>
	
	<!-- <%
		//RequestDispatcher rd=request.getRequestDispatcher("display.jsp");
		//rd.forward(request, response);
	%>-->
	
	<a href="display.jsp">display.jsp</a>
	
	

</body>
</html>