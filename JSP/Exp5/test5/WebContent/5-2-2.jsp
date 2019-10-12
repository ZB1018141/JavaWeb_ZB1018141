<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>九九乘法结果显示</title>
</head>
<body>
	
	<%
	int num=Integer.parseInt(request.getParameter("number"));
	for(int i=1;i<=num;i++){
		for(int j=1;j<=i;j++){
			pageContext.setAttribute("i", i);
			pageContext.setAttribute("j", j);
		%>
		${i}*${j}=${i*j}
	<%
	}%>

	<%
	out.print("<br>");
	}
	%>
	
</body>
</html>