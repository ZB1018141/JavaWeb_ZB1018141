<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	 <jsp:useBean id="number" class="wmr.Compare"></jsp:useBean>
    <jsp:setProperty property="*" name="number"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>比较大小</title>
</head>
<body>
	<form action="">
		第一个数字：<input type="text" name="numberone" ><br>
		第二个数字：<input type="text" name="numbertwo"><br>
		<input type="submit" value="提交">
	</form>
	<%
	if(request.getParameter("numberone")!=null){
	%>
	相等：<input value=${number.numberone eq number.numbertwo?"相等":"不相等"}> <br>	
	不相等：<input value=${number.numberone ne number.numbertwo?"不相等":"相等"}> <br>	
	比较大小：<input value=${number.numberone lt number.numbertwo?"第一个数小":"第二个数小"}><br>
	比较大小（包含等于）：<input value=${number.numberone le number.numbertwo?"第一个数小于等于第二个数":"第二一个数小于等于第一个数"}> <br>	
	
	<%
	}
	%>
	
</body>
</html>