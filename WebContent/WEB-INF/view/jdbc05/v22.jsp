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

<title>v22</title>
</head>
<body>
<!-- .container>.row>.col>(input+br)*7+input:s -->
<div class="container">
	<div class="row">
		<div class="col">
			<form method="post">
			<h2>Input Supplier's Information</h2><hr>
			<div class="form-group">
				<div class="label">Supplier Name</div>
				<input type="text" class="form-control" name="supplierName">
			</div>
			<div class="form-group">
				<div class="label">Contact Name</div>
				<input type="text" class="form-control" name="contactName">
			</div>
			<div class="form-group">
				<div class="label">Address</div>
				<input type="text" class="form-control" name="address">
			</div>
			<div class="form-group">
				<div class="label">City</div>
				<input type="text" class="form-control" name="city">
			</div>
			<div class="form-group">
				<div class="label">Postal Code</div>
				<input type="text" class="form-control" name="postalCode">
			</div>
			<div class="form-group">
				<div class="label">Country</div>
				<input type="text" class="form-control" name="country">
			</div>
			<div class="form-group">
				<div class="label">Phone</div>
				<input type="text" class="form-control" name="phone">
			</div>
			<div class="form-group">
				<input type="submit" value="Add Supplier" class="btn btn-primary">
			</div>
			</form>
		</div>
	</div>
</div>

<hr>



<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>