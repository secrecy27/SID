<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="index.jsp"
					data-animate-hover="bounce"> <img src="img/logo.png"
					alt="Obaju logo" class="hidden-xs"> <img
					src="img/logo-small.png" alt="Obaju logo" class="visible-xs"><span
					class="sr-only">Obaju - go to homepage</span>
				</a>
				<div class="navbar-buttons">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigation">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>
					<a class="btn btn-default navbar-toggle" href="basket.jsp"> <i
						class="fa fa-shopping-cart"></i> <span class="hidden-xs">3
							items in cart</span>
					</a>
				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li class="dropdown yamm-fw"><a href="Apage.jsp"
						class="dropdown-toggle">Apage <b class="caret"></b></a></li>

					<li class="dropdown yamm-fw"><a href="Bpage.jsp"
						class="dropdown-toggle">Bpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Cpage.jsp"
						class="dropdown-toggle">Cpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Dpage.jsp"
						class="dropdown-toggle">Dpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Hpage.jsp"
						class="dropdown-toggle">Hpage <b class="caret"></b></a></li>
				</ul>

			</div>

			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="basket.jsp" class="btn btn-primary navb
					ar-btn"><i
						class="fa fa-shopping-cart"></i><span class="hidden-sm">3
							items in cart</span></a>
				</div>
				<!--/.nav-collapse -->

				<div class="navbar-collapse collapse right"
					id="sear
		ch-not-mobile">
					<button type="button" class="btn navbar-btn btn-primary"
						data-toggle="collapse" data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>
				</div>

			</div>

			<div class="collapse clearfix" id="search">

				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">

							<button type="submit" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>

						</span>
					</div>
				</form>

			</div>
			<!--/.nav-collapse -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->

	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">

					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">회원가입 안내</a></li>
						<li><a href="#">일반회원 정보동의</a></li>
						<li><a href="#">일반회원 정보입력</a></li>
						<li><a href="#">일반 회원 가입완료</a></li>
						<li><a href="#">디자이너 정보동의</a></li>
						<li>디자이너 정보입력</li>
					</ul>

				</div>


				<div class="col-md-6">
					<div class="box">
						<h1>본인 포트폴리오 등록</h1>

						<p class="lead">Already our customer?</p>
						<p class="text-muted">디자이너의 경우 포트폴리오만 등록하면 됩니다.</p>

						<hr>

					</div>
				</div>
				<form method="post" action="upload.do" enctype="multipart/form-data">
					1.파일 지정하기 : <input type="file" name="uploadFile01"><br>
					2.파일 지정하기 : <input type="file" name="uploadFile02"><br>
					3.파일 지정하기 : <input type="file" name="uplaodFile03"><br>
					4.파일 지정하기 : <input type="file" name="uplaodFile04"><br>
					<input type="submit" value="전송">
				</form>
				<form action="../SidServlet?commnad=join_form4" method="post">
					<div class="text-center">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-sign-in"></i> 가입 시작하기
						</button>
					</div>
				</form>
			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
		<%@ include file="../include/footer.jsp"%>
</body>

</html>
