<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Customer List</title>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/jdbc05/s22customer" class="btn btn-secondary">← Back to Add Form</a>
		<div class="row">
			<div class="col">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Customer Name</th>
							<th>Contact Name</th>
							<th>Address</th>
							<th>City</th>
							<th>Postal Code</th>
							<th>Country</th>
							<th>Remove</th>
							<th>Modify</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerList }" var="cus" varStatus="status">
							<tr>
								<td>${cus.customerID }</td>
								<td>${cus.customerName }</td>
								<td>${cus.contactName }</td>
								<td>${cus.address }</td>
								<td>${cus.city }</td>
								<td>${cus.postalCode}</td>
								<td>${cus.country }</td>
								<td>
									<c:url value="/jdbc06/s28rcustomerm" var="removeUrl">
										<c:param name="id" value="${cus.customerID }"></c:param>
									</c:url>
									<!-- button.btn.btn-danger>i.fas.fa-trash -->
									<button class="btn btn-danger removeBtn" data-toggle="modal" data-target="#confirmModal1" data-link="${removeUrl }">
										<i class="fas fa-trash"></i>
									</button>
								</td>
								<td>
									<c:url value="/jdbc06/s28customermodify" var="modifyUrl">
										<c:param name="id" value="${cus.customerID }"></c:param>
									</c:url>
									<!-- a.btn.btn-warning>i.fas.fa-pencil -->
									<a href="${modifyUrl }" class="btn btn-warning">
										<i class="fas fa-edit"></i>
									</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="confirmModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
						<a id="removeModalBtn1" href="" type="button" class="btn btn-danger">Delete</a>
					</div>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
		<script>
			$(document).ready(function() {
				$(".removeBtn").click(function() {
					let link = $(this).attr("data-link");
					$("#removeModalBtn1").attr("href", link);
				});
			});
		</script>
</body>
</html>