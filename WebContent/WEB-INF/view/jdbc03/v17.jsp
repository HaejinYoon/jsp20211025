<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>v17</title>
</head>
<body>
	<!-- .container>.row>.col>form -->
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="">
				<!-- .input-group>select.custom-select>option^.input-group-append>button.btn.btn-outline-secondary -->
				<div class="input-group">
					<select name="country" id="" class="custom-select">
					<c:forEach items="${countryList }" var="country">
						<option value="${country }" ${country eq param.country ? 'selected' : '' }>${country }</option>
						</c:forEach>
					</select>
					<div class="input-group-append">
						<button class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- .container>.row>.col>h1{Suppliers List} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Suppliers List</h1>
				<!-- table.table>thead>tr>th*8^^>tbody -->
				<table class="table">
					<thead>
						<tr>
							<th>Supplier ID</th>
							<th>Supplier Name</th>
							<th>Contact Name</th>
							<th>Address</th>
							<th>City</th>
							<th>Postal Code</th>
							<th>Country</th>
							<th>Phone</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${suppliers }" var="sup">
							<tr>
								<td>${sup.supplierID }</td>
								<td>${sup.supplierName }</td>
								<td>${sup.contactName }</td>
								<td>${sup.address }</td>
								<td>${sup.city }</td>
								<td>${sup.postalCode }</td>
								<td>${sup.country }</td>
								<td>${sup.phone }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>