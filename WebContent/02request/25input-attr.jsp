<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>25 Input Attribute</title>
</head>
<body>

<!-- form>(input)*5+input:s -->
<form action="">
	<input type="text" name="param1" required value="required"> <br>
	<input type="text" name="param2" value="초기값"> <br>
	<input type="text" name="param3" disabled value="disabled"> <br>
	<input type="text" name="param4" readonly value="read only"> <br>
	<input type="text" name="param5" placeholder="hint ex)name"> <br>
	<input type="email" name="param6"> <br>
	<input type="text" name="param7" pattern="[0-9]{5}"> <br>
	<input type="submit" value="Transmit">
</form>

<hr>
param1 : <%=request.getParameter("param1") %> <br>
param2 : <%=request.getParameter("param2") %> <br>
param3 : <%=request.getParameter("param3") %> <br>
param4 : <%=request.getParameter("param4") %> <br>
param5 : <%=request.getParameter("param5") %> <br>
param6 : <%=request.getParameter("param6") %> <br>
param7 : <%=request.getParameter("param7") %> <br>
</body>
</html>