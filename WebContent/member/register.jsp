<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
</head>
<body>
	<div id="all">
		<div id="content">
			<div class="container">

				<div class="col-md-12">

					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>회원가입 안내</li>
					</ul>

				</div>

				<div class="col-md-6">
					<div class="box">
						<h1>일반 회원가입</h1>

						<p class="lead">Not our registered customer yet?</p>
						<p>With registration with us new world of fashion, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.jsp">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

					</div>
				</div>
				<div class="col-md-6">
					<div class="box">
						<h1>디자이너 회원가입</h1>

						<p class="lead">Already our customer?</p>
						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.
							Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
							amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
							ultricies mi vitae est. Mauris placerat eleifend leo.</p>

					<hr>

					</div>
				</div>
				<br><br><br>
				<form action="register2.jsp" method="post">
					<div class="text-center">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-sign-in"></i> 가입 시작하기
						</button>
					</div>
				</form>
				<br><br><br><br>
				<br><br>

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
<%@ include file="../include/footer.jsp"%>
</body>

</html>
