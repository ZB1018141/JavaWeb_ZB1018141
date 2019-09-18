<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<html>
  <head>
    <title>homework2.jsp</title>
  </head>
  <body>
    <%
      //除运算正常情况
      //double i=8/7;
      //异常情况
      double i=8/0;
     %>
    <%=i %>
  </body> 
</html>