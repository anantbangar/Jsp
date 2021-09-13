<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addition page</title>
</head>
<body>
	<h1>this is operation page</h1>
	
	<%!
		int add,sub,mul,div;
	%>
	
	<%
		String strnum1=request.getParameter("num1");
		String strnum2=request.getParameter("num2");
		
		int num1=Integer.parseInt(strnum1);
		int num2=Integer.parseInt(strnum2);
		
						
		if(request.getParameter("add")!=null)
		{
			 add=num1+num2;
			 out.println("<h3>addition is :"+add+"</h3>");
		}
		
		else if(request.getParameter("sub")!=null)
		{
			 sub=num1-num2;
			 out.println("<h3>subtration is :"+sub+"</h3>");
		}
		
		else if(request.getParameter("mul")!=null)
		{
			 mul=num1*num2;
			 out.println("<h3>multiplication is :"+mul+"</h3>");
		}
		
		else if(request.getParameter("div")!=null)
		{
			 div=num1/num2;
			 out.println("<h3>divition is :"+div+"</h3>");
		}
		
	%>
	
</body>
</html>