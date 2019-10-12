<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <head>
  <title>if选择</title>
 </head>
 <body>
  <c:if test="${session.username=='system'}">
欢迎系统管理员！
</c:if>
session.username为空，不输出“欢迎系统管理员！”这句话
 </body>
</html>