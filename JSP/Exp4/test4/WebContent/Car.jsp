<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="colors" class="wmr.Car"></jsp:useBean>
    <jsp:setProperty property="color" name="colors" value="黄色"/>
    <jsp:setProperty property="a" name="colors" value="true"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>汽车空调</title>
</head>
<body>
	汽车颜色：<jsp:getProperty name="colors" property="color"/><br>
	布尔值：<jsp:getProperty name="colors" property="a"/><br>
	汽车安装了空调
</body>
</html>