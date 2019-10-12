<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <head>
  <title>remove移除</title>
 </head>
 <body>
  <c:remove var="username" scope="session"/> 
  ${sessionScope.username}—输不出结果
 </body>
</html>