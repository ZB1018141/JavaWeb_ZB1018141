<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>IOC方式构建用户登录系统</title>
</head>
<body>
	 <form action="IoCLoginAction.action" method="post">
       	用户名：<input name="name" type="text" size="26">
       <br><br>
                       密 码  ：<input name="password" type="password" size="26">
       <br><br>
       <input type="submit" value="登录">
    </form>
</body>