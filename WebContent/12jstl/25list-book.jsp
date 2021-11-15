<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
p{
	margin: 20px;
}
h1 {
	margin: 20px;
}

hr {
	border-width: 5px;
}

form {
	margin: 20px;
}

.form-control {
	margin-bottom: 10px;
}

th {
	text-align: center;
}

.c1 {
	width: 120px;
}

.table td {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.book_regi {
	margin: 10px;
}
</style>

<title>BOOK LIST</title>
</head>
<body>
	<c:choose>
		<c:when test="${fn:length(books) eq 1 }">
			<h1>Book List (${fn:length(books) } Book)</h1>
		</c:when>
		<c:otherwise>
			<h1>Book List (${fn:length(books) } Books)</h1>
		</c:otherwise>
	</c:choose>
	<hr>
	<c:if test="${empty books }">
		<p>No books registered.</p>
	</c:if>

	<c:if test="${not empty books }">
		<table class="table table-hover">
			<thead class="thead-dark">
				<tr>
					<th class="c1">Modify/Delete</th>
					<th>#</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Publisher</th>
					<th>Stock</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${books }" var="book" varStatus="vs">
					<tr>
						<c:url value="25delete.jsp" var="deleteUrl">
							<c:param name="index" value="${vs.index }"></c:param>
						</c:url>
						<c:url value="25modify.jsp" var="modifyUrl">
							<c:param name="index" value="${vs.index }"></c:param>
						</c:url>
						<td>
							<a class="btn btn-secondary" href="25modify.jsp?index=${vs.index }">
								<i class="fas fa-edit"></i>
							</a>
							<%-- <a class="btn btn-danger" href="25delete.jsp?index=${vs.index }"><i class="fas fa-trash-alt"></i></a> --%>
							<button type="button" class="btn btn-danger delete-modal-button" data-toggle="modal" data-target="#exampleModal" data-href="25delete.jsp?index=${vs.index }">
								<i class="fas fa-trash-alt"></i>
							</button>
						</td>
						<td>
							<c:out value="${vs.count }"></c:out>
						</td>
						<td>
							<c:out value="${book.title }"></c:out>
						</td>
						<td>
							<c:out value="${book.writer }"></c:out>
						</td>
						<td>
							<c:out value="${book.price }"></c:out>
						</td>
						<td>
							<c:out value="${book.publisher }"></c:out>
						</td>
						<td>
							<c:out value="${book.stock }"></c:out>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<hr>
	<a href="25book-form.jsp" class="book_regi">
		<button type="button" class="btn btn-secondary">
			<i class="fas fa-plus-square"></i>
			Book Registration
		</button>
	</a>

	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Delete Confirmation</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Are you sure want to delete?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					<a id="modal-accept-button1" href="${data-href }" class="btn btn-danger">Confirm Delete</a>
				</div>
			</div>
		</div>
	</div>

	<%
		
	%>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

	<script>
		$(document).ready(function() {
			$(".delete-modal-button").click(function() {
				let href = $(this).attr("data-href");
				$("#modal-accept-button1").attr("href", href);
			});
		});
	</script>
</body>
</html>