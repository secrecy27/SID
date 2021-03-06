<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						<li><a href="#">일반 회원 가입완료</a></li>
						<li><a href="#">디자이너 정보동의</a></li>
						<li>디자이너 정보입력</li>
					</ul>
				</div>
				<div class="col-md-6">
					<div class="box">
						<h1>본인 포트폴리오 등록</h1>
						<p class="text-muted">디자이너의 경우 포트폴리오만 등록하면 됩니다.</p>
						<hr>
					</div>
				</div>
				<form method="post" enctype="multipart/form-data" name="frm">
					1.파일 지정하기 : <input type="file" name="uploadFile01"><br>
					2.파일 지정하기 : <input type="file" name="uploadFile02"><br>
					3.파일 지정하기 : <input type="file" name="uplaodFile03"><br>
					4.파일 지정하기 : <input type="file" name="uplaodFile04"><br>
					<input type="submit" value="전송">
				</form>
				<div class="text-center">
					<button type="button" class="btn btn-primary"
						onclick="return Check()">
						<i class="fa fa-sign-in"></i> 가입 시작하기
					</button>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
		<%@ include file="../include/footer.jsp"%>
		<script>
		function Check(){
			if(document.frm.uploadFile01.value.length==0){
				alert("파일을 지정하세요")
				return false;
			}
			document.frm.action="../SidServlet?command=join_design";
			document.frm.submit();
			return true;
		}
		</script>
</body>

</html>
