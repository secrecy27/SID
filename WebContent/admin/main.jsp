<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>관리자 페이지</title>
</head>
<body>
<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">전체보기</h3>
							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked category-menu">
									<li><a href="Awrite.jsp">Apage 추가 -기본 옷 </a></li>
								</ul>
								<ul class="nav nav-pills nav-stacked category-menu">
									<li><a href="../member/Cwrite.jsp">Cpage 추가 - 완성 옷</a></li>
								</ul>
								<ul class="nav nav-pills nav-stacked category-menu">
									<li><a href="../board/boardWrite.jsp">게시판</a></li>
								</ul>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
