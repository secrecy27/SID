<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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
