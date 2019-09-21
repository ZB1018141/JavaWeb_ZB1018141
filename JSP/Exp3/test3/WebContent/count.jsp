<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>页面访问次数</title>
</head>
<body>
	<%
	if(pageContext.getAttribute("pageCount")==null){//刷新当前啊页面,只要页面不变次数不变
		pageContext.setAttribute("pageCount", new Integer(0));	
	}
	if (session.getAttribute("sessionCount") == null) {//浏览器计数，session与服务器知寄件
        session.setAttribute("sessionCount", new Integer(0));
    }
	Integer count=(Integer)pageContext.getAttribute("pageCount");//获取当前页面pageCount的属性
	pageContext.setAttribute("pageCount", new Integer(count.intValue() + 1));//设置某一范围的属性值，默认为page范围
	Integer count2 = (Integer) session.getAttribute("sessionCount");
    session.setAttribute("sessionCount", new Integer(count2.intValue() + 1));
	%>	
	<h2>页面计数：<%=pageContext.getAttribute("pageCount")%></h2>
  	<h2>浏览器计数<%=session.getAttribute("sessionCount")%></h2>
</body>
</html>