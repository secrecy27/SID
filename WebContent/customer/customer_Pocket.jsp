<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SID - Snow In Dawn</title>
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
								<li><a href="SidServlet?command=customer_dplan">D 관리 </a></li>
								<li><a href="SidServlet?command=customer_cplan">C 관리</a></li>
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
							<li><a
								href="../SidServlet?command=customer_lpocket_list&num=${awrite.aWriteId}"
								onclick="openPocket(event,'left')" class="tablinks">
									<h2>티셔츠 보관함</h2>
							</a></li>
							<li><a
								href="../SidServlet?command=customer_rpocket_list&num=${bwrite.bWriteId}"
								onclick="openPocket(event,'right')" class="tablinks">
									<h2>이미지 보관함</h2>
							</a></li>
						</ul>
					</div>
					<!-- <div class="box info-bar">
						<div class="row">
							<div class="col-sm-12 col-md-8  products-number-sort">
								<div class="row">
									<form class="form-inline">
										<div class="col-md-6 col-sm-6">
											<div class="products-sort-by">
												<button>전체선택</button>
												<button>선택이동</button>
												<button>선택삭제</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				주머니 개수 늘릴때 나중에 적용	 -->
					<div class="row products">
						<div class="tabcontent" id="left">
							<c:forEach items="${alist}" var="awrite">
								<div class="col-md-2 col-sm-6">
									<div class="product">
										<div style="max-width: 100%; width: 100%;">
											<a
												href="../SidServlet?command=customer_lpocket_list&num=${awrite.aWriteId}">
												<img src="${awrite.imageUrl}" id="imageFile"
												style="max-width: 100%; width: 100%; height: 150px;">
												<!-- ${dpage.imageUrl} -->
											</a>
										</div>
										<div class="text">
											<p>${awrite.expl}</p>
											<p class="buttons">
												<a href="" class="btn btn-default"></a>
											</p>
										</div>
										<!-- /.text -->
									</div>
								</div>
							</c:forEach>
						</div>

						<div class="tabcontent" id="right">
							<c:forEach items="${blist}" var="bwrite">
								<div class="col-md-2 col-sm-6">
									<div class="product">
										<div style="max-width: 100%; width: 100%;">
											<a
												href="../SidServlet?command=customer_rpocket_list&num=${bwrite.bWriteId}">
												<img src="${bwrite.imageUrl}" id="imageFile"
												style="max-width: 100%; width: 100%; height: 150px;">
												<!-- ${dpage.imageUrl} -->
											</a>
										</div>
										<div class="text">
											<p>${bwrite.expl }</p>
											<p class="buttons">
												<a href="" class="btn btn-default"></a>
											</p>
										</div>
										<!-- /.text -->
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<script>
						function openPocket(event, direction) {
							var i, tabcontent, tablinks;

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
							console.log(direction);
							document.getElementById(direction).style.display = "block";
							event.currentTarget.className += " active";
						}
					</script>

				</div>
			</div>
		</div>
	</div>


</body>
<%@ include file="../include/footer.jsp"%>
</html>