<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入用户名</title>
</head>
<body>
	<form action="UserServlet" method="post">
	用户名字：<input type="text" name="name"><br>
	<input type="submit" value="提交">
	</form>
</body>
</html>