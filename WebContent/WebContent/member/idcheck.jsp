<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 관리</title>
</head>
<body>
	<h2>E-mail 중복확인</h2>
	<form method="post" action="SidServlet?command=email_check_form" name="frm">
	E-mail<input type="text" name="email">
		<input type="submit" name="검색" class="submit">
	<br>
		<c:if test="${result==1}">
			<script type="text/javascript">
				opener.document.frm.reemail.value="";
			</script>
			${email}는 이미 사용 중인 이메일입니다.
		</c:if>
		<c:if test="${result==-1}">
			${email}는 사용 가능한 이메일입니다.
			<input type="button" value="사용" class="cancel"	 onclick="idok()">
		</c:if>	
	</form>
	
	<script type="text/javascript">
	function idok(){
		opener.frm.reemail.value= "${email}";
		opener.frm.email.value= "${email}";
		self.close();
	}
	</script>
</body>
</html>