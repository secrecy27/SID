<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">전체보기</h3>
						</div>

						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked category-menu">
								<li><a href="SidServlet?command=customer_dplan_ongoing">D 관리 </a></li>
								<li><a href="SidServlet?command=customer_buylist">주문목록</a></li>
								<li><a href="SidServlet?command=customer_customer_coupon">쿠폰목록</a></li>
								<li><a href="SidServlet?command=customer_basket">장바구니</a></li>
								<li><a href="SidServlet?command=customer_lpocket_list">주머니관리</a></li>
								<hr>
								<li><a href="SidServlet?command=customer_accountchange">회원정보변경</a></li>
							</ul>

						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="box info-bar">
						<ul class="nav nav-tabs" role="tablist" id="myTab">
							<li><a href="../SidServlet?command=customer_dplan_ongoing" onclick="openPocket(event,'ongoing')"
								class="tablinks">
									<h2>진행중인 작업</h2>
							</a></li>
							<li><a href="#" onclick="openPocket(event,'choosing')"
								class="tablinks">
									<h2>선정중인 작업</h2>
							</a></li>
							<li><a href="#" onclick="openPocket(event,'completion')"
								class="tablinks">
									<h2>완료된 작업</h2>
							</a></li>

						</ul>
					</div>
					<div class="row products">
						<div class="tabcontent" >
						<c:forEach items="${list}" var="dplan">
								<!-- a href 버튼 -->
								<div class="col-md-2 col-sm-6">
									<div class="product">

										<div style="max-width: 100%; width: 100%;">
											<a
												href="../SidServlet?command=read_dpage&num=${dplan.dWriteId}">
												<img src="${dplan.imageUrl}" id="imageFile"
												style="max-width: 100%; width: 100%; height: 150px;">
												<!-- ${dpage.imageUrl} -->
											</a>
										</div>
										<div class="text">
											<hr>
											<p class="text-center" style="font-size: 90%">기준시간<br>
												<strong>${dplan.standardDate}</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">마감시간<br><strong> ${dplan.endDate}</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">최대지불가능비용<br><strong> ${dplan.cost}
											</strong></p>
											<hr>
											<p class="text-center" style="font-size: 90%">
												조건 &nbsp<strong>
												<c:if test="${dplan.condition eq '0'}">
												최고가 우선</c:if>
												<c:if test="${dplan.condition eq '1'}">
												평점 우선</c:if>
												<c:if test="${dplan.condition eq '2'}">
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
						<div class="tabcontent">
						</div>
					</div>
					<script>
						function openPocket(event, work) {
							var i,
								tabcontent,
								tablinks;
								
						console.log(work);
							
							tabcontent = document
								.getElementsByClassName("tabcontent");
							for (i = 0; i < tabcontent.length; i++) {
								tabcontent[i].style.display = "none";
							}
							tablinks = document
								.getElementsByClassName("tablinks");
							for (i = 0; i < tablinks.length; i++) {
								tablinks[i].className = tablinks[i].className
									.replace("active", "");
							}
							document.getElementById(work).style.display = "block";
							event.currentTarget.className += " active";
						}
					</script>

				</div>
			</div>
		</div>
	</div>


</body>
</html>
