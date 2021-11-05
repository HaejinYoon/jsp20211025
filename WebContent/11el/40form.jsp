<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title></title>
</head>
<body>

<form action="40view.jsp" method="post">
	ID : <input type="text" name="id"> <br>
	PW : <input type="password" name="password"> <br>
	E-Mail : <input type="email" name="email"> <br>
	Address : <textarea name="address" id="" cols="30" rows="10"></textarea><br>
	<input type="submit" value="send">
</form>

<%

%>
</body>
</html>