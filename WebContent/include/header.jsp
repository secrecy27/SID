<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>SID - Snow In Dawn</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->
<link href="../css/font-awesome.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/owl.carousel.css" rel="stylesheet">
<link href="../css/owl.theme.css" rel="stylesheet">

<!-- theme stylesheet -->
<link href="../css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="../css/custom.css" rel="stylesheet">

<script src="../js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">
</head>
<body>
	<div id="top">
		<div class="container">
			<div class="col-md-6" data-animation="fadeInDown">
				<ul class="menu">
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
					</li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>

		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="Login">Customer login</h4>
					</div>

					<div class="modal-body">
						<form action="../SidServlet?command=login" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="email-modal"
									name="email" value="${email }" placeholder="email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password-modal"
									name="pwd" value="${pwd}" placeholder="password">
							</div>

							<p class="text-center">
								<button class="btn btn-primary">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" style="padding:2px; padding-right:0px" href="../member/index.jsp"> <img src="../img/SIDlogo.png"
					alt="Obaju logo" style="width:120px"> <span
					class="sr-only">Snow In Dawn</span>
				</a>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" style="padding-left:0px" id="navigation">

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="../board/boardList.jsp">INFO</a></li>
					<li class="dropdown yamm-fw"><a href="../member/Cpage.jsp"
						class="dropdown-toggle">Cpage</a></li>
					<li class="dropdown yamm-fw"><a href="../member/Bpage.jsp"
						class="dropdown-toggle">Bpage</b></a></li>
					<li class="dropdown yamm-fw"><a href="../member/Apage.jsp"
						class="dropdown-toggle">Apage</b></a></li>
					<li class="dropdown yamm-fw"><a href="../SidServlet?command=list_dpage"
						class="dropdown-toggle">Dpage</a></li>
					<li class="dropdown yamm-fw"><a href="../member/Hpage.jsp"
						class="dropdown-toggle">Hpage</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->
	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<script src="../js/jquery-1.11.0.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie.js"></script>
	<script src="../js/waypoints.min.js"></script>
	<script src="../js/modernizr.js"></script>
	<script src="../js/bootstrap-hover-dropdown.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/front.js"></script>
</body>
</html>