<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">

<!-- theme stylesheet -->
<link href="css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="css/custom.css" rel="stylesheet">

<script src="js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">

<!-- theme stylesheet -->
<link href="../css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">
</head>
<body>
	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">회원가입 안내</a></li>
						<li><a href="#">정보동의</a></li>
						<li>정보입력</li>
					</ul>
				</div>

				<div class="col-md-12">
					<div class="breadcrumb">

						<h1>회원가입</h1>

						<p class="lead">Not our registered customer yet?</p>
						<p>With registration with us new world of fashion, fantastic
							discounts and much more opens to you! The whole process will not
							take you more than a minute!</p>
						<p class="text-muted">
							If you have any questions, please feel free to <a
								href="contact.jsp">contact us</a>, our customer service center
							is working for you 24/7.
						</p>

						<hr>

						<form method="post" name="frm" id="join">
							<div class="form-group">
								<label for="name">닉네임</label> <input type="text"
									class="form-control" name="nickname">
							</div>
							<div class="form-group">
								<label for="email">E-Mail</label> <input type="text"
									class="form-control" name="email"> <input type="hidden"
									name="reemail"> <input type="button" value="중복체크"
									onclick="return idCheck()">

							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" name="pwd"> <label
									for="passwordChk">PasswordCheck</label> <input type="password"
									class="form-control" name="pwd_check">
							</div>
							<div class="form-group">
								<label for="phone">연락처</label> <input type="text"
									class="form-control" name="phone">
							</div>
							<div class="form-group">
								<label for="ZipNum">우편번호</label> <input type="hidden"
									id="confmKey" name="confmKey"> <input type="text"
									class="form-control" name="ZipNum" id="ZipNum" readonly
									style="width: 100px"> <input type="button" value="검색"
									onclick="goPopup()">
							</div>
							<div class="form-group">
								<label for="roadAddrPart1">도로명주소</label> <input type="text"
									class="form-control" name="roadAddrPart1" id="roadAddrPart1"
									style="width: 85%">

							</div>
							<div class="form-group">
								<label for="addrDetail">상세주소</label> <input type="text"
									class="form-control" name="addrDetail" id="addrDetail"
									style="width: 40%"> <input type="text"
									class="form-control" name="addrDetail" id="roadAddrPart2"
									style="width: 40%">

							</div>
							<div class="form-group">
								<label for="grade">등급</label><br> <input type="radio"
									name="admin" value="0" checked="checked">일반 <input
									type="radio" name="admin" value="1" disabled="disabled">판매자
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-primary"
									onclick="return joinCheck()">
									<i class="fa fa-user-md"></i> Register
								</button>
							</div>
						</form>
					</div>
				</div>
				<script type="text/javascript">
			function goPopup(){
		// í¸ì¶ë íì´ì§(jusopopup.jsp)ìì ì¤ì  ì£¼ìê²ìURL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)ë¥¼ í¸ì¶íê² ë©ëë¤.
   		 var pop = window.open("address/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		}
			function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn){
		// íìíì´ì§ìì ì£¼ììë ¥í ì ë³´ë¥¼ ë°ìì, í íì´ì§ì ì ë³´ë¥¼ ë±ë¡í©ëë¤.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.zipNo.value = zipNo;
		}
		</script>
				<!-- íìê°ì javascript  -->
				<script type="text/javascript">

			function idCheck(){
				if(document.frm.email.value==""){
					alert('이메일을 입력해주세요');
					document.frm.email.focus();
					return;
				}
				
	    	    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			    if( re.test(document.frm["email"].value)){
			    }else{
			    	alert("잘못된 이메일 형식입니다")
			    	return;
			    }
				var url="SidServlet?command=email_check_form&email="
						+document.frm.email.value;
				window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=300");
			}


			function idok(){
				opener.frm.reemail.value="${email}";
				self.close();
			}

			function joinCheck(){
				if(document.frm.nickname.value.length==0){
					alert("이름을 써주세요.");
					frm.name.focus();
					return false;
				}
				if(document.frm.email.value.length==0){
					alert("이메일를 써주세요.");
					frm.email.focus();
					return false;
				}

	    	    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			    if( re.test(document.frm["email"].value)){
			    }else{
			    	alert("잘못된 이메일 형식입니다")
			    	return false;
			    }
			    
				if(document.frm.pwd.value==""){
					alert("암호는 반드시 입력해야 합니다.");
					frm.pwd.focus();
					return false;
				}
				if(document.frm.pwd.value!=document.frm.pwd_check.value){
					alert("암호가 일치하지 않습니다.");
					frm.pwd.focus();
					return false;
				}
				if(document.frm.reemail.value.length==0){
					alert("중복 체크를 하지 않았습니다.");
					frm.reemail.focus();
					return false;
				}
				if(document.frm.roadAddrPart1.value.length==0){
					alert("주소를 입력하세요.");
					frm.roadAddrPart1.focus();
					return false;
				}
				if(document.frm.roadAddrPart2.value.length==0){
					alert("상세 주소를 입력하세요.");
					frm.roadAddrPart2.focus();
					return false;
				}
				document.frm.action="SidServlet?command=join";
				 document.frm.submit();
				 return true;
			}
			</script>
			</div>
		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
	<!-- /#all -->
<%@ include file="../include/footer.jsp"%>
</body>

</html>
