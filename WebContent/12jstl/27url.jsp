<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>27 URL</title>
</head>
<body>
<h1>JSTL URL tag</h1>
<hr>
<a href="https://www.naver.com">NAVER</a>
<br>
<a href="https://www.naver.com">NAVER2</a>
<br>
<c:url value="https://www.naver.com" var="naverUrl"></c:url>

<a href="${naverUrl }">NAVER3</a>
<br>
<a href="${naverUrl }">NAVER4</a>
<br>

<hr>

<c:url value="25book-form.jsp" var="addBookUrl"></c:url>

<a href="${addBookUrl }">Add Book</a>

<br>

${addBookUrl }

<hr>

<c:url value="25book-form.jsp"></c:url>

<hr>

<a href="<%=request.getContextPath() %>/12jstl/25book-form.jsp">Add Book</a>

<br>

<a href="<c:url value="/12jstl/25book-form.jsp"></c:url>">책 추가하기</a>

<br>

<c:url value = "/12jstl/25book-form.jsp" var="addBookUrl2"></c:url>

<a href="${addBookUrl2 }">Add Book</a>









<%

%>
</body>
</html>