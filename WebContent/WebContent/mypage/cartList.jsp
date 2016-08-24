<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="formm" method="post">
		<c:choose>
			<c:when test="${cartList.size() == 0}">
				<h3 style="color: red; text-align: center;">장바구니가 비었습니다.</h3>
			</c:when>
			<c:otherwise>
				<table id="cartList">
					<tr>
						<th>상품명</th>
						<th>수량</th>
						<th>가격</th>
						<th>주문일</th>
						<th>삭제</th>
					</tr>
					<c:forEach items="${cartList}" var="cartVO">
						<tr>
							<td><a
								href="NonageServlet?command=product_detail&pseq=${cartVO.pseq}">
									<h3>${cartVO.pname}</h3>
							</a></td>
							<td>${cartVO.quantity}</td>
							<td><fmt:formatNumber value="${cartVO.price2 * cartVO.quantity }" type="currency"/></td>
							<td><fmt:formatDate value="${cartVO.indate}" type="date" /></td>
							<td><input type="checkbox" name="cseq"
								value="${cartVO.cseq}"></td>
						</tr>
					</c:forEach>

					<tr>
						<th colspan="2">총 액</th>
						<th colspan="2"><fmt:formatNumber value="${totalPrice}"
								type="currency" /><br></th>
						<th><a href="#" onclick="go_cart_delete()"><h3>삭제하기</h3></a></th>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>
		<div class="clear"></div>
		<div id="buttons" style="float: right">
			<input type="button" value="쇼핑 계속하기" class="cancel"
				onclick="location.href='SidServlet?command=index'">
			<c:if test="${cartList.size() != 0}">
				<input type="button" value="주문하기" class="submit"
					onclick="go_order_insert()">
			</c:if>
		</div>
	</form>
</body>
</html>