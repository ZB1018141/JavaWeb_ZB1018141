<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>登录界面</title>
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
		<h1>登录界面</h1>
		<div class="wrapper">
			<h2>欢迎登录</h2>
			<div class="w3ls-form">
				<form action="login" method="post">
					<label>用户名</label>
					<input type="text" name="username" placeholder="账号" required/>
					<label>密码</label>
					<input type="password" name="password" placeholder="密码" required />
					<input type="submit" value="登录" />
				</form>
			</div>
		</div>
		<div class="copyright">
		<p>© 2019 登录界面 | ZB1018141</p> 
	</div>
	</div>
</body>
</html>
