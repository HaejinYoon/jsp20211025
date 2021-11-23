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

<title>v18</title>
</head>
<body>
	<!-- .container>.row>.col>form -->
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="">
				<!-- .form-group>label+select.form-control#select1>option*3 -->
				<div class="form-group">
					<label for="select1">Select Nations</label>
					<select name="country" id="select1" class="form-control">
						<!-- <option value="UK">UK</option> -->
						
						<c:forEach items="${cusCountryList }" var="country">
							<option value="${country }" ${country eq param.country ? 'selected' : '' }>${country }</option>
						</c:forEach>
					</select>
				</div>
				<!-- input:s.btn.btn-primary -->
				<input type="submit" value="Search" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>
	<hr>
	<!-- .container>.row>.col>form -->
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="">
				<!-- .input-group>select.custom-select>option^.input-group-append>button.btn.btn-outline-secondary -->
				<div class="input-group">
					<select name="country" id="" class="custom-select">
					<c:forEach items="${cusCountryList }" var="country">
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
	
<!-- .container>.row>.col>h1{Customers} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Customers List</h1>
				<!-- table.table>thead>tr>th*4^^>tbody -->
				<table class="table">
					<thead>
						<tr>
							<th>Customer ID</th>
							<th>Customer Name</th>
							<th>Contact Name</th>
							<th>Address</th>
							<th>City</th>
							<th>Postal Code</th>
							<th>Country</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers }" var="customer">
							<tr>
								<td>${customer.customerID }</td>
								<td>${customer.customerName }</td>
								<td>${customer.contactName }</td>
								<td>${customer.address }</td>
								<td>${customer.city }</td>
								<td>${customer.postalCode }</td>
								<td>${customer.country }</td>
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