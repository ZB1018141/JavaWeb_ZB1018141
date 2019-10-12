<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>使用forEach</title>
</head>
<body>
	<%
	Map<String,String> map=new HashMap<String,String>();
	map.put("百度","http://www.baidu.com");
	map.put("雅虎", "http://cn.yahoo.com");
	map.put("谷歌","http://www.google.com/");
	request.setAttribute("map", map);
	%>
	<table frame="border" rules="all" bordee="1px">
	<c:forEach items="${map}" var="entry">
	<tr>
	<td>
	<c:out value="${entry.key}" />
	</td>
	<td>
	<c:out value="${entry.value}" />
	</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>