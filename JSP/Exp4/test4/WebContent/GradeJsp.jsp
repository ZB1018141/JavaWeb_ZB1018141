<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean id="studentgrade" class="wmr.Grade"></jsp:useBean>
     <jsp:setProperty property="*" name="studentgrade"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生成绩</title>
</head>
<body>
<form action="">
		名字：<input type="text" name="name"><br>
		语文：<input type="text" name="chineseGrade"><br>
		数学：<input type="text" name="mathGrade"><br>
		英语：<input type="text" name="englishGrade"><br>
		物理：<input type="text" name="physicsGrade"><br>
		化学：<input type="text" name="chemistryGrade"><br>
	<input type="submit" value="提交">
</form>
	<%
	if(request.getParameter("chineseGrade")!=null){
	%>
	总分：${studentgrade.chemistryGrade + studentgrade.physicsGrade + studentgrade.mathGrade + studentgrade.englishGrade + studentgrade.chineseGrade}<br/>
	平均分：${(studentgrade.chemistryGrade + studentgrade.physicsGrade + studentgrade.mathGrade + studentgrade.englishGrade + studentgrade.chineseGrade)/5}
	<%
	}
	%>
</body>
</html>