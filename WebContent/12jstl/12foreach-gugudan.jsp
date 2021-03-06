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

<title>12 GUGUDAN</title>
</head>
<body>
<h1>forEach 구구단 n단</h1>

<c:if test="${empty param.dan }">
	<p>단을 입력해주세요.(숫자)</p>
</c:if>
<c:if test="${not empty param.dan }">
	<c:forEach begin="1" end="9" var="i">
		<p>
		${param.dan } X ${i } = ${param.dan*i } <br>
		</p>
	</c:forEach>
</c:if>
<%--
dan 파라미터를 사용해서 구구단 출력
--%>
</body>
</html>