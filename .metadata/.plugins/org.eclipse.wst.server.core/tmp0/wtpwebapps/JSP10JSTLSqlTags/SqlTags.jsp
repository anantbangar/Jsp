<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sql Tags</title>
</head>
<body>
	<h1>sql tags example</h1>

	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/jsp" user="root"
		password="system@123" var="ds" />

	 <%--<sql:update dataSource="${ds}" var="count">insert into emp1 values(102,'pawan',60000)</sql:update>--%>
	
	<sql:query dataSource="${ds}" var="rs">select * from emp1</sql:query>

	<table>

		<tr>
			<th>id</th>
			<th>name</th>
			<th>salary</th>
		</tr>
		<c:forEach items="${rs.rows}" var="row">
			<tr>
				<td><c:out value="${row.id}"></c:out></td>
				<td><c:out value="${row.name}"></c:out></td>
				<td><c:out value="${row.salary}"></c:out></td>
			</tr>

		</c:forEach>

	</table>
</body>
</html>