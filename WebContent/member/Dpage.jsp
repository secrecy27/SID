<%@ page import="com.sid.dao.DPageDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.DWriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->


</head>

<body>
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
						<%
							if (session.getAttribute("email") == null) {
						%>
						<a href="" onclick="fail()" class="btn btn-primary"><i
							class="fa fa glyphicon-plus"></i>&nbsp글쓰기</a>
						<script>
							function fail() {
								alert("로그인 하세요");
							}
						</script>
						<%
							} else {
						%>
						<a href="member/Dwrite.jsp" class="btn btn-primary"><i
							class="fa fa glyphicon-plus"></i>&nbsp글쓰기</a>
						<%
							}
						%>
					</ul>

					<div class="dContainer">
						<div class="row products">
							<c:forEach items="${list}" var="dpage">
								<!-- a href 버튼 -->
								<div class="col-md-2 col-sm-6">
									<div class="product">

										<div style="max-width: 100%; width: 100%;">
											<a
												href="../SidServlet?command=read_dpage&num=${dpage.dWriteId}">
												<img src="${dpage.imageUrl}" id="imageFile"
												style="max-width: 100%; width: 100%; height: 150px;">
												<!-- ${dpage.imageUrl} -->
											</a>
										</div>
										<div class="text">
											<hr>
											<p class="text-center" style="font-size: 90%">기준시간<br>
												<strong>${dpage.standardDate}</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">마감시간<br><strong> ${dpage.endDate}</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">최대지불가능비용<br><strong> ${dpage.cost}
											</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">
												조건 &nbsp<strong>
												<c:if test="${dpage.condition eq '0'}">
												최고가 우선</c:if>
												<c:if test="${dpage.condition eq '1'}">
												평점 우선</c:if>
												<c:if test="${dpage.condition eq '2'}">
												등급 우선</c:if>
																						</strong></p>
											<hr>
											<p class="buttons">
												<a href="" class="btn btn-primary">입</a>
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


	</div>


</body>
<%@ include file="../include/footer.jsp"%>
</html>