<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="textml; charset=utf-8" />
  </head>
  
  <body>
    <!-- 局部定义使用哪一种国际化语音 -->
<s:i18n name="message">  
  <!-- <s:text name ="ChangeLanguageAction" ></s:text> --> 
   <button><a href="ChangeLanguageAction.action?request_locale=zh_CN">
   		<s:text name="chinese"></s:text>
	</a>
	</button>
    <button><a href="ChangeLanguageAction.action?request_locale=en_US">
    	<s:text name="english"></s:text>
   	</a>
   	</button>
    <br/>
   <form action="LoginAction" method="post">
   
             <table>
               <tr>
               <!--s标签里的东西name要和properties文件里面的一致-->
                 <td><s:text name="username"/></td>
                 <td><input type="text" name="username"/></td>
               </tr>
               <tr>
                 <td><s:text name="pwd"/></td>
                 <td><input type="password" name="pwd"/></td>
               </tr>
               <tr>
                <td colspan="2"><input type="submit" value="<s:text name="btn"/>"/></td>
              </tr>              
             </table>                             
    </form>
   </s:i18n>
  </body>
</html>
