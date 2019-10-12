<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:redirect请求从一个JSP网页导向到其它文件</title>
</head>
<body>
<%--通过<c:url>获得url--%>
	<c:url value="5-3.jsp" var="test"><c:param name="name" value="jgl"/></c:url>
<%--通过<c:redirect>重定向到获得的url上--%>
	<c:redirect url="${test}"/>
<%--通过<c:url>获得url--%>
	<c:url value="5-3.jsp" var="t"></c:url>
<%--通过<c:redirect>重定向到获得的url上(在<c:redirect>内部传参)--%>
	<c:redirect url="${t}">
	<c:param name="name" value="admin"/>
</c:redirect>
</body>
</html>