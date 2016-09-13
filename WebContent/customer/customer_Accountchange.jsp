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
								<li><a href="SidServlet?command=customer_dplan">D 관리 </a></li>
								<li><a href="SidServlet?command=customer_cplan">C 관리</a></li>
								<li><a href="../member/error.jsp">주문목록</a></li>
								<li><a href="../member/error.jsp">쿠폰목록</a></li>
								<li><a href="SidServlet?command=customer_basket">장바구니</a></li>
								<li><a href="SidServlet?command=customer_lpocket_list">주머니관리</a></li>
								<hr>
								<li><a href="customer_Accountchange.jsp">회원정보변경</a></li>
							</ul>

						</div>
					</div>
				</div>
				<div class="col-md-9">
					<form method="post" name="frm" id="join">
						<div class="form-group">
							<label for="name">닉네임</label> <input type="text"
								class="form-control" name="nickname">${nickname }
								
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label> <input type="password"
								class="form-control" name="pwd"> <label
								for="passwordChk">PasswordCheck</label> <input type="password"
								class="form-control" name="pwd_check">
						</div>
						<div class="form-group">
							<label for="phone">연락처</label> <input type="text"
								class="form-control" name="phone">${phone }
						</div>
						<div class="form-group">
							<label for="ZipNum">우편번호</label> <input type="hidden"
								id="confmKey" name="confmKey"> <input type="text"
								class="form-control" name="ZipNum" id="ZipNum" readonly
								style="width: 100px"> <input type="button" value="검색"
								onclick="goPopup()">
						</div>
						<div class="form-group">
							<label for="roadAddrPart1">도로명주소</label> <input type="text"
								class="form-control" name="roadAddrPart1" id="roadAddrPart1"
								style="width: 85%">${address } 

						</div>
						<div class="form-group">
							<label for="addrDetail">상세주소</label> <input type="text"
								class="form-control" name="addrDetail" id="addrDetail"
								style="width: 40%"> <input type="text"
								class="form-control" name="addrDetail" id="roadAddrPart2"
								style="width: 40%">

						</div>
						<div class="form-group">
							<label for="grade">등급</label><br> <input type="radio"
								name="admin" value="0" checked="checked">일반 <input
								type="radio" name="admin" value="1" disabled="disabled">판매자
						</div>
						<div class="text-center">
							<button type="button" class="btn btn-primary"
								onclick="return joinCheck()">
								<i class="fa fa-user-md"></i> Register
							</button>
						</div>

					</form>
				</div>
			</div>
		</div>

	</div>
</body>
</html>