<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>个人信息管理系统</title>
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
		<h1>欢迎登录</h1>
		<div class="wrapper">
			<h2>登录</h2>
			<div class="w3ls-form">
				<form action="login" method="post">
					<label>用户名</label>
					<input type="text" name="userName" placeholder="Username" required/>
					<label>密码</label>
					<input type="password" name="password" placeholder="Password" required />
					<a href="http://localhost:8080/ssh3/register.jsp" class="pass">注册</a>
					<input type="submit" value="登录" />
				</form>
			</div>
		</div>
		<br>
		<div class="copyright">
		<p>© 2019 个人信息管理系统 | ZB1018141 </p> 
	</div>
	</div>
	
</body>
</html>