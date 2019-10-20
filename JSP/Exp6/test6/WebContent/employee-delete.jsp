<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP+MySQL删除数据</title>
</head>
<body>
	<div style="margin: auto; width: 80%">
		<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8" 
			user="root"
			password="123456789" />

		<sql:update dataSource="${connection}" var="result">
			DELETE FROM employee WHERE EMP_ID=17;
		</sql:update>
		
		<sql:query dataSource ="${connection}" var="result">
			SELECT * from employee;
		</sql:query>
		<table border="1" width="100%">
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>职位</th>
				<th>薪水</th>
				<th>部门</th>
			</tr>

			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.EMP_ID}" /></td>
					<td><c:out value="${row.EMP_NAME}" /></td>
					<td><c:out value="${row.JOB}" /></td>
					<td>￥<c:out value="${row.SALARY}" /></td>
					<td><c:out value="${row.DEPT}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>