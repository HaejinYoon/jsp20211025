<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05Form Elem</title>
</head>
<body>
<h1>Form Element</h1>
<form> <%-- 인풋을 받을 것들은 form안에 작성 --%>
	<input name="q"><br>
	<input name="name"><br>
	<input type="submit">
</form>

<hr>

<p><%= request.getParameter("q") %></p>
<p><%= request.getParameter("name") %></p>
</body>
</html>