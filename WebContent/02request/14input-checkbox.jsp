<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14 Input CheckBox</title>
</head>
<body>

<!-- form>(input:c)*5+br+input:s -->
<p>좋아하는 과일 선택</p>
<form action="">
	<input type="checkbox" name="param1" value="apple">apple
	<input type="checkbox" name="param1" value="berry">strawberry
	<input type="checkbox" name="param1" value="melon">melon
	<input type="checkbox" name="param1" value="subak">watermelon
	<input type="checkbox" name="param1" value="cham">cham
	<br>
	<input type="submit" value="전송">
</form>
<hr>
<%
String[] params = request.getParameterValues("param1");
%>

<ul>
<%
if(params != null){
	for(String v : params){
		out.print("<li>");
		out.print(v);
		out.print("</li>");
	}
}
%>
</ul>
</body>
</html>