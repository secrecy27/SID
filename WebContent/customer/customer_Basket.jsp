<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ page import="com.sid.dto.CartVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<li><a href="SidServlet?command=customer_dplan_ongoing">D 관리 </a></li>
								<li><a href="SidServlet?command=customer_buylist">주문목록</a></li>
								<li><a href="SidServlet?command=customer_customer_coupon"
									onclick='alert("준비중")'>쿠폰목록</a></li>
								<li><a href="SidServlet?command=customer_basket">장바구니</a></li>
								<li><a href="SidServlet?command=customer_lpocket_list">주머니관리</a></li>
								<hr>
								<li><a href="SidServlet?command=customer_accountchange">회원정보변경</a></li>
							</ul>

						</div>
					</div>
				</div>

				<div class="col-md-9" id="basket">
					<div class="box info-bar">
						<h1>Shopping cart</h1>
						<div class="table-responsive">
							<div class="form-group row">
								<label class="col-sm-10 control-label">배송지 정보</label>
								<div class="col-sm-10">
									<label class="col-sm-10 control-label">우편번호 :
										${address.zipNum} </label> <label class="col-sm-10 control-label">주소
										: ${address.address }</label> <label class="col-sm-10 control-label">연락처
										: ${address.phone }</label>
								</div>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th>선택</th>
										<th colspan="2">상품정보</th>
										<th>수량</th>
										<th>판매가격</th>
										<th>할인금액</th>
										<th colspan="2">상품금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<c:forEach items="${cartList}" var="cartVO">
											<td><input type="checkbox" name="checkbox"></td>
											<td>$</td>
											<td><a href="#">${cartVO.pseq }</a></td>
											<td><input type="number" value="2" class="form-control"></td>
											<td>${cartVO.price }원</td>
											<td>${cartVO.quantity }</td>
											<td>${cartVO.price * cartVO.quantity }원</td>
											<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
										</c:forEach>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th colspan="5">결제금액</th>
										<th colspan="2">${totalPrice }</th>
									</tr>
								</tfoot>
							</table>

						</div>
						<!-- /.table-responsive -->
						<div class="box-footer">
							<div class="pull-right">
								<button type="submit" class="btn btn-primary">
									Proceed to checkout <i class="fa fa-chevron-right"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
	</div>

</body>
</html>