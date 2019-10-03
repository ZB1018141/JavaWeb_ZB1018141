<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class="wmr.LoginUser"></jsp:useBean>
	<jsp:setProperty name="user" property="*"></jsp:setProperty>
	<%
	request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成功界面</title>
</head>
<body>
	用户昵称：${user.name}<p>
	密码：${user.password}<p>
	性别：${user.sex }<p>
	爱好：${user.hobbyone}
	${user.hobbytwo }
	${user.hobbythree}
	${ user.hobbyfor}<p>
	<input type="button" class="btn"  value="返回" onclick="javascript:history.go(-1);"/>
</body>
</html>