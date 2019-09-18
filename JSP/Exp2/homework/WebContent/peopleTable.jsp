<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>身份证的提取</title>
  </head>
  <body>
    <%!
      //定义一个方法，从身份证中提取对应的数字
      public String getBirthday(String userid){
        String result="";
        if(userid.length()==18){
	        String year=userid.substring(6,10);
	        String month=userid.substring(10,12);
	        String day=userid.substring(12,14);
	        result=year+"-"+month+"-"+day;
        }else{
            result="录入身份证不合法";
        }
        return result;
      }
     %>
     
     <table border="1">
       <tr bgcolor="yellow">
         <td align="center">身份证</td>
         <td align="center">生日</td>
       </tr>
       <tr>
         <td>010020199601026929</td><td><%=getBirthday("010020199601026929")%></td>
       </tr>
       <tr>
         <td>010020199711126928</td><td><%=getBirthday("010020199711126928")%></td>
       </tr>
     </table>
  
  </body>
</html>
