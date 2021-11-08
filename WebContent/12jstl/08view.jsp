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

<title>08 VIEW</title>
</head>
<body>
<p>

<c:choose>
	<c:when test="${empty param.name and empty param.age }">
		정보가 입력되지 않았습니다.
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${not empty param.name }">
					${param.name }님
			</c:when>
			<c:otherwise>
					손님
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${empty param.age }">
				나이가 입력되지 않았습니다.
			</c:when>
			<c:when test="${param.age <= 10 }">
				어린이용 추천
			</c:when>
			<c:when test="${param.age <= 20 }">
				청소년용 추천
			</c:when>
			<c:when test="${param.age > 20 }">
				성인용 추천
			</c:when>
		</c:choose>
	</c:otherwise>
</c:choose>
</p>
<a href="08form.jsp">다시 입력</a>
<%-- 
이름과 나이가 입력되지 않았으면
정보를 입력하지 않았습니다.

이름이 입력되지 않았으면
손님
입력 되었으면 name파라미터의 값

나이가 10이하이면
"어린이용 추천"

나이가 20이하이면
"청소년용 추천"

나이가 20초과면
"성인용 추천"

나이가 입력되지 않으면
"나이가 입력되지 않았습니다.

--%>
</body>
</html>