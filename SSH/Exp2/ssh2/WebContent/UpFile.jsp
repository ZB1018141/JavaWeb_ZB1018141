<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>文件的 上传</title>
</head>
<body>
<h2> 文件上传</h2>
    <hr/>
    <form action="UpAction" method="post" enctype="multipart/form-data">
        <s:textfield name="title" label="文件标题"/>
        <br><br>
        <s:file name="upload" label="选择文件"/>
        <br><br>
        <s:submit value="上传"/>
    </form>
</body>
</html>