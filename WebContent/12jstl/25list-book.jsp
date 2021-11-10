<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
}
</style>

<title>LIST BOOK</title>
</head>
<body>
<h1>Book List (${fn:length(books) } Books)</h1>

<a href="25book-form.jsp">Book Registration</a>
<c:if test="${empty books }">
	<p>No books registered.</p>
</c:if>

<c:if test="${not empty books }">
	<table>
		<tr>
			<th>#</th>
			<th>제목</th>
			<th>저자</th>
			<th>가격</th>
			<th>출판사</th>
			<th>재고 수량</th>
		</tr>
		<c:forEach items="${books }" var="book" varStatus="vs">
			<tr>
				<td><c:out value="${vs.count }"></c:out></td>
				<td><c:out value="${book.title }"></c:out></td>
				<td><c:out value="${book.writer }"></c:out></td>
				<td><c:out value="${book.price }"></c:out></td>
				<td><c:out value="${book.publisher }"></c:out></td>
				<td><c:out value="${book.stock }"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
<%

%>
</body>
</html>