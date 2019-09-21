<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!String fina=""; %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>我的计算器</title>
</head>
<body bgcolor="#fef5e6">
	<form   action="">
	<h1>我的计算器</h1>
	<hr size="3" color="black"/>
	<p>输入第一个数：<input type="text" name="number1"></p>
	<p>请选择运算方式：<select name="oper">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">*</option>
		<option value="/">/</option>	
	</select>
	</p>
	<p>输入第二个数：<input type="text" name="number2"></p>
    <input type="submit" name="action" value="计算">
    <input type="reset" name="clear" value="重置">
   
</form>
	<%  if(request.getParameter("oper")!=null) {
        if(request.getParameter("number1").matches("^[0-9]*$") && request.getParameter("number2").matches("^[0-9]*$")) {
            switch (request.getParameter("oper")) {
                case "+":
                	fina = String.valueOf(Double.parseDouble(request.getParameter("number1")) + Double.parseDouble(request.getParameter("number2")));
                    break;
                case "-":
                	fina = String.valueOf(Double.parseDouble(request.getParameter("number1")) - Double.parseDouble(request.getParameter("number2")));
                    break;
                case "*":
                	fina = String.valueOf(Double.parseDouble(request.getParameter("number1")) * Double.parseDouble(request.getParameter("number2")));
                    break;
                case "/":
                    if (request.getParameter("number2").equals("0"))
                    	fina = "被除数不能为0";
                    else {
                    	fina = String.valueOf(Double.parseDouble(request.getParameter("number1")) / Double.parseDouble(request.getParameter("number2")));
                    }
                    break;

            }
        }
        else{
        	fina = "两个数只能为数字";
        }
    }
	%>
	 <p>结果：<input type="text"  value=<%=fina%>></p>
</body>
</html>
