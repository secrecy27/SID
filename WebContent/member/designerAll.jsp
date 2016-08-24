<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>SID - Snow in Dawn</title>

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
	<div id="all">
		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<ul class="nav nav-tabs" role="tablist" id="myTab">
							<li role="presentation" class="active"><a href="#ongoing"
								aria-controls="ongoing" role="tab" data-toggle="tab">진행중인 작업</a></li>
							<li role="presentation"><a href="#waiting"
								aria-controls="waiting" role="tab" data-toggle="tab">대기중인 작업</a></li>
							<li role="presentation"><a href="#completion"
								aria-controls="completion" role="tab" data-toggle="tab">완료된	작업</a></li>
							<li role="presentation"><a href="#failure"
								aria-controls="failure" role="tab" data-toggle="tab">실패한 작업</a></li>
						</ul>

						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="ongoing"></div>
							<div role="tabpanel" class="tab-pane" id="waiting">2</div>
							<div role="tabpanel" class="tab-pane" id="completion">3</div>
							<div role="tabpanel" class="tab-pane" id="failure">4</div>
						</div>

						<script>
							$(function() {
								$('#myTab a:first').tab('show')
							})
						
							$.ajax({
								url : url, //sidservlet
								param : paramValue, //보낼  파라미터
								success : function(data) {
									$("#ongoing").empty().append(data);
								}
							});
						
							var newPageLoad = function() {
						
								$.ajax({
									url : urlString,
									param : paramValue,
									success : function(data) {
										// newPage 에 뿌려줄 data
										$("#newPage").empty().append(data);
									}
								});
						
							}
						</script>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- /#content -->



	<!-- *** COPYRIGHT ***
 _________________________________________________________ -->
	<div id="copyright">
		<div class="container">
			<div class="col-md-6">
				<p class="pull-left">Â© 2015 Your name goes here.</p>

			</div>
			<div class="col-md-6">
				<p class="pull-right">
					Template by <a href="http://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
					with support from <a href="https://kakusei.cz">Kakusei</a>
					<!-- Not removing these links is part of the licence conditions of the template. Thanks for understanding :) -->
				</p>
			</div>
		</div>
	</div>
	<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->




	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap-hover-dropdown.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/front.js"></script>
</body>

</html>
