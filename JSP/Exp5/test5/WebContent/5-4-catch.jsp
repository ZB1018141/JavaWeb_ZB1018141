<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <head>
  <title>catch捕获异常</title>
 </head>
 <body>
  <c:catch var="ex">
   <%
    String number = "none";
     int i = Integer.parseInt(number);
   %>
  </c:catch>
  ${ex}
 </body>
</html>