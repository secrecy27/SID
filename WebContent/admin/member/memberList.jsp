<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"> 
function go_search()  { 
	document.frm.action="SidServlet?command=admin_member_list";
    document.frm.submit();
    }
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>회원리스트</h1>
	<form name="frm" method="post">
		<table style="float: right;">
			<tr>
				<td>회원 이름 <input type="text" name="key"> <input
					class="btn" type="button" value="검색" onclick="go_search()">
				</td>
			</tr>
		</table>
		<br>
		<table id="orderList">
			<tr>
				<th>탈퇴여부</th>
				<th>닉네임</th>
				<th>이메일</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>전화</th>
				<th>가입일</th>
			</tr>
			<c:forEach items="${memberList}" var="memberVO">
				<tr>
					<td>${memberVO.email}<c:choose>
							<c:when test='${memberVO.useyn=="y"}'>
								<input type="checkbox" name="useyn" disabled="disabled">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="useyn" checked="checked"
									disabled="disabled">
							</c:otherwise>
						</c:choose>
					</td>
					<td>${memberVO.nickname}</td>
					<td>${memberVO.email}</td>
					<td>${memberVO.zipNum}</td>
					<td>${memberVO.address}</td>
					<td>${memberVO.phone}</td>
					<td><fmt:formatDate value="${memberVO.indate}" /></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>