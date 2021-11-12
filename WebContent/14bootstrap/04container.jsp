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
	.container{
		background-color: skyblue;
	}
	div{
		background-color: silver;
	}
	.container-fluid{
		background-color: springgreen;
	}
</style>

<title>04 CONTAINER</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem ab eum placeat nam officiis repudiandae eos odio excepturi perspiciatis et inventore cum sequi quas voluptatum a eveniet beatae totam quidem.</div>
<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius eligendi et atque eaque fugit eveniet quas repellat veritatis beatae nobis ad praesentium omnis reprehenderit nostrum eum magni asperiores alias ratione.</div>

<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione placeat molestiae aliquam qui voluptatem quam est iste aspernatur consequuntur porro ducimus facere alias dicta eius dolorem aliquid quos quod dolores?</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>