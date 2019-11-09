<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body>
	<form action="LoginServlet" method="post">
	用户名字：<input type="text" name="name"><br>
	<br>
	密&nbsp&nbsp&nbsp&nbsp码：&nbsp&nbsp&nbsp<input type="password" name="password"><br>
	<input type="submit" value="提交">
	</form>
</body>
</html>