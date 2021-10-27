<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16 Input Radio Button</title>
</head>
<body>

<!-- form>(input:r)*3+input:s -->
<form action="">
	<input type="radio" name="param" value="value1" id=""> value1
	<input type="radio" name="param" value="value2" id=""> value2
	<input type="radio" name="param" value="value3" id=""> value3
	<br>
	<!-- (input:r[name=param2])*3 -->
	<input type="radio" name="param2" value="val1" id=""> v1
	<input type="radio" name="param2" value="val2" id=""> v2
	<input type="radio" name="param2" value="val3" id=""> v3
	
	<input type="submit" value="Send">
</form>

<hr>
<%
String val = request.getParameter("param");

if(val != null){
	out.print(val);
}
%>
</body>
</html>