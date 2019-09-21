<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录成功界面Insert title here</title>
</head>
<body>
	<h2>登录成功后的页面</h2>
	<p>用户名：<%=request.getParameter("username") %></p>
	<p>密码：<%=request.getParameter("password") %></p>
	<hr/>
	<p>请求使用的协议：<%=request.getProtocol() %></p>
	<p>请求URI：<%=request.getServletPath() %></p>
	<p>请求方法：<%=request.getMethod() %></p>
	<P>远程地址：<%=request.getRemoteAddr() %></P>	
</body>
</html>