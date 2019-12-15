<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>登录成功页面</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<!-- google fonts  -->
	
</head>
<body>
	<div class="agile-login">
		 <h1>欢迎您,<s:property value="username"></s:property>,登录成功！</h1>
		<br>
		<div class="copyright">
		<p>© 2019 登录成功页面 | ZB1018141 </p> 
	</div>
	</div>
</body>
</html>
 
