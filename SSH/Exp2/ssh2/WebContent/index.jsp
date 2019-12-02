<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>计数器页面</title>
</head>
<body>

</body>
<script>
    (function () {
        window.location.href = "${pageContext.request.contextPath}/NumAction"
    })()
</script>
</html>
