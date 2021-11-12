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

<title>10 BUTTON</title>
</head>
<body>
<!-- button.btn.btn-info*10>lorem1 -->
<button class="btn">Lorem.</button>
<button class="btn btn-primary">Illum!</button>
<button class="btn btn-secondary">Similique?</button>
<button class="btn btn-success">Dolore.</button>
<button class="btn btn-info">A.</button>
<button class="btn btn-warning">Nostrum.</button>
<button class="btn btn-danger">Autem.</button>
<button class="btn btn-dark">Magnam.</button>
<button class="btn btn-light">Sed.</button>
<button class="btn btn-link">Incidunt.</button>

<hr>

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary btn-lg">Illum!</button>
<button class="btn btn-secondary btn-sm">Similique?</button>
<button class="btn btn-success btnsm">Dolore.</button>
<button class="btn btn-info btn-xs">A.</button>
<button class="btn btn-warning btn-xs">Nostrum.</button>
<button class="btn btn-danger">Autem.</button>
<button class="btn btn-dark">Magnam.</button>
<button class="btn btn-light">Sed.</button>
<button class="btn btn-link">Incidunt.</button>

<hr>

<!-- outline buttons -->
<!-- button.btn.btn-outline-primary*8>lorem1 -->
<button class="btn btn-outline-primary">Lorem.</button>
<button class="btn btn-outline-secondary">Labore.</button>
<button class="btn btn-outline-success">Ullam.</button>
<button class="btn btn-outline-info">Quo.</button>
<button class="btn btn-outline-warning">Repudiandae.</button>
<button class="btn btn-outline-danger">Soluta.</button>
<button class="btn btn-outline-light">Praesentium?</button>
<button class="btn btn-outline-dark">Quos.</button>

<hr>

<!-- button.btn.btn-primary>lorem1 -->
<button class="btn btn-primary">Lorem.</button>

<input type="button" value="lorem" class="btn btn-primary">
<input type="submit" value="submit" class="btn btn-primary">

<a href="#" class="btn btn-primary"> lorem </a>



<%

%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>