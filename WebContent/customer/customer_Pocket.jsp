<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_for_customer.jsp"%>
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
								<li><a href="SidServlet?command=customer_pocket">주머니관리</a></li>
								<hr>
								<li><a href="customer_Accountchange.jsp">회원정보변경</a></li>
							</ul>

						</div>
					</div>
				</div>
				<div class="col-md-9">
					<ul class="nav nav-tabs" role="tablist" id="myTab">
						<li><a href="#" onclick="openPocket(event,'left')"
							class="tablinks">
								<h2>좌주머니</h2>
						</a></li>
						<li><a href="#" onclick="openPocket(event,'right')"
							class="tablinks">
								<h2>우주머니</h2>
						</a></li>
					</ul>
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
					<div class="row products">
						<div class="col-md-4 col-sm-6">
							<div class="tabcontent" id="left">
								<h3>london</h3>
							</div>
							<div class="tabcontent" id="right">
								<h3>sfd</h3>
							</div>
							<!-- /.product -->
						</div>
						<!-- /.product -->
					</div>
					<!-- /.products -->
					<script>
						function openPocket(event, direction) {
							var i,
								tabcontent,
								tablinks;
					
							// Get all elements with class="tabcontent" and hide them
							tabcontent = document.getElementsByClassName("tabcontent");
							for (i = 0; i < tabcontent.length; i++) {
								tabcontent[i].style.display = "none";
							}
							// Get all elements with class="tablinks" and remove the class "active"
							tablinks = document.getElementsByClassName("tablinks");
							for (i = 0; i < tablinks.length; i++) {
								tablinks[i].className = tablinks[i].className.replace("active", "");
							}
					
							// Show the current tab, and add an "active" class to the link that opened the tab
							document.getElementById(direction).style.display = "block";
							eventt.currentTarget.className += " active";
					
						}
					</script>
				</div>
			</div>
		</div>
	</div>


</body>
<%@ include file="../include/footer.jsp"%>
</html>