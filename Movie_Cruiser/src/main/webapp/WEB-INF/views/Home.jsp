<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<title>Movie Cruiser</title>


<style>
.navbar {
	background-color: purple;
	
}

.footer {
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: purple;
	color: white;
	text-align: left;
	position: fixed;
}

.fav {
	float: right;
}

.fav:hover {
	color: red;
}

.row {
	padding-left: 10px;
	padding-right: 10px;
}

* {
	box-sizing: border-box;
}

.headimag {
	width: 100%;
	height: 400px;
}

div#form-box {
	margin-top: -250px;
	text-align: center;
}

div#input-group {
	width: 80%;
	margin: 0 auto 20px;
	position: relative;
	background-color: #fff;
	border: none;
	border-radius: 5px;
}

input#search, label[for="email"] {
	display: inline-block;
	vertical-align: middle;
}

input#search {
	width: calc(100% - 40px);
	padding: 10px;
	border: none;
}

label[for="email"] {
	width: 40px;
	line-height: 40px;
}

button#btn-checkin {
	display: inline-block;
	padding: 6px 10px;
	border: none;
	border-radius: 5px;
	background-color: #EC008c;
	color: #fff;
	text-align: center;
	text-transform: uppercase;
}

#outer {
	width: 100%;
	text-align: center;
}

.inner {
	display: inline-block;
}
</style>
</head>

<body class="container-fluid" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/4/43/Medium_format.jpg');  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
	<header class="header">
		<nav class="navbar navbar-expand-md navbar-dark mb-3">

			<a class="navbar-brand" href="#">Movie Cruiser</a>

		</nav>
	</header>
	<div ></div>

	<div id="outer">
		<div class="inner">
			<a class="btn btn-primary" href="/showPage">Show Customer Movie</a>
		</div>
		<div class="inner">
			<a class="btn btn-primary" href="/admin">Show Admin Movie </a>
		</div>
	</div>


	<footer class="footer">
		<div class="row">
			<div class="col-md-6">
				<p>Copyright &copy; 2019</p>
			</div>
		</div>
	</footer>
</body>








</html>