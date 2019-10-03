<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class="wmr.User"></jsp:useBean>
    <jsp:setProperty property="username" name="user" value="anne"/>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示用户名</title>
</head>
<body>
	用户姓名：<jsp:getProperty name="user" property="username"/>
</body>
</html>