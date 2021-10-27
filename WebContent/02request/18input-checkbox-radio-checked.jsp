<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18 Input checkbox radio checked</title>
</head>
<body>

<!-- form>(input:c[name=movie][value])*3+hr+(input:r[name=color][value])*3+br+input:s[value=send] -->
<form action="">
	<input type="checkbox" name="movie" id="" value="action" checked> action
	<input type="checkbox" name="movie" id="" value="family"> family
	<input type="checkbox" name="movie" id="" value="kids"> kids
	<hr>
	<input type="radio" name="color" id="" value="red" checked> red
	<input type="radio" name="color" id="" value="yellow"> yellow
	<input type="radio" name="color" id="" value="blue"> blue
	<br>
	<input type="submit" value="send">
</form>

<hr>
<%
String[] mv = request.getParameterValues("movie");
%>
Selected movies : 
<% 
if(mv!=null){
	for(String item : mv){
		out.print(item+" ");
	}
}
%>
<br>
<%
String clr = request.getParameter("color");
%>
Selected color : <%= clr%>
<%
%>
</body>
</html>