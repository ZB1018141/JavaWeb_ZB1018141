<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:remove主要负责移除变量</title>
</head>
<body>
	<c:remove var="username" scope="session"/>
	${sessionScope.username}—输不出结果
</body>
</html>