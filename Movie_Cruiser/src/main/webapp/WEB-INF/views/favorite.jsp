<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<style>
.htrack {
	color: white;
	background-color: black;
	font: size 30;
	padding-top: 10px;
	padding-left: 20px;
}

.benefit {
	background-color: #33cccc;
}

.log {
	background-color: #9999FF;
}

.material-icons {
	vertical-align: middle;
}

#iconsize {
	font-size: 18px;
}

.image {
	width: 100%;
}

.title {
	font-size: 20px;
	font-weight: bolder;
}

.title1 {
	font-size: 30px;
	font-weight: bolder;
	color: #df0c41;
	margin-bottom: 20px;
	margin-left: 20px;
	margin-top: 20px;
}

.price {
	padding-top: 10px;
	font-size: 13px;
	text-align: right;
	color: #685e5e;
}

.delivery {
	text-align: right;
}

p {
	padding-top: 20px;
}

.logo {
	height: 60px;
	width: 60px;
	padding-left: 10px;
}

.free {
	font-size: 12px;
	color: white;
	background-color: #079494;
}

footer {
	text-align: left;
	position: relative;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: black;
	height: 40px;
	color: white;
	margin-top: 10px;
	padding-left: 10px;
}

.statusActive {
	background-color: green;
	border-radius: 5px;
	padding: 1px;
	color: white;
}

.statusInactive {
	background-color: red;
	border-radius: 5px;
	color: white;
	padding: 1px;
}

.text-title {
	font-size: 12px;
}

.findfood {
	color: white;
	float: left;
}

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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
	
</script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark mb-3">
		<div class="navbar-brand title">Movie Cruiser</div>

		<div class="navbar-expand-md">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav active">
					<li class="nav-item"><a class="nav-link" style="color: white;"
						href="menu_item_list_customer"><i class="fas fa-tape"
							id="iconsize"></i> Movie List</a></li>


				</ul>
			</div>
		</div>
	</nav>

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Action</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Movie Removed from favorites..</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
	<% int count = 0; %>
	

	<div class="container-fluid">
		<div class="row">
			<c:forEach items="${inf}" var="temp">
				<% count++; %>
				<div class="col-sm-3">
					<div class="card">
						
						<div class="card-body">
							<div class="card-title title">
								<div class="row">
									<div class="col-7">
										<label> ${temp.title} </label>
									</div>

									<div class="col-5">
										<div class="price">${temp.boxOffice}</div>
									</div>
								</div>
							</div>
							<div class="card-text">
								<div class="row">
									<div class="col-6 text-title">
										<div>
											<c:choose>
												<c:when test="${temp.active}">
													<label class="statusActive">Active</label>
													<label> ${temp.genre} </label>
												</c:when>
												<c:otherwise>
													<label class="statusInactive">Inactive</label>
													<label> ${temp.genre} </label>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="col-6 text-title">
										<div class="float-right">
											<div>
												<i class="far fa-clock"></i> Launch
											</div>
											<div>${temp.dateOfLaunch}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6 addCart">
										<a href="deleteItem?id=${temp.id}">
											<button type="button" class="btn float-right btn-danger"
												data-toggle="modal" data-target="#myModal">
												<i class="material-icons">delete_forever</i> Remove
											</button>
										</a>
									</div>
									<div class="col-6"></div>
								</div>

							</div>
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
		<div class="title1">
		Favorites <span class="badge badge-success"><%=count %></span>
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