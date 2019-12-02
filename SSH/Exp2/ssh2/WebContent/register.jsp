<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/10
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
    <hr/>
<s:form  action="register" method="POST" onsubmit="return check(this)">
    <table border="1">
        <tr>
            <td><s:textfield name="userName" label="姓名" size="16"/></td>
        </tr>
        <tr>
            <td><s:password name="userPassword" label="密码" size="18"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userAge" label="年龄" size="16"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userTelephone" label="电话" size="16"/></td>
        </tr>
        <tr>
            <td><s:submit value="提交"/></td>
        </tr>
    </table>
</s:form>
</body>
</html>
