<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:requestEncoding value="utf-8"/>

<jsp:scriptlet>
 pageContext.setAttribute("crlf", "\r\n");
 pageContext.setAttribute("lf", "\n");
 pageContext.setAttribute("cr", "\r");
</jsp:scriptlet>

<html>
<head>
<title>Detail</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>
<c:set var="board" value='${requestScope.board}'/>
<body>

<table style="border-collapse:collapse;">
<col width="100"><col width="400">
<c:if test="${empty board}">
<tr>
<td colspan="2" align="center">글이 존재하지 않습니다.</td>
</tr>
</c:if>

<c:if test="${not empty board}">
<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">파일</font></b></td>
<td>${board.title}</td>
</tr>
 
<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">설 명</font></b></td>
<td>${board.description}</td>
</tr>
 
<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">파일 이름</font></b></td>
<td>${board.contentName}</td>
</tr>
 
<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">파일 종류</font></b></td>
<td>${board.contentType}</td>
</tr>

<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">날 짜</font></b></td>
<td>${board.date}</td>
</tr>

<tr>
<td colspan="2"><img width="500" height="300" src="imageShow/${board.num}.do"/></td>
</tr>

 </c:if>
</table>

<a href="imageList.do">목록</a>
</body>
</html>
