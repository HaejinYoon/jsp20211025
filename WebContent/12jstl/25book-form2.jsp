<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    </script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
	h1 {
		margin: 20px;
	}
	hr{
		border-width : 5px;
	}
	form {
		margin: 20px;
	}
	.form-control {
		margin-bottom: 10px;
	}
	a {
		margin : 20px;
	}
	#btn1{
		margin : 20px;
	}
	#book{
		border: 2px solid black;
	}
</style>
<script>
	$(document).ready(function() {
		$("#btn1").click(function () {
			$("div").toggle(3000);
		})
	});
</script>

<title>25 BOOK FORM 2</title>
</head>
<body>
<h1> Book registration</h1>
<hr>
<form action="25process.jsp" method="post">
	<div class="form-group">
		<input type="text" class="form-control" name="title" placeholder="Book Title">
		<input type="text" class="form-control" name="writer" placeholder="Author">
		<input type="number" class="form-control" name="price" placeholder="Price" value="">
		<input type="text" class="form-control" name="publisher" placeholder="Publisher">
		<input type="number" class="form-control" name="stock" value="1">
		<input type="submit" value="Submit" class="btn btn-primary">
	</div>
</form>

<hr>

	<button type="button" class="btn btn-secondary" id="btn1">
		<i class="fas fa-list"></i>
		 Show/Hide Book List 
	</button>

<div id="book" style="display: none">
	<jsp:include page="25list-book.jsp"></jsp:include>
</div>
<%

%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>