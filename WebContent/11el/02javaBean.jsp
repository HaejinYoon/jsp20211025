<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>02 java Bean</title>
</head>
<body>

<p>java bean 속성(property)중 boolean 타입일 경우 get 메소드 명이 is로 시작</p>

<%--Bean03--%>
<%--
Bean04를 java bean 규칙에 따라서 작성

아래 3개의 속성을 갖도록
String nickName
int age
boolean vip
 --%>
</body>
</html>