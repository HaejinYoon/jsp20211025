<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Color</title>
</head>
<body>
<p>좋아하는 색 선택(하나만)</p>

<!-- form>(input:r[name=color][value])*5+input:s -->
<form action="">
	<input type="radio" name="color" id="" value="red"> Red
	<input type="radio" name="color" id="" value="blue"> Blue
	<input type="radio" name="color" id="" value="yellow"> Yellow
	<input type="radio" name="color" id="" value="green"> Green
	<input type="radio" name="color" id="" value="white"> White
	<input type="submit" value="Send">
</form>
<hr>
<%
String clr = request.getParameter("color");
if(clr !=null){
	out.print("<h2 style=color:"+clr+">");
	out.print(clr);
	out.print("</h2>");
}
%>

</body>
</html>