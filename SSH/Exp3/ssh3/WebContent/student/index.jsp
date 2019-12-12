<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<!-- google fonts  -->
        <title>基于SH学生信息管理-起始页</title>
    </head>
    <body>
        <%response.setCharacterEncoding("UTF-8");%>
        <div class="agile-login">
            <br/><br/><br/>
            <font color="white" size="6">基于Struts2+Hibernate5的学生信息管理系统实例，可对学生信息进行增、删、改、查！</font>
           <br><br><br><br>
            <div style="margin:0 auto;"><s:a href="lookMessageAction"><font color="red" size="6" class="agile-login">点此进入</font></s:a></div>
        </div>

		<div class="copyright">
		<p>© 2019学生 信息管理系统 | ZB1018141 </p> 
	</div>
    </body>
</html>