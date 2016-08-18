<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:requestEncoding value="utf-8"/>
<html>
<head>
<title>Write</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body> 
<form:form commandName="board" action="imageAdd.do" enctype="multipart/form-data">
	<form:errors path="*" cssClass="error"/>
	<table style="border-collapse:collapse;">
	<col width="100"><col width="200">
	<tr>
		<td align="center" bgcolor="#c0c0c0"><form:label path="title"><b><font color="#FFFFFF">파일이름</font></b></form:label></td>
		<td bgcolor="#EAEAEA" align="left"><form:input path="title" /></td> 
	</tr>
	<tr>
		<td align="center" bgcolor="#c0c0c0"><form:label path="description"><b><font color="#FFFFFF">설명</font></b></form:label></td>
		<td bgcolor="#EAEAEA" align="left"><form:textarea path="description" cols="30" rows="5"/></td>
	</tr>
	<tr>
		<td align="center" bgcolor="#c0c0c0"><form:label path="content"><b><font color="#FFFFFF">파일</font></b></form:label></td>
		<td bgcolor="#EAEAEA" align="left"><input type="file" name="file" id="file"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="업로드"/>
		</td>
	</tr>
</table>	
</form:form>
<a href="imageList.do">목록</a>
</body>
</html>