<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
	%>
<html>
<head>
    <title>信息填写</title>
</head>
<body>
<form action="LoginResult.jsp" method="post" >
  	用户昵称 ：<input type="text" name="name"><p>
	密码：<input type="password" name="password"><p>
	确认密码：<input type="password" name="confpassword"><p>
	性别：<input type="radio" value="男" name="sex"/>男
	<input type="radio" value="女" name="sex"/>女<p>
	爱好：<input type="checkbox" value="体育" name="hobbyone" />唱歌
	<input type="checkbox" value="美术" name="hobbytwo" />跳舞
	<input type="checkbox" value="音乐" name="hobbythree" />运动
	<input type="checkbox" value="旅游" name="hobbyfor"/>阅读<p>
    <input type="submit" value="提交">
    <input type="reset" name="clear" value="重置">
</form>
</body>
</html>