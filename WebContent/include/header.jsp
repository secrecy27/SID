<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>SID - Snow In Dawn</title>

<meta name="keywords" content="">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/font-awesome.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/owl.carousel.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/owl.theme.css"
	rel="stylesheet">

<!-- theme stylesheet -->
<link href="${pageContext.request.contextPath}/css/style.default.css"
	rel="stylesheet" id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="${pageContext.request.contextPath}/css/custom.css"
	rel="stylesheet">

<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">
</head>
<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-hover-dropdown.js"></script>
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/js/front.js"></script>
<style>
#info {
	background-image: url(../css_sid/9-info.png);
	width: 185px;
	height: 75px;
}

#info:active {
	background-image: url(../css_sid/9-info_2.png);
	width: 185px;
	height: 75px;
}

#design {
	background-image: url(../css_sid/9-design.png);
	width: 185px;
	height: 75px;
}

#design:active {
	background-image: url(../css_sid/9-design_2.png);
	width: 185px;
	height: 75px;
}

#frame {
	background-image: url(../css_sid/9-frame.png);
	width: 185px;
	height: 75px;
}

#frame:active {
	background-image: url(../css_sid/9-frame_2.png);
	width: 185px;
	height: 75px;
}

#image {
	background-image: url(../css_sid/9-image.png);
	width: 185px;
	height: 75px;
}

#image {
	background-image: url(../css_sid/9-image_2.png);
	width: 185px;
	height: 75px;
}

#proxy {
	background-image: url(../css_sid/9-proxy.png);
	width: 185px;
	height: 75px;
}

#proxy:active {
	background-image: url(../css_sid/9-proxy_2.png);
	width: 185px;
	height: 75px;
}

#mix {
	background-image: url(../css_sid/9-mix.png);
	width: 185px;
	height: 75px;
}

#mix:active {
	background-image: url(../css_sid/9-mix_2.png);
	width: 185px;
	height: 75px;
}

#customerservice {
	background-image: url(../css_sid/9-customerservice.png);
	width: 330px;
	height: 75px;
}

#logo {
	background-image: url(../css_sid/2.png);
}
</style>
<body>
	<div id="top">
		<div class="container">
			<!--/.navbar-header -->
			<div class="col-md-6" data-animation="fadeInDown">
				<ul class="menu">

					<%
						if (session.getAttribute("email") == null) {
					%>
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
					<li><a href="../member/register.jsp">Register</a></li>

					<%
						} else {
					%>

					<li><a><%=session.getAttribute("email")%>님 환영합니다.</a></li>
					<li><a href="" onclick=logout()>logout</a></li>
					<li><a href="../SidServlet?command=customer_all">구매자 관리</a></li>
					<%
						if (session.getAttribute("admin").equals(1)) {
					%>
					<li><a href="../SidServlet?command=designer_all">판매자 관리</a></li>
					<%
						} else if (session.getAttribute("admin").equals(0)) {
					%>
					<li><a href="../member/register6.jsp">디자이너 가입</a></li>
					<%
						} else if (session.getAttribute("admin").equals(2)) {
					%>
					<li><a href="../admin/main.jsp">관리자 페이지</a> <%
 						}
					%> <%
						}
					%>
					<li><a href="../member/contact.jsp">Contact</a></li>
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
						<form action="" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password"
									name="pwd" placeholder="password">
							</div>

							<p class="text-center">
								<button class="btn btn-primary" id="btnSubmit">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>
							<script>
							
							
								$("#btnSubmit").click(function() {
									$.ajax({
										type : "POST",
										url : "../SidServlet?command=login&email=" + $("#email").val() + "&pwd=" + $("#password").val(),
							
										success : function(result) {
											if (result == 1) {
												alert("로그인 성공")
											} else {
												alert("로그인 실패")
											}
										},
										error : function(request, status, error) {
											alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
										}
									});
							    });

							
								function logout() {
									$.ajax({
										type : "POST",
										url : '../SidServlet?command=logout',
							
										success : function(data) {
											alert("logOut!");
										},
										error : function(request, status, error) {
											alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
										}
									});
								}

							</script>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container" style="width: 100%">


			<div class="navbar-collapse collapse" style="padding-left: 0px"
				id="navigation">
				<div id="logo" class="navbar-header">
					<a class="navbar-brand home"
						style="padding: 2px; padding-right: 0px"
						href="../SidServlet?command=index"> <img
						src="../img/SIDlogo.png"
						style="width: 100px; height: 125px; max-height: 100%;"> <span
						class="sr-only">Snow In Dawn</span>
					</a>
				</div>
				<ul class="nav navbar-nav navbar-left" >
					<li id="info"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/board/boardList.jsp")) {%> active<%}%>"><a
						href="../BoardServlet?command=board_list"></a></li>
					<li id="design"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/member/Cpage.jsp")) {%> active<%}%>"><a
						href="../SidServlet?command=cpage_list" ></a></li>
					<li id="frame"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/member/Bpage.jsp")) {%> active<%}%>"><a
						href="../SidServlet?command=list_bpage" ></a></li>
					<li id="image"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/member/Apage.jsp")) {%> active<%}%>"><a
						href="../SidServlet?command=admin_apage_list"
						></a></li>
					<li id="proxy"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/member/Dpage.jsp")) {%> active<%}%>"><a
						href="../SidServlet?command=list_dpage"></a></li>
					<li id="mix"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/member/sss.jsp")) {%> active<%}%>"><a
						href="../SidServlet?command=list_hpage"></a></li>
					<li id="customerservice"
						class="dropdown yamm-fw<%if (request.getRequestURI().equals("/")) {%> active<%}%>"><a
						href="../SidServlet?command="></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->
	<!-- *** NAVBAR END *** -->

</body>
</html>