<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<head>

<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
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
					<li class="active"><a href="index.jsp">Home</a></li>
					<li class="dropdown yamm-fw"><a href="Apage.jsp"
						class="dropdown-toggle">Apage <b class="caret"></b></a></li>

					<li class="dropdown yamm-fw"><a href="Bpage.jsp"
						class="dropdown-toggle">Bpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Cpage.jsp"
						class="dropdown-toggle">Cpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Dpage.jsp"
						class="dropdown-toggle">Dpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Hpage.jsp"
						class="dropdown-toggle">Hpage <b class="caret"></b></a></li>
				</ul>

			</div>

			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="basket.jsp" class="btn btn-primary navb
					ar-btn"><i
						class="fa fa-shopping-cart"></i><span class="hidden-sm">3
							items in cart</span></a>
				</div>
				<!--/.nav-collapse -->

				<div class="navbar-collapse collapse right"
					id="sear
		ch-not-mobile">
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

		<div id="content">
			<div class="container">

				<div class="col-md-12">

					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>New account / Sign in</li>
					</ul>

				</div>

				<div class="col-md-6">
					<div class="box">
						<h1>회원가입</h1>

						<p class="lead">Not our registered customer yet?</p>
						<p>With registration with us new world of fashion, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.jsp">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

						<hr>

						<form action="join.do" method="post" name="frm">
							<div class="form-group">
								<label for="name">이름</label> <input type="text"
									class="form-control" name="name">
							</div>
							<div class="form-group">
								<td><label for="email">E-Mail</label>
								<td><input type="text"class="form-control" name="email">
								<input type="hidden" name="reemail">
								<input type="button" value="중복체크" onclick="idCheck()">
								</td>
							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" name="pwd"> <label
									for="passwordChk">PasswordCheck</label> <input type="password"
									class="form-control" name="pwd_check">
							</div>
							<div class="form-group">
								<label for="name">등급</label><br> <input type="radio"
									name="admin" value="0" checked="checked">일반 <input
									type="radio" name="admin" value="1">판매자
							</div>
							<div class="form-group">
								<label for="ZipNo">우편번호</label> <input type="hidden"
									id="confmKey" name="confmKey"> <input
									type="text" class="form-control" name="ZipNo" id="ZipNo"
									readonly style="width:100px"> <input type="button" value="검색"
									onclick="goPopup();">
							</div>
							<div class="form-group">
								<label for="roadAddrPart1">도로명주소</label> <input type="text"
									class="form-control" name="roadAddrPart1" id="roadAddrPart1" style="width:85%">

							</div>
							<div class="form-group">
								<label for=""addrDetail"">상세주소</label>
								<input type="text" class="form-control" name="addrDetail" id="addrDetail" style="width:40%" >
								<input type="text" class="form-control" name="addrDetail" id="roadAddrPart2"  style="width:40%">

							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary"
									onclick="return joinCheck()">
									<i class="fa fa-user-md"></i> Register
								</button>
							</div>
						</form>
					</div>
				</div>
				<script language="javascript">
			function goPopup(){
		// í¸ì¶ë íì´ì§(jusopopup.jsp)ìì ì¤ì  ì£¼ìê²ìURL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)ë¥¼ í¸ì¶íê² ë©ëë¤.
   		 var pop = window.open("address/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		}
			function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn){
		// íìíì´ì§ìì ì£¼ììë ¥í ì ë³´ë¥¼ ë°ìì, í íì´ì§ì ì ë³´ë¥¼ ë±ë¡í©ëë¤.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.zipNo.value = zipNo;
		}
</script>
				<!-- íìê°ì javascript  -->
				<script type="text/javascript">
			function loginCheck(){
				if(document.frm2.email.value.length==0){
					alert("E-Mail을 써주세요");
					frm2.email.focus();
					return false;
					
				}if(document.frm2.pwd.value==""){
					alert("암호는 반드시 입력해야 합니다");
					frm2.pwd.focus();
					return false;
				}
				return true;
			}

			function idCheck(){
				if(document.frm.email.value==""){
					alert('이메일을 입력해주세요');
					document.frm.email.focus();
					return;
				}
				
	    	    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			    if( re.test(document.frm["email"].value)){
			    }else{
			    	alert("잘못된 이메일 형식입니다")
			    	return;
			    }
				
				var url="idCheck.do?email=" +document.frm.email.value;
				window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=300");
			}


			function idok(){
				opener.frm.reemail.value="${email}";
				self.close();
			}

			function joinCheck(){
				if(document.frm.name.value.length==0){
					alert("이름을 써주세요.");
					frm.name.focus();
					return false;
				}
				if(document.frm.email.value.length==0){
					alert("이메일를 써주세요.");
					frm.email.focus();
					return false;
				}
				if(document.frm.email.value.length<4){
					alert("이메일은 4글자이상이어야 합니다.");
					frm.email.focus();
					return false;
				}
				if(document.frm.pwd.value==""){
					alert("암호는 반드시 입력해야 합니다.");
					frm.pwd.focus();
					return false;
				}
				if(document.frm.pwd.value!=document.frm.pwd_check.value){
					alert("암호가 일치하지 않습니다.");
					frm.pwd.focus();
					return false;
				}
				if(document.frm.reemail.value.length==0){
					alert("중복 체크를 하지 않았습니다.");
					frm.reemail.focus();
					return false;
				}
				if(document.frm.roadAddrPart1.value.length==0){
					alert("주소를 입력하세요.");
					frm.roadAddrPart1.focus();
					return false;
				}
				if(document.frm.roadAddrPart2.value.length==0){
					alert("상세 주소를 입력하세요.");
					frm.roadAddrPart2.focus();
					return false;
				}
				return true;
			}
			</script>

				<div class="col-md-6">
					<div class="box">
						<h1>Login</h1>

						<p class="lead">Already our customer?</p>
						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.
							Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
							amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
							ultricies mi vitae est. Mauris placerat eleifend leo.</p>

						<hr>

						<form action="login.do" method="post" name="frm2">
							<div class="form-group">
								<label for="email">Email</label> <input type="text"
									class="form-control" id="email" name="email">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="pwd">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary" value="ë¡ê·¸ì¸"
									onclick="return loginCheck()">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</div>
						</form>
					</div>
				</div>


			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->


		<!-- *** FOOTER ***
 _________________________________________________________ -->
		<div id="footer" data-animate="fadeInUp">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<h4>Pages</h4>

						<ul>
							<li><a href="text.jsp">About us</a></li>
							<li><a href="text.jsp">Terms and conditions</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="contact.jsp">Contact us</a></li>
						</ul>

						<hr>

						<h4>User section</h4>

						<ul>
							<li><a href="#" data-toggle="modal"
								data-target="#login-modal">Login</a></li>
							<li><a href="register.jsp">Regiter</a></li>
						</ul>

						<hr class="hidden-md hidden-lg hidden-sm">

					</div>
					<!-- /.col-md-3 -->

					<div class="col-md-3 col-sm-6">

						<h4>Top categories</h4>

						<h5>Men</h5>

						<ul>
							<li><a href="category.jsp">T-shirts</a></li>
							<li><a href="category.jsp">Shirts</a></li>
							<li><a href="category.jsp">Accessories</a></li>
						</ul>

						<h5>Ladies</h5>
						<ul>
							<li><a href="category.jsp">T-shirts</a></li>
							<li><a href="category.jsp">Skirts</a></li>
							<li><a href="category.jsp">Pants</a></li>
							<li><a href="category.jsp">Accessories</a></li>
						</ul>

						<hr class="hidden-md hidden-lg">

					</div>
					<!-- /.col-md-3 -->

					<div class="col-md-3 col-sm-6">

						<h4>Where to find us</h4>

						<p>
							<strong>Obaju Ltd.</strong> <br>13/25 New Avenue <br>New
							Heaven <br>45Y 73J <br>England <br> <strong>Great
								Britain</strong>
						</p>

						<a href="contact.jsp">Go to contact page</a>

						<hr class="hidden-md hidden-lg">

					</div>
					<!-- /.col-md-3 -->



					<div class="col-md-3 col-sm-6">

						<h4>Get the news</h4>

						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.</p>

						<form>
							<div class="input-group">

								<input type="text" class="form-control"> <span
									class="input-group-btn">

									<button class="btn btn-default" type="button">Subscribe!</button>

								</span>

							</div>
							<!-- /input-group -->
						</form>

						<hr>

						<h4>Stay in touch</h4>

						<p class="social">
							<a href="#" class="facebook external" data-animate-hover="shake"><i
								class="fa fa-facebook"></i></a> <a href="#" class="twitter external"
								data-animate-hover="shake"><i class="fa fa-twitter"></i></a> <a
								href="#" class="instagram external" data-animate-hover="shake"><i
								class="fa fa-instagram"></i></a> <a href="#" class="gplus external"
								data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
							<a href="#" class="email external" data-animate-hover="shake"><i
								class="fa fa-envelope"></i></a>
						</p>


					</div>
					<!-- /.col-md-3 -->

				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#footer -->

		<!-- *** FOOTER END *** -->




		<!-- *** COPYRIGHT ***
 _________________________________________________________ -->
		<div id="copyright">
			<div class="container">
				<div class="col-md-6">
					<p class="pull-left">Â© 2015 Your name goes here.</p>

				</div>
				<div class="col-md-6">
					<p class="pull-right">
						Template by <a
							href="http://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
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
