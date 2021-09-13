<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tags Declareative, Scriptlet, Expressive </title>
</head>
<body bgcolor="green">
	<h1>This is tag example in Jsp page</h1>
	<h1>Declarative tag,Scriptlet tag,Expressive tag</h1>
	
	<h4>to go to directive tag example please click on link</h4>
	<h4><a href="DirevtivePI.jsp" target="_blank">Page & Include</a></h4>
	<h4><a href="DirectiveTaglib.jsp" target="_blank">Taglib</a></h4>
	<%!
		int a=10,b=20;
		String name="anant bangar";
		
		public int sum()
		{
			return a+b;
		}
		
		public String reverse()
		{
			StringBuffer strbr=new StringBuffer(name);
			return strbr.reverse().toString();
		}
	%>
	
	<%
		out.println("value of a is "+a);
		out.println("<br>");
		out.println("value of b is "+b);
		out.println("<br>");
		out.println("sum is "+sum());
		out.println("<br>");
		out.println("reverse of "+name+" is "+reverse());
	%>
	
	<h4 style="color: red">value of a is <%=a %></h4>
	<h4>value of b is <%=b %></h4> 
	<h4>sum is <%=sum() %></h4>
	<h4>reverse of <%=name %> is <%=reverse() %></h4>
	
	
</body>
</html>