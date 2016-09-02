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
				

				<div class="col-md-9" id="customer-orders">
					<div class="box">
						<h1>장바구니</h1>

						<div class="form-group row">
							<label class="col-sm-10 control-label">배송지 정보</label>
							<div class="col-sm-10">
								<label class="col-sm-10 control-label">우편번호 : ${address.zipNum} </label>
								<label class="col-sm-10 control-label">주소 : ${address.address }</label>
								<label class="col-sm-10 control-label">연락처 : ${address.phone }</label>
							</div>
						</div>

						<hr>

						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Order</th>
										<th>Date</th>
										<th>Total</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th># 1735</th>
										<td>22/06/2013</td>
										<td>$ 150.00</td>
										<td><span class="label label-info">Being prepared</span>
										</td>
										<td><a href="customer-order.jsp"
											class="btn btn-primary btn-sm">View</a></td>
									</tr>
									<tr>
										<th># 1735</th>
										<td>22/06/2013</td>
										<td>$ 150.00</td>
										<td><span class="label label-info">Being prepared</span>
										</td>
										<td><a href="customer-order.jsp"
											class="btn btn-primary btn-sm">View</a></td>
									</tr>
									<tr>
										<th># 1735</th>
										<td>22/06/2013</td>
										<td>$ 150.00</td>
										<td><span class="label label-success">Received</span></td>
										<td><a href="customer-order.jsp"
											class="btn btn-primary btn-sm">View</a></td>
									</tr>
									<tr>
										<th># 1735</th>
										<td>22/06/2013</td>
										<td>$ 150.00</td>
										<td><span class="label label-danger">Cancelled</span></td>
										<td><a href="customer-order.jsp"
											class="btn btn-primary btn-sm">View</a></td>
									</tr>
									<tr>
										<th># 1735</th>
										<td>22/06/2013</td>
										<td>$ 150.00</td>
										<td><span class="label label-warning">On hold</span></td>
										<td><a href="customer-order.jsp"
											class="btn btn-primary btn-sm">View</a></td>
									</tr>
								</tbody>
							</table>
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