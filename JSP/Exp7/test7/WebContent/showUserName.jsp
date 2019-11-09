<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示用户名</title>
</head>
<body>
	<font size=3>
	<% String name=request.getParameter("name");%>
	用户输入的姓名是：<%=name %>
	</font>
</body>
</html>