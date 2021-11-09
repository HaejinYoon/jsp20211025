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
<style type="text/css">
	table, td, th {
		border: 1px solid black;
	}
	table {
		width: 100%;
		border-collapse: collapse;
	}
</style>
<title>22 VARSTATUS</title>
</head>
<body>
<%
pageContext.setAttribute("list", new String[] {"rm", "jimin", "jin", "v"});
%>

<c:forEach items="${list }" var="item" varStatus="status"><%-- LoopTagStatus --%>
	${status.current } : ${item } <br>
</c:forEach>

<hr>
<table>
	<!-- tr>th*9 -->
	<tr>
		<th>ITEM</th>
		<th>INDEX</th>
		<th>COUNT</th>
		<th>BEGIN</th>
		<th>END</th>
		<th>STEP</th>
		<th>FIRST</th>
		<th>LAST</th>
		<th>CURRENT</th>
	</tr>
	<c:forEach items="${list }" var="item" varStatus="status"><%-- LoopTagStatus --%>
		<tr>
		 	<th>${item } <br></th>
		 	<th>${status.index }</th>
		 	<th>${status.count }</th>
		 	<td>${status.begin }</td>
			<td>${status.end }</td>
			<td>${status.step }</td>
			<td>${status.first }</td>
			<td>${status.last }</td>
			<td>${status.current }</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>