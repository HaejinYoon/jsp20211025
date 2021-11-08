<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>51 LOGICAL EX</title>
</head>
<body>
<%
pageContext.setAttribute("x", 6);
pageContext.setAttribute("y", 3);
%>

<p>${x lt 10 and y gt 1 }</p>
<p>${x < 10 && y > 1 }</p>

<p>${x eq 5 or y eq 5 }</p>
<p>${x == 5 || y == 5 }</p>

<p>${not (x eq y) }</p>
<p>${! (x==y) }</p>

</body>
</html>