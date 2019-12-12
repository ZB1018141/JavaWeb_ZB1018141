<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>学生信息管理系统-增加</title>
    </head>
    <body>
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
            <hr color="red"/>
        <br/>
        <table align="center" width="50%">
            <tr>
                <td width="25%">
                    <s:a href="http://localhost:8080/ssh3/student/lookMessage.jsp">查看学生信息</s:a>
                </td>
                <td width="25%">
                    添加学生信息
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8080/ssh3/student/findMessage.jsp">修改学生信息</s:a>
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8080/ssh3/student/deleteMessage.jsp">删除学生信息</s:a>
                </td>
            </tr>
        </table>
         <br/>
        <hr color="red"/>       
        <center><font color="white" size="6">添加学生信息</font></center>
        </div>
        <s:form action="addMessageAction" method="post">
            <table align="center" width="50%" bgcolor="#CCCCFF" border="5">
                <tr>
                    <td>
                        <s:textfield name="id" label="学号" size="16"></s:textfield>
                    </td>
                    <td>
                        <s:textfield name="name" label="姓名" size="16"/>
                    </td>
                    <td>
                        <s:select name="sex" label="性别" list="{'男','女'}"/>
                    </td>
                    <td>
                        <s:textfield name="age" label="年龄"/>
                    </td>
                    <td>
                        <s:textfield name="weight" label="体重"/>
                    </td>
                    <td colspan="2">
                        <s:submit value="提交"/>
                        <s:reset value="清除"/>
                    </td>
                </tr>
            </table>
        </s:form>
    </body>
</html>
