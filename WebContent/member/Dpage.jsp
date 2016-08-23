<%@ page import="com.sid.dao.DPageDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.DWriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>

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
<link href="../css/custom.css" rel="stylesheet">

<script src="../js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">

</head>

	<script src="../js/jquery-1.11.0.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie.js"></script>
	<script src="../js/waypoints.min.js"></script>
	<script src="../js/modernizr.js"></script>
	<script src="../js/bootstrap-hover-dropdown.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/front.js"></script>
<body>

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
					<li class="dropdown yamm-fw"><a href="../SidServlet?command=list_dpage"
						class="dropdown-toggle">Dpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="HPage.jsp"
						class="dropdown-toggle">Hpage <b class="caret"></b></a></li>
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

		<div id="content">
			<div class="container">

				<div class="col-md-12">

					<ul class="breadcrumb">
						<li><a href="member/index.jsp">Home</a></li>
						<li>Dpage</li>
					</ul>

					<ul class="breadcrumb">
						<!-- if 세션이 있으면 바로 넘기고 없으면 함수 작동 -->
						<a href="member/DWrite.jsp" class="btn btn-primary"><i class="fa fa glyphicon-plus"></i>&nbsp글쓰기</a>
					</ul>
					
					<div class="dContainer">
						<div class="row products">	
							<c:forEach items="${list}" var="dpage">
								<!-- a href 버튼 -->
								<div class="col-md-2 col-sm-6">
	                            	<div class="product">
		                                <div>
		                                    <div>
		                                    	<a href="../SidServlet?command=read_dpage&num=${dpage.dWriteId}">asdasd</a>
		                                        <img src="" value="">
		                                        <!-- ${dpage.imageUrl} -->
		                                        
		                                    </div>
		                                </div>
	
		                                <div class="text">
		                                    <p>기준시간 ${dpage.standardDate}</p>
		                                    <p>마감시간 ${dpage.endDate}</p>
		                                    <p>최대지불가능비용 ${dpage.cost}</p>
		                                    <p>조건 ${dpage.condition}</p>
		                                    <p class="buttons">
		                                        <a href="" class="btn btn-default">입</a>
		                                    </p>
		                                </div>
                                <!-- /.text -->
                          			</div>
                          		</div>
							</c:forEach>
						</div>
					</div>
					
					
					<div class="pages">
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
				<!-- /.col-md-9 -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->




</body>
<%@ include file="../include/footer.jsp"%>
</html>