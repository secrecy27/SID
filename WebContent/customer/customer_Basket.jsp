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
										<td><input type="checkbox" name="checkbox"></td>
										<c:forEach var="list" items="${list }" >
											<td><a href="#"> <img src=>
											</a></td>
											<td><a href="#">White Blouse Armani</a></td>
											<td><input type="number" value="2" class="form-control"></td>
											<td>17500원</td>
											<td>2500원</td>
											<td>2마논</td>
										</c:forEach>
										<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th colspan="5">결제금액</th>
										<th colspan="2">2마넌</th>
									</tr>
								</tfoot>
							</table>

						</div>
						<!-- /.table-responsive -->
						<div class="box-footer">
							<div class="pull-left">
								<a href="category.jsp" class="btn btn-default"><i
									class="fa fa-chevron-left"></i> Continue shopping</a>
							</div>
							<div class="pull-right">
								<button class="btn btn-default">
									<i class="fa fa-refresh"></i> Update basket
								</button>
								<button type="submit" class="btn btn-primary">
									Proceed to checkout <i class="fa fa-chevron-right"></i>
								</button>
							</div>
						</div>
					</div>
					<!-- /.box -->
				</div>
			</div>
		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
	</div>

</body>
</html>