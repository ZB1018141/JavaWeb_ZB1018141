<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>三角形三边输入</title>
</head>
<body>
	<p>输入三角形的三条边</p>
	<form action="TriangleServlet" method="post">
		A：<input type="text" name="a"><br><br>
		B：<input type="text" name="b"><br><br>
		C：<input type="text" name="c"><br><br>
		<input type="submit" value="提交">
	</form>
</body>
</html>