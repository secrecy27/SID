<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:requestEncoding value="utf-8"/>

<html>
<head>
<title>List</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body>

<table style="border-collapse:collapse;">
<col width="50"/><col width="200"/><col width="100" />
<tr  bgcolor='#A6A6A6'>
<th align="center"><b><font color=FFFFFF>번 호</font></b></th>
<th align="center"><b><font color=FFFFFF>파일이름</font></b></th>
<th align="center"><b><font color=FFFFFF></font></b></th>
</tr>

<c:forEach var="board" items="${requestScope.board}">
<tr>
<td align="center">${board.num}</td>
<td align="center"><a href="imageView.do?num=${board.num}">${board.title}</a></td>
<td align="center">
<a href="imageEdit.do?num=${board.num}">
<img src="${pageContext.request.contextPath}/images/edit.png"/></a> 
<a href="imageDelete.do?num=${board.num}" onclick="return confirm('정말로 삭제하시겠습니까?')">
<img src="${pageContext.request.contextPath}/images/delete.png"/></a> 
</td>
</tr>
</c:forEach>

<tr>
<td colspan="5" align='right'>
<input type="button" value="사진 업로드" onclick= "location.href='imageWrite.do'">
</td>
</tr>

</table>

<table>
<tr>
  <c:choose>
  <c:when test="${currentpage eq 1}">
  <th style="padding-right: 5px;"><a href="imageList.do?record=1"><img src="${pageContext.request.contextPath}/images/before.gif" border="0"></a></th>
  </c:when>
  
  <c:when test="${currentpage < 1}">
  <th style="padding-right: 5px;"><a href="imageList.do?record=1"><img src="${pageContext.request.contextPath}/images/before.gif" border="0"></a></th>
  </c:when>
  
  <c:when  test="${currentpage > 1}">
  <th style="padding-right: 5px;"><a href="imageList.do?record=${currentpage - 1}"><img src="${pageContext.request.contextPath}/images/before.gif" border="0"></a></th>
  </c:when>
  </c:choose>
  
  <c:forEach begin="1" end="${totalrecord}" var="i">
  <c:choose>
  <c:when test="${currentpage eq i}">
	<th style="padding-right: 5px;"><font color="#0054FF">${i}</font></th>
  </c:when>
  
  <c:when test="${currentpage ne i}">
	<th style="padding-right: 5px;"><a href="imageList.do?record=${i}">${i}</a></th>
  </c:when>

  </c:choose>
  </c:forEach>
  
  <c:choose>
  <c:when test="${currentpage eq totalrecord}">
	<th><a href="imageList.do?record=${totalrecord}"><img src="${pageContext.request.contextPath}/images/next.gif" border="0"></a></th>
  </c:when>
  
  <c:when test="${currentpage < totalrecord}">
	<th><a href="imageList.do?record=${currentpage + 1}"><img src="${pageContext.request.contextPath}/images/next.gif" border="0"></a></th>
  </c:when>
  
  <c:when test="${currentpage > totalrecord}">
	<th><a href="imageList.do?record=${totalrecord}"><img src="${pageContext.request.contextPath}/images/next.gif" border="0"></a></th>
  </c:when>
  </c:choose>  	
</tr>
</table>

</body>
</html>