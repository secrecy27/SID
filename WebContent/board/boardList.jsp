<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">

<!-- theme stylesheet -->
<link href="css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="css/custom.css" rel="stylesheet">

<script src="js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">
<link rel="stylesheet" type="text/css" href="../css/shopping.css">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="list-group">
				<a href="category.jsp" class="list-group-item">Notice</a>
				<a href="category.jsp" class="list-group-item">Event</a>
				<a href="category.jsp" class="list-group-item">Guide</a>
			</div>
		</div>

		<div class="col-md-9">
        	<div class="row carousel-holder">
            	<div class="col-md-12">
                	<h1>게시판</h1>
					<table class="list">	
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>게시일</th>
						</tr>
						<c:forEach var="board" items="${boardList}">
							<tr class="record">
								<td><a
									href="../BoardServlet?command=board_view&num=${board.contentNum}">
										${board.contentNum}</a></td>
								<td>${board.title}</td>
								<td>${board.date}</td>
							</tr>
						</c:forEach>
					</table>
                </div>
            </div>
				<!-- /#main-slider -->
		</div>
	</div>

		<!-- /#content -->
</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>