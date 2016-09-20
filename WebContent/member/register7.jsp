<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
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
						메인에서 다시 로그인해주세요.
					</div>
				</div>
				<form action="../SidServlet?command=index" method="post">
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
