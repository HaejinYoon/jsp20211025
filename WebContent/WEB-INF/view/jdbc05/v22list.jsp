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
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 14px;
}

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: darkred;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
  width : 90px;
  
}

#myBtn:hover {
  background-color: red;
}
</style>
<title>Suppliers List</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
			<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fas fa-chevron-up"></i> Top</button>
				<a href="${pageContext.request.contextPath }/jdbc05/s22" class="btn btn-dark sticky-top" style="width:1110px"><i class="fas fa-chevron-left"></i> Back to Add Form</a> <hr>
				<h1>Supplier List</h1>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Supplier Name</th>
							<th>Contact Name</th>
							<th>Address</th>
							<th>City</th>
							<th>Postal Code</th>
							<th>Country</th>
							<th>Phone Number</th>
							<th>Remove</th>
							<th>Modify</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${supplierList }" var="supp" varStatus="status">
							<tr>
								<td>${supp.supplierID }</td>
								<td>${supp.supplierName }</td>
								<td>${supp.contactName }</td>
								<td>${supp.address }</td>
								<td>${supp.city }</td>
								<td>${supp.postalCode}</td>
								<td>${supp.country }</td>
								<td>${supp.phone }</td>
								<td>
									<c:url value="/jdbc06/s28rm" var="removeUrl">
										<c:param name="id" value="${supp.supplierID }"></c:param>
									</c:url>
									<!-- button.btn.btn-danger>i.fas.fa-trash -->
									<button class="btn btn-danger removeBtn" data-toggle="modal" data-target="#confirmModal1" data-link="${removeUrl }">
										<i class="fas fa-trash"></i>
									</button>
								</td>
								<td>
									<c:url value="/jdbc06/s28" var="modifyUrl">
										<c:param name="id" value="${supp.supplierID }"></c:param>
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
		//Get the button
		var mybutton = document.getElementById("myBtn");

		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
		  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		    mybutton.style.display = "block";
		  } else {
		    mybutton.style.display = "none";
		  }
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
		  document.body.scrollTop = 0;
		  document.documentElement.scrollTop = 0;
		}
	</script>
</body>
</html>