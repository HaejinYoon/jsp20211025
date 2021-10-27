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
	<input type="date" name="param1"><br>
	<input type="number" name="param2"><br>
	<input type="submit">
</form>

<hr>

<%= request.getParameter("param1") %>

<%
//int a = request.getParameter("param2");
String param2 = request.getParameter("param2");


try{
int a = Integer.parseInt(param2);//numberFormationException
out.print("<br>");
out.print(a);
	
}catch (NumberFormatException e){
	out.print("<p>변환할 수 없는 형식</p>");
	e.printStackTrace();
}
%>
</body>
</html>