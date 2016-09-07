<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ page import="com.sid.dao.AWriteDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.AWriteVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title></title>

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



</head>

<body>

	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>Apage</li>
					</ul>
				</div>

				<div class="col-md-3">
					<!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">카테고리</h3>
						</div>

						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked category-menu">
								<li><a href="category.jsp">티셔츠 </a>
									<ul>
										<li><a href="category.jsp">반팔 티셔츠</a></li>
										<li><a href="category.jsp">긴팔 티셔츠</a></li>
									</ul></li>
								<li><a href="category.jsp">맨투맨</a>
									<ul>
										<li><a href="category.jsp">긴팔 맨투맨</a></li>
										<li><a href="category.jsp">반팔 맨투맨</a></li>
									</ul></li>
								<li><a href="category.jsp">가방</a>
									<ul>
										<li><a href="category.jsp">에코백</a></li>
										<li><a href="category.jsp">크로스백</a></li>
									</ul></li>
							</ul>

						</div>


						<div class="panel-heading">
							<h3 class="panel-title">
								<input type="text" method="post" action="#" placeholder="검색">
							</h3>
						</div>

						<div class="panel panel-default sidebar-menu">

							<div class="panel-heading">
								<h3 class="panel-title">
									Color <a class="btn btn-xs btn-danger pull-right" href="#"><i
										class="fa fa-times-circle"></i> Clear</a>
								</h3>
							</div>

							<div class="panel-body">

								<form>
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> <span
												class="colour white"></span> White
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> <span
												class="colour blue"></span> Blue
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> <span
												class="colour green"></span> Green
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> <span
												class="colour yellow"></span> Yellow
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> <span
												class="colour red"></span> Red
											</label>
										</div>
									</div>

									<button class="btn btn-default btn-sm btn-primary">
										<i class="fa fa-pencil"></i> Apply
									</button>
								</form>
							</div>
						</div>
					</div>

				</div>

				<div class="col-md-9">
					<div class="box">
						<h1>Apage</h1>
					</div>

					<div class="box info-bar">
						<div class="row">
							<div class="col-sm-12 col-md-4 products-showing">
								<select class="form-control" name="condition">
									<option value="0">주머니1</option>
									<option value="1">주머니2</option>
									<option value="2">주머니3</option>
								</select>
							</div>

							<div class="col-sm-12 col-md-8  products-number-sort">
								<div class="row">
									<form class="form-inline">
										<div class="col-md-6 col-sm-6">
											<div class="products-number">
												<strong>Show</strong> <a href="#"
													class="btn btn-default btn-sm btn-primary">12</a> <a
													href="#" class="btn btn-default btn-sm">24</a> <a href="#"
													class="btn btn-default btn-sm">All</a>
											</div>
										</div>
										<div class="col-md-6 col-sm-6">
											<div class="products-sort-by">
												<strong>분류 보기</strong> <select name="sort-by"
													class="form-control">
													<option>가격순</option>
													<option>인기순</option>
													<option>최신순</option>
												</select>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row products">
						<c:forEach items="${list}" var="apage">
							<div class="col-md-2 col-sm-6">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<a
												href="../SidServlet?command=read_apage&num=${apage.aWriteId }">
												<img src="${apage.imageUrl }" id="imageFile"
												style="max-width: 100%; width: 100%; height: 150px"
												class="img-responsive">
											</a>
										</div>
										<div class="text">
											<a href="#">#드래곤볼</a>&nbsp; <a href="#">#손오공</a>
											<p class="price">${apage.cost}원</p>
											<p class="buttons">
												<a href="basket.jsp" class="btn btn-primary"><i
													class="fa fa-shopping-cart"></i>담기</a>
											</p>
										</div>

									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>

				<div class="pages">

					<p class="loadMore">
						<a href="#" class="btn btn-primary btn-lg"><i
							class="fa fa-chevron-down"></i> Load more</a>
					</p>

					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>


			</div>
		</div>
	</div>

	<!-- /#all -->

	<%@ include file="../include/footer.jsp"%>

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