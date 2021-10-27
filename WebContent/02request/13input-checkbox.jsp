<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>


<form action="">
	<input type="checkbox" name="param1" id="" value="yes"> Agree
	<br>
	<input type="submit" value="동의함">
</form>

<%
String param = request.getParameter("param1");

out.print("<p>");
if(param != null && param.equals("yes")){
	out.print("Agreed");
}else {
	out.print("Disagreed");
}
out.print("</p>");
%>
</body>
</html>