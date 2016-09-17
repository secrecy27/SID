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
<style>
#content, #menu, #category {
	background-image: url(../css_sid/1.png);
}

#menu #category {
	background-image: url(../css_apage/2-1ALL.png);
	width: 255px;
	height: 40px;
}

#t-shirt {
	background-image: url(../css_apage/2-2Tshirts.png);
	width: 225px;
	height: 40px;
}

#short-sleeve {
	background-image: url(../css_apage/2-3shortsleeve.png);
	width: 225px;
	height: 40px;
}

#long-sleeve {
	background-image: url(../css_apage/2-4Longsleeve.png);
	width: 225px;
	height: 40px;
}

#bottom {
	background-image: url(../css_apage/2-5bottom.png);
	width: 225px;
	height: 40px;
}

#bags {
	background-image: url(../css_apage/2-6bag.png);
	width: 225px;
	height: 40px;
}
</style>


</head>

<body>

	<div id="all">

		<div id="content">
			<div id="con" class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>Apage</li>
					</ul>
				</div>

				<div class="col-md-3">
					<!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
					<div id="menu" class="panel panel-default sidebar-menu">

						<div id="category" class="panel-heading">
							<h3 class="panel-title"></h3>
						</div>

						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked category-menu">
								<li id="t-shirt"><a href="category.jsp"></a></li>
								<ul>
									<li id="short-sleeve"><a href="category.jsp"></a></li>
									<li id="long-sleeve"><a href="category.jsp"></a></li>
								</ul>

								<ul>
									<li id="bottom"><a href="category.jsp"></a></li>
									<li id="bags"><a href="category.jsp"></a></li>
								</ul>

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
											<a herf="#">${apage.hashtag }</a>
											<p class="price">${apage.cost}원</p>
											<!--  							<p class="buttons">
												<a href="basket.jsp" class="btn btn-primary"><i
													class="fa fa-shopping-cart"></i>담기</a>
											</p>
-->
											<p class="text-center buttons" style="display: inline">
												<a type="button" id="toCart" class="btn btn-primary"
													onclick="toCart(${apage.aWriteId})" href="#"> <i
													class="fa fa glyphicon-plus"></i>&nbsp;장바구니
												</a>
											</p>
											<p class="text-center buttons" style="display: inline">
												<a type="button" id="toLPocket" class="btn btn-primary"
													onclick="toLPocket(${apage.aWriteId})" href="#"> <i
													class="fa fa glyphicon-plus"></i>&nbsp;주머니
												</a>
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


	<script>
		function toCart(id) {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoCart&email=${sessionScope.email }&id="+id,
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toCart").prop("disabled", true);
					} else {
	
						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
	
	
		}
	
	
		function toLPocket(id) {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoLpocket&email=${sessionScope.email }&id="+id,
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toLPocket").prop("disabled", true);
					} else {
	
						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
	
	
		}
	</script>



</body>

</html>