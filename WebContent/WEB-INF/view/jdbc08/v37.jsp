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

<title>v37</title>
</head>
<body>
<!-- form>input*8 -->
<div class="container">
		<div class="row">
			<div class="col">
<h1>mytable11 insert</h1>
<form action="" method="post">
<div class="form-group">
						<label for="input1">Name</label>
	<input type="text"  class="form-control" value="Haejin" name="name">
	</div>
	<div class="form-group">
						<label for="input1">Age</label>
	<input type="number" class="form-control"  step="1" name="age"></div>
	<div class="form-group">
						<label for="input1">Birth Date</label>
	<input type="date"  class="form-control"  name="birth"> </div>
	<!-- <input type="text" maxlength="3" name="col4"> <br>
	<input type="text" name="col5"> <br>
	<input type="date" name="col6"> <br>
	<input type="datetime-local" name="col7"> <br> -->
	<input type="submit" value="Submit" class="btn btn-primary"> 
	<a href="${pageContext.request.contextPath }/jdbc08/s38"  class="btn btn-secondary">Show List</a> <br>
</form>
</div>
		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>