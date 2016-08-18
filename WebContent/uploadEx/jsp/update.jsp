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
<title>Update</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body>
<c:set var="board" value="${requestScope.board}"/>
<form:form commandName="board" action="imageUpdate.do" enctype="multipart/form-data">
<form:errors path="*" cssClass="error"/>
<form:hidden path="num"/>

<table style="border-collapse:collapse;">
<col width="100"><col width="200">
<c:if test="${empty board}">
<tr bgcolor='#F6F6D6'>
  <td colspan="2" align="center">글이 존재하지 않습니다.</td>
</tr>
</c:if>
<c:if test="${not empty board}">

<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">파일이름</font></b></td> 
<td bgcolor="#EAEAEA" align="left"><form:input path="title"/></td>
</tr>

<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">설 명</font></b></td> 
<td bgcolor="#EAEAEA" align="left"><form:textarea path="description" cols="30" rows="5"/></td>
</tr>

<tr>
<td align="center" bgcolor="#c0c0c0"><b><font color="#FFFFFF">파 일</font></b></td>
<td bgcolor="#EAEAEA" align="left"><input type="file" name="file" id="file"></td>
</tr>

<tr bgcolor="#ffffff">
<td bgcolor="#EAEAEA" align="center" colspan="2">
<input type="button" value="수 정" onClick="this.form.submit();">
<input type="reset" value="취  소" >
</td>
</tr>
</c:if>
</table>
</form:form>

<a href="imageList.do">목록</a>
</body>
</html>
