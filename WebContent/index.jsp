<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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



</head>

<body>

	<!-- *** TOPBAR ***
 _________________________________________________________ -->
	<div id="top">
		<div class="container">
			<div class="col-md-6" data-animation="fadeInDown">
				<ul class="menu">
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
					</li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="Login">Customer login</h4>
					</div>
					<div class="modal-body">
						<form action="customer-orders.jsp" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="email-modal"
									placeholder="email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password-modal"
									placeholder="password">
							</div>

							<p class="text-center">
								<button class="btn btn-primary">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>

						</form>

						<p class="text-center text-muted">Not registered yet?</p>
						<p class="text-center text-muted">
							<a href="register.jsp"><strong>Register now</strong></a>! It is
							easy and done in 1&nbsp;minute and gives you access to special
							discounts and much more!
						</p>

					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- *** TOP BAR END *** -->

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
					<li class="active"><a href="index.jsp">Notice</a></li>
					<li class="dropdown yamm-fw"><a href="Apage.jsp"
						class="dropdown-toggle" >Apage <b class="caret"></b></a>
					</li>
					<li class="dropdown yamm-fw"><a href="Bpage.jsp"
						class="dropdown-toggle">Bpage <b class="caret"></b></a>
					</li>
					<li class="dropdown yamm-fw"><a href="Cpage.jsp"
						class="dropdown-toggle">Cpage <b class="caret"></b></a>
					</li>
					<li class="dropdown yamm-fw"><a href="Dpage.jsp"
						class="dropdown-toggle" >Dpage <b class="caret"></b></a>
					</li>
					<li class="dropdown yamm-fw"><a href="Hpage.jsp"
						class="dropdown-toggle" >Hpage <b class="caret"></b></a>
					</li>
				</ul>

			</div>
			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="basket.jsp" class="btn btn-primary navbar-btn"><i
						class="fa fa-shopping-cart"></i><span class="hidden-sm">3
							items in cart</span></a>
				</div>
				<!--/.nav-collapse -->

				<div class="navbar-collapse collapse right" id="search-not-mobile">
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
		<div class="container">
			<div class="col-md-12">
				<div id="main-slider">
					<div class="item">
						<img src="img/main-slider1.jpg" alt="" class="img-responsive">
					</div>
					<div class="item">
						<img class="img-responsive" src="img/main-slider2.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="img/main-slider3.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="img/main-slider4.jpg" alt="">
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
										<a href="detail.jsp">Fur coat with very but very very
											long name</a>
									</h3>
									<p class="price">$143.00</p>
									<p class="buttons">
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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
										<a href="detail.jsp" class="btn btn-default">View detail</a>
										<a href="basket.jsp" class="btn btn-primary"><i
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

	<!-- *** COPYRIGHT ***
 _________________________________________________________ -->
	<div id="copyright">
		<div class="container">
			<div class="col-md-6">
				<p class="pull-left">© 2015 Your name goes here.</p>

			</div>
			<div class="col-md-6">
				<p class="pull-right">
					Template by <a href="http://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
					with support from <a href="https://kakusei.cz">Kakusei</a>
					<!-- Not removing these links is part of the licence conditions of the template. Thanks for understanding :) -->
				</p>
			</div>
		</div>
	</div>
	<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->




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