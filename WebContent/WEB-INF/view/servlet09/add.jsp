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

<title>Book Add Form</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<!-- MAIN CONTENT -->
				<h2>Book Registration</h2>
				<form method="post">
					<!-- .form-group*6>.label+input.form-control -->
					<div class="form-group">
						<label>Title</label>
						<input type="text" class="form-control" name="title" value="JAVA">
					</div>
					<div class="form-group">
						<label>Author</label>
						<input type="text" class="form-control" name="writer" value="Lee">
					</div>
					<div class="form-group">
						<label>Price</label>
						<input type="number" class="form-control" name="price" value="24000">
					</div>
					<div class="form-group">
						<label>Publisher</label>
						<input type="text" class="form-control" name="publisher" value="apub">
					</div>
					<div class="form-group">
						<label>Stock</label>
						<input type="number" class="form-control" name="stock" value="28">
					</div>
					<input type="submit" value="Register" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>