<%
/******************************************************************************
 * PROGRAM NAME   : /jsp/main.jsp
 * DESCRIPTION    : top 메뉴
 * VERSION NO	author		date	content
 * ----------------------------------------------------------------------------
 1.0	hbkim	2008.02.10	file create
 ******************************************************************************/
%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.*" %>

<jsp:include page="/jsp/common/login_chk.jsp" flush="true" />

<jsp:useBean id="MainBean"		class="app.main.MainBean"			scope="page" />
<jsp:useBean id="StrFunc"		class="com.util.StrFunc"   			scope="page" />

<%
/** variable declaration ******************************************************/
	Hashtable hashData = new Hashtable();
	Vector vecData = new Vector();
	String notice_idx = "";
	String notice_title = "";
	String notice_wdate = "";
	String board_idx = "";
	String board_title = "";
	String board_wdate = "";

/** get notice Info **************************************************************/	
	hashData = MainBean.getNotList();
	vecData = (Vector)hashData.get("vecList");

%>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link href="/css/bluesea.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="750" border="0" align="center">
  <tr align="center">
    <td width="367" height="250" align="center" valign="top">
<!-- notice start ---------------------------------------------------------------------->
    <table width="350" border="0" cellspacing="0" cellpadding="0">
  	  <tr> 
    	<td height="30" class="title01">공지사항</td>
  	  </tr>
  	  <tr> 
        <td height="5" bgcolor="#0055AA"></td>
  	  </tr>
  	  <tr> 
        <td height="5"></td>
  	  </tr>
	</table>
	<table width="350" border="0" cellspacing="0" cellpadding="0">
<%
	for (int i=0; i<vecData.size(); i++) {
		Hashtable row = (Hashtable)vecData.elementAt(i);
		notice_idx = (String)row.get("idx");
		notice_title = (String)row.get("title");
		notice_wdate = (String)row.get("wdate");
%>
  	  <tr> 
    	<td width="280" height="20"><%= notice_title %></td>
    	<td width="70" height="20"><%= notice_wdate %></td>
  	  </tr>
<% } %>  	  
  	</table>
<!-- notice end ------------------------------------------------------------------------->
    </td>
    <td width="367" height="250" valign="top">
<!-- board start ----------------------------------------------------------------------->
    <table width="350" border="0" cellspacing="0" cellpadding="0">
  	  <tr> 
    	<td height="30" class="title01">자유게시판</td>
  	  </tr>
  	  <tr> 
        <td height="5" bgcolor="#FF8000"></td>
  	  </tr>
  	  <tr> 
        <td height="5"></td>
  	  </tr>
	</table>
	<table width="350" border="0" cellspacing="0" cellpadding="0">
  	  <tr> 
    	<td width="280" height="20">내용입니다.</td>
    	<td width="70" height="20">2007-02-30</td>
  	  </tr>
  	</table>
<!-- board end ------------------------------------------------------------------------->    
    </td>
  </tr>
  <tr align="center">
    <td>이미지 게시판</td>
    <td align="center">
    <iframe src="http://www.ktfinfra.com/nayaboard/naver_map/map.html" frameborder="0" leftmargin="0" height="300" width="367" marginheight="0" marginwidth="0" scrolling="auto" topmargin="0"></iframe>
    </td>
  </tr>
</table>>
</body>
</html>
