<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15 Input Checkbox GetParameterValues</title>
</head>
<body>
<!-- form>(input:c)*5+br+input:s -->
<form action="">
	<input type="checkbox" name="movie" id="" value="withgod"> 신과함께 <br>
	<input type="checkbox" name="moive" id="" value="newworld"> 신세계 <br>
	<input type="checkbox" name="movie" id="" value="equalizer"> 이퀄라이저 <br>
	<input type="checkbox" name="moive" id="" value="crimecity"> 범죄의 세계 <br>
	<input type="checkbox" name="movie" id="" value="spiderman"> 스파이더 맨 <br>
	<br>
	<input type="submit" value="제출">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if(movies != null){
	for(String movie : movies){
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>

</body>
</html>