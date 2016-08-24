<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script>
<%if(request.getAttribute("login")=="success"){%>
//true

alert("success");
<%}else{%>
	alert("failed");
<%}%>
%>
</script>
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
						<p>In our Ladies department we offer wide selection of the
							best products we have found and carefully selected worldwide.</p>
					</div>

					<div class="row products">

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product1.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product1_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product1.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Fur coat with very but very very long
											name</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>
								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product2.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product2_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product2.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">White Blouse Armani</a>
									</h3>
									<p class="price">
										<del>$280</del>
										$143.00
									</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>
								</div>
								<!-- /.text -->

							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product3.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product3_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product3.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Black Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product3.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product3_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product3.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Black Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product2.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product2_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product2.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">White Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product1.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product1_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product1.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Fur coat</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->

							</div>
							<!-- /.product -->
						</div>
						<!-- /.col-md-4 -->

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product2.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product2_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product2.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">White Blouse Armani</a>
									</h3>
									<p class="price">
										<del>$280</del>
										$143.00
									</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>
								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>

						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product3.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product3_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product3.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Black Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>
						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product3.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product3_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product3.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Black Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</p>

								</div>
								<!-- /.text -->
							</div>
							<!-- /.product -->
						</div>
						<div class="col-md-3 col-sm-4">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="detail.jsp"> <img src="img/product3.jpg" alt=""
												class="img-responsive">
											</a>
										</div>
										<div class="back">
											<a href="detail.jsp"> <img src="img/product3_2.jpg"
												alt="" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
								<a href="detail.jsp" class="invisible"> <img
									src="img/product3.jpg" alt="" class="img-responsive">
								</a>
								<div class="text">
									<h3>
										<a href="detail.jsp">Black Blouse Versace</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a> <a
											href="basket.jsp" class="btn btn-primary"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
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
				<!-- /.col-md-9 -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
	</div>
	<!-- /#content -->
	<%@ include file="../include/footer.jsp"%>
</body>

</html>