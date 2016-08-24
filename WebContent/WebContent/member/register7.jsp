<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

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

<script src="js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">

<!-- theme stylesheet -->
<link href="../css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">
</head>
<body>
<div id="all">
	<div id="content">
		<div class="container">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">회원가입 안내</a></li>
					<li><a href="#">일반회원 정보동의</a></li>
					<li><a href="#">일반회원 정보입력</a></li>
					<li><a href="#">일반회원 가입완료</a></li>
					<li><a href="#">디자이너 정보동의</a></li>
					<li><a href="#">디자이너 정보입력</a></li>
					<li>디자이너 회원가입완료
				</ul>
			</div>
			<div class="col-md-12">
				<div class="box">
					<h1>축하합니다. 디자이너 회원가입이 완료되었습니다!</h1>
				</div>
			</div>
			<form action="../SidServlet?commnad=join_form4" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">
						<i class="fa fa-sign-in"></i> 메인으로 가기
					</button>
				</div>
			</form>
			<br>
		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
	<%@ include file="../include/footer.jsp"%>
	</body>
</html>
