<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>35 IMPLICIT OBJECT</title>
</head>
<body>
<h1>El 기본객체 11개</h1>

<p>pageContext : ${pageContext }</p>
<p>pageScope : ${pageScope }</p>
<p>requestScope : ${requestScope }</p>
<p>sessionScope : ${sessionScope }</p>
<p>applicationScope : ${applicationScope }</p>
<p>param : ${param }</p>
<p>paramValues : ${paramValues }</p>
<p>header : ${header }</p>
<p>headerValues : ${headValues }</p>
<p>cookie : ${cookie }</p>
<p>initParam : ${initParam }</p>
<%

%>
</body>
</html>