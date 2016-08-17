<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefic="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>My Page(${title})</h2>
	<form name="formm" method="post">
		<table id="cartList">
			<tr>
				<th>주문일자</th>
				<th>주문번호</th>
				<th>상품명</th>
				<th>결제 금액</th>
				<th>주문 상세</th>
				</th>
			</tr>
			<c:forEach items="${orderList}" var="orderVO">
				<tr>
					<td><fmt:formatDate value="${orderVO.indate}" type="date" /></td>
					<td>${orderVO.oseq}</td>
					<td>${orderVO.pname}</td>
					<td><fmt:formatNumber value="${orderVO.price2}"
							type="currency" /></td>
					<td><a
						href="NonageServlet?command=order_detail&oseq=${orderVO.oseq}">
							조회 </a></td>
				</tr>
			</c:forEach>
		</table>
		<div class="clear"></div>
		<div id="buttons" style="float: right">
			<input type="button" value="쇼핑 계속하기" class="cancel"
				onclick="location.href='NonageServlet?command=index'">
		</div>
	</form>
</body>
</html>