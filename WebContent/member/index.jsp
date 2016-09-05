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
		<div class="container">
			<div class="col-md-12">
				<div id="main-slider">
					<div class="item">
						<img src="../img/main-slider1.jpg" alt="" class="img-responsive">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider2.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider3.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider4.jpg" alt="">
					</div>
				</div>
				<!-- /#main-slider -->
			</div>
		</div>
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 -Apage</h1>
					</div>

					<div class="row products">

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<a href="detail.jsp"> <img src="../img/Dragon-Ball.jpg"
										alt="" class="img-responsive">
									</a>
								</div>
								<div class="text">
									<a href="#">#드래곤볼</a>&nbsp; <a href="#">#손오공</a>
									<p class="price">2000원</p>
									<p class="buttons">
										<a href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>담기</a>
									</p>
								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>
					</div>
					<!-- /.products -->
					<div class="pages">
						<p class="loadMore">
							<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
								class="fa fa-chevron-down"></i> Load more</a>
						</p>
					</div>
				</div>
				<!--  인기페이지 Apage -->
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 -Bpage</h1>
					</div>

					<div class="row products">

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<a href="detail.jsp"> <img src="../img/Dragon-Ball.jpg"
										alt="" class="img-responsive">
									</a>
								</div>
								<div class="text">
									<a href="#">#드래곤볼</a>&nbsp; <a href="#">#손오공</a>
									<p class="price">2000원</p>
									<p class="buttons">
										<a href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>담기</a>
									</p>
								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>
					</div>
					<!-- /.products -->
					<div class="pages">
						<p class="loadMore">
							<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
								class="fa fa-chevron-down"></i> Load more</a>
						</p>
					</div>
				</div>
				<!--  인기페이지 Bpage -->
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 - Cpage</h1>
					</div>

					<div class="row products">

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<c:forEach items="${list}" var="list">
									<div class="flip-container">
										<a href="detail.jsp"> <img src="${list.imageUrl }"
											alt="" class="img-responsive">
										</a>
									</div>
									<div class="text">
										<a href="#">#드래곤볼</a>&nbsp; <a href="#">#손오공</a>
										<p class="price">${list.cost}원</p>
										<p class="buttons">
											<a href="basket.jsp" class="btn btn-primary"><i
												class="fa fa-shopping-cart"></i>담기</a>
										</p>
									</div>
									<!-- /.text -->
								</c:forEach>
							</div>
							<!-- /.product -->
						</div>
					</div>
					<!-- /.products -->
					<div class="pages">
						<p class="loadMore">
							<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
								class="fa fa-chevron-down"></i> Load more</a>
						</p>
					</div>
				</div>
				<!--  인기페이지 Cpage -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
	</div>
	<!-- /#content -->
	<%@ include file="../include/footer.jsp"%>
</body>

</html>