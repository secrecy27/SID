<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
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
						<ul id="worklist" class="breadcrumb">
							<ul class="nav nav-tabs" role="tablist" id="myTab">
								<li role="presentation" class="active"><a href="#work1"
									aria-controls="home" role="tab" data-toggle="tab"><h3>진행중인 작업</h3></a></li>
								<li role="presentation"><a href="#work2"
									aria-controls="profile" role="tab" data-toggle="tab"><h3>대기중인 작업</h3></a></li>
								<li role="presentation"><a href="#work3"
									aria-controls="messages" role="tab" data-toggle="tab"><h3>완료된 작업</h3></a></li>
								<li role="presentation"><a href="#work4"
									aria-controls="settings" role="tab" data-toggle="tab"><h3>실패한 작업</h3></a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="work1"></div>
								<div role="tabpanel" class="tab-pane" id="work2">2</div>
								<div role="tabpanel" class="tab-pane" id="work3">..3.</div>
								<div role="tabpanel" class="tab-pane" id="work4">.4.</div>
							</div>
							<script>
							  $(function () {
							    $('#myTab a:first').tab('show')
							  })
							</script>
						</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- /#content -->
	</div>
	<!-- /#all -->
</body>

</html>
