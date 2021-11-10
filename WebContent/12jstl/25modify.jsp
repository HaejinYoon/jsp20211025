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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title></title>
</head>
<body>

<c:set value="${applicationScope.books[param.index] }" var="book"></c:set>

<h1>Book Modify</h1>

<form action="25modify-process.jsp" method="post">
	<input type="hidden" name="index" value="${param.index }"> 
	<br>
	<input type="text" name="title" placeholder="Book Title" value="${book.title }">
	<br>
	<input type="text" name="writer" placeholder="Writer" value="${book.writer }">
	<br>
	<input type="text" name="price" placeholder="Price" value="${book.price }">\
	<br>
	<input type="text" name="publisher" placeholder="Publisher" value="${book.publisher }">
	<br>
	<input type="number" name="stock" value="${book.stock }">권
	<br>
	<input type="submit" value="Modify">
</form>

<br>

<a href="25list-book.jsp">Show Book List</a>

<%

%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>