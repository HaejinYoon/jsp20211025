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

<style>
.row{
	background-color:silver;
}
.row :nth-child(even){
	background-color: seaGreen;
}
.row :nth-child(odd){
	background-color: springGreen;
}
</style>

<title>05 GRID</title>
</head>
<body>

<!-- .container>h1>lorem5^p>lorem -->
<div class="container">
	<h1>Lorem ipsum dolor sit amet.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam qui beatae officiis quis aperiam assumenda facilis blanditiis necessitatibus eligendi possimus quasi repellat reprehenderit alias optio eveniet voluptas similique tenetur consectetur.</p>
</div>

<hr>

<!-- .container>.row -->
<div class="container">
	<div class="row">
		<div class="col">
			<!-- h1>lorem5^p>lorem -->
			<h1>Lorem ipsum dolor sit amet.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic quo harum error nam expedita incidunt accusamus veritatis debitis libero dolorum rerum possimus nemo quibusdam rem unde. Similique tempora maxime iusto.</p>
		</div>
	</div>
</div>

<hr>

<!-- .container>.row>.col*12>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Odit.</div>
		<div class="col">Voluptatem!</div>
		<div class="col">Nemo.</div>
		<div class="col">Ipsa.</div>
		<div class="col">Aut.</div>
		<div class="col">Architecto.</div>
		<div class="col">Necessitatibus!</div>
		<div class="col">Magnam.</div>
		<div class="col">A!</div>
		<div class="col">Iste?</div>
		<div class="col">Dolore.</div>
	</div>
</div>

<hr>

<!-- .container>.row>.col*4>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Error.</div>
		<div class="col">Quo!</div>
		<div class="col">Est.</div>
	</div>
</div>

<%

%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>