<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开始页面Insert title here</title>
</head>
<body>
<!-- 这里放的是java的代码 -->
	<% 
	HttpSession sess=request.getSession();
	sess.setAttribute("username", "孤独求败");
	sess.setAttribute("password", "123456");
	response.sendRedirect("response.jsp");//跳转页面，地址栏中的地址会变	
	%>
	
</body>
</html>