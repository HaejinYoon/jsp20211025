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
.container-fluid{
	border: 2px solid green;
}
.col{
	border: 2px solid red;
}
.col-8 {
	border: 2px solid red;
}
.col-4 {
	border: 2px solid darkred;
}
.col-7 {
	border: 2px solid darkred;
}
</style>

<title>07 GRID</title>
</head>
<body>

<!-- .container-fluid>.row>.col+.col-7+.col -->
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<h2>SIDE MENU</h2>
			<!-- h3*20>lorem1 -->
			<h3>Lorem.</h3>
			<h3>Repellendus.</h3>
			<h3>Fugiat?</h3>
			<h3>Praesentium.</h3>
			<h3>Eius.</h3>
			<h3>Omnis.</h3>
			<h3>Molestias.</h3>
			<h3>Non!</h3>
			<h3>Veritatis.</h3>
			<h3>Quaerat!</h3>
			<h3>Deleniti.</h3>
			<h3>Possimus!</h3>
			<h3>Laudantium.</h3>
			<h3>Dicta.</h3>
			<h3>Dicta.</h3>
			<h3>Ullam.</h3>
			<h3>Labore.</h3>
			<h3>Praesentium.</h3>
			<h3>Impedit.</h3>
			<h3>Sit.</h3>
		</div>
		<div class="col-7">
			<!-- (h1>lorem3^p>lorem)*10 -->
			<h1>Lorem ipsum dolor.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel amet perferendis inventore nihil voluptate ex laboriosam nemo nobis et expedita reiciendis excepturi eius fuga temporibus sed quibusdam consequatur dolor totam.</p>
			<h1>Iusto vel quae!</h1>
			<p>Perspiciatis deserunt corrupti quaerat ab fuga rem asperiores molestiae similique inventore quibusdam animi ullam ipsam voluptatibus quam eius! Nostrum harum recusandae aut unde est nam odio ab animi architecto a?</p>
			<h1>Minima ab veniam.</h1>
			<p>Eum aut ratione quae iusto beatae rem adipisci! Labore cum recusandae dolor facere quaerat culpa possimus mollitia ipsum? Nisi saepe quo et libero veritatis optio amet aliquam est architecto impedit.</p>
			<h1>Nemo blanditiis modi!</h1>
			<p>Excepturi vitae sit suscipit perspiciatis. Fuga hic id ipsum eos deserunt repudiandae illo perspiciatis eaque eveniet possimus similique totam in cumque quis quod nulla alias. Adipisci numquam hic laboriosam officiis!</p>
			<h1>Nisi quasi velit!</h1>
			<p>Alias ratione voluptates iure rerum recusandae nihil sed veniam optio ex soluta praesentium explicabo consequuntur non dolor fugit quos doloribus eius magni placeat beatae corrupti minima iusto porro eos veritatis.</p>
			<h1>Nam impedit dicta.</h1>
			<p>Repellat maxime expedita esse a perspiciatis rerum vitae numquam voluptatem quam sed excepturi est sunt perferendis corrupti culpa laboriosam omnis in maiores. Ut vel quaerat non fugiat explicabo laboriosam sed.</p>
			<h1>Facere labore quos!</h1>
			<p>Quidem nulla esse est et suscipit. Nulla ad culpa veritatis facilis blanditiis in nihil atque libero. Perspiciatis earum adipisci quidem dolore animi possimus saepe dicta officia blanditiis doloremque cumque minus.</p>
			<h1>Quae quis ex?</h1>
			<p>A numquam incidunt soluta veritatis. Placeat ab eum? Adipisci iure perspiciatis reprehenderit voluptate cum quos quidem quis accusantium dolorem fugit praesentium libero quas nesciunt doloribus dolorum et sit unde odio.</p>
			<h1>Mollitia cumque dolorum.</h1>
			<p>Repudiandae perferendis architecto vero ullam nam sint esse quibusdam tenetur ad eveniet modi officia quis enim beatae neque veritatis maiores? Officiis libero nobis fuga quae ratione quibusdam voluptatum saepe dolores?</p>
			<h1>Architecto odit autem?</h1>
			<p>Eveniet dolores perspiciatis nisi veniam nemo illum blanditiis ad aliquid minus voluptates maxime quasi ab ipsa repellat inventore a eligendi? Soluta laborum eius perferendis architecto tempora aliquid maxime aut quas.</p>
		</div>
		<div class="col">
			<h1>Advertisement</h1>
		</div>
	</div>
</div>

<hr>
<div class="container-fluid">
	<div class="row">
		<div class="col-8">Advertisement</div>
		<div class="col-4">
			Login <br>
			<div class="row">
				<div class="col">
					ID : <input type="text">
					PW : <input type="password" name="" id="">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="submit" value="로그인">				
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-8">
				News Stands <br>
			<div class="row">
				<div class="col">중앙</div>
				<div class="col">매일</div>
				<div class="col">연합</div>
				<div class="col">SBS</div>
				<div class="col">KBS</div>
				<div class="col">MBC</div>
			</div>
			<div class="row">
				<div class="col">YTN</div>
				<div class="col">국민</div>
				<div class="col">일간스포츠</div>
				<div class="col">코리아헤럴드</div>
				<div class="col">한국일보</div>
				<div class="col">WIKITREE</div>
			</div>
		</div>
		<div class="col-4">
			ISSUES
		</div>
	</div>
</div>

<%

%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>