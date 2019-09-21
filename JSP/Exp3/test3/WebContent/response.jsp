<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response页面</title>
</head>
<body>
	<p>用户名：<%=request.getSession().getAttribute("username") %></p>
	<P>密码：<%=request.getSession().getAttribute("password") %>
</body>
</html>