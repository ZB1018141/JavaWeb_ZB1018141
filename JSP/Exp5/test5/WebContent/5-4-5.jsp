<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>   
<%--jsp页面默认是true,EL表达式被忽略--%>
<%@ page isELIgnored="false"%>
<%--定义一个javaBean对象--%>
<jsp:useBean id="stu" class="test5.Student"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:if用于进行判断</title>
</head>
<body>
	<%--通过<c:set>标签给javaBean对象的age属性设值--%>
	<c:set value="16" target="${stu}" property="age"/>
	<%--输出javaBean对象的属性值--%>
	年龄:<c:out value="${stu.age}"/><br>
	<%--当if判断为true时,输出标签体的内容--%>
	<c:if test="${stu.age<18}" var="young" scope="session">对不起,未成年,不能访问这个网站...</c:if><br>
	<%--输出if语句的判断结果--%>
	判断结果:<c:out value="${sessionScope.young}"/>
</body>
</html>