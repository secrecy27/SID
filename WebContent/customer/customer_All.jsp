<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_for_customer.jsp"%>
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
			</div>
		</div>
	</div>

</body>
</html>