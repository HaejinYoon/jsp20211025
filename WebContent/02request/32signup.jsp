<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%request.setCharacterEncoding("utf-8");%>
<!-- 파라미터 읽어오기 전에만 실행되면 됨. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>32 sign up</title>
</head>
<body>
<h1>회원가입</h1>
<form action="" method="post">
이름 : <input type="text" name="name" id=""> <br>
email : <input type="email" name="email" id=""> <br>
Password : <input type="password" name="password" id=""> <br>
<input type="submit" value="join">
</form>

<hr>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pw = request.getParameter("password");
%>

<h1>info</h1>
name : <%= name %> <br>
email : <%= email %> <br>
PW : <%= pw %> <br>
</body>
</html>