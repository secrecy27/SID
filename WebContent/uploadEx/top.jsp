<%
/******************************************************************************
 * PROGRAM NAME   : /jsp/top.jsp
 * DESCRIPTION    : top 메뉴
 * VERSION NO	author		date	content
 * ----------------------------------------------------------------------------
 1.0	hbkim	2008.02.10	file create
 ******************************************************************************/
%>
<%@ page contentType="text/html; charset=EUC-KR" %>

<%
/** session info ***********************************************************************/
	String user_name = (String)session.getAttribute("user_name");
%>

<html>
<head>
<title>top</title>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<link href="/css/bluesea.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- imageready slices (top.psd) -->
<table width="800" border="0" cellpadding="0" cellspacing="0" align="center">
	<tr>
		<td>
			<img src="/images/main/top_01.gif" width="194" height="38"></td>
		<td>
			<a href="/jsp/index.jsp" target="_top"><img src="/images/main/top_02.gif" width="177" height="38" border="0"></a></td>
		<td width="284" height="38" background="/images/main/top_03.gif" align="right" class="title02">
		<%= user_name %>님 환영합니다.
		</td>
		<td>
			<img src="/images/main/top_04.gif" width="145" height="38" border="0" usemap="#Map2"></td>
	</tr>
	<tr>
		<td colspan=4>
			<img src="/images/main/top_05.gif" width="800" height="26" border="0" usemap="#Map"></td>
	</tr>
	<tr>
		<td colspan=4>
			<img src="/images/main/top_06.gif" width="800" height="79"></td>
	</tr>
</table>
<!-- end imageready slices -->
<map name="Map">
  <area shape="rect" coords="232,3,299,24" href="/jsp/member/mem_list.jsp" target="mainFrame">
  <area shape="rect" coords="302,2,376,24" href="/jsp/notice/notice_list.jsp" target="mainFrame">
  <area shape="rect" coords="377,3,465,24" href="/jsp/freeboard/board_list.jsp" target="mainFrame">
  <area shape="rect" coords="469,2,571,24" href="/jsp/imgboard/img_list.jsp" target="mainFrame">
  <area shape="rect" coords="573,3,616,22" href="pol.jsp">
</map>
<map name="Map2">
  <area shape="rect" coords="13,5,69,24" href="modify.jsp">
  <area shape="rect" coords="77,4,127,23" href="/logout.jsp">
</map>
</body>
</html>