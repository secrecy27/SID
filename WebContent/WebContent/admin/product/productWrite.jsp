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
	<form name="frm" method="post" enctype="multipart/form-data">
		<table id="list">
			<tr>
				<th>상품분류</th>
				<td colspan="5"><select name="kind">
						<c:forEach items="${kindList}" var="kind" varStatus="status">
							<option value="${status.count}">${kind}</option>
						</c:forEach>
				</select>
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5"><input type="text" name="name"
					size="47" maxlength="100"></td>
			</tr>
			<tr>
				<th>원가[A]</th>
				<td width="70"><input type="text" name="price1" size="11"
					onKeyUp='NumFormat(this)'></td>
				<th>판매가[B]</th>
				<td width="70"><input type="text" name="price2" size="11"
					onBlur="go_ab()" onKeyUp='NumFormat(this)'></td>
				<th>[B-A]</th>
				<td width="72"><input type="text" name="price3" size="11"
					readonly onKeyUp='NumFormat(this)'></td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="5"><textarea name="content" rows="8" cols="70"></textarea>
				</td>
			</tr>
			<tr>
				<th>상품이미지</th>
				<td width="343" colspan="5"><input type="file" name="image">
				</td>
			</tr>
		</table>
		<input class="btn" type="button" value="등록" onClick="go_save()">
		<input class="btn" type="button" value="취소" onClick="go_mov()">
	</form>
</body>
</html>