<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>SID - Snow in Dawn</title>

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



</head>

<body>
	<!-- *** TOPBAR ***
 _________________________________________________________ -->
	<div id="top">
		<div class="container">
			<div class="col-md-6" data-animation="fadeInDown">
				<ul class="menu">
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
					</li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
		<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="Login">Customer login</h4>
					</div>
					<div class="modal-body">
						<form action="customer-orders.jsp" method="post">
							<div class="form-group">
								<input type="text" class="form-control" id="email-modal"
									placeholder="email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password-modal"
									placeholder="password">
							</div>

							<p class="text-center">
								<button class="btn btn-primary">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>

						</form>

						<p class="text-center text-muted">Not registered yet?</p>
						<p class="text-center text-muted">
							<a href="register.jsp"><strong>Register now</strong></a>! It is
							easy and done in 1&nbsp;minute and gives you access to special
							discounts and much more!
						</p>

					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- *** TOP BAR END *** -->

	<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="index.jsp"
					data-animate-hover="bounce"> <img src="img/logo.png"
					alt="Obaju logo" class="hidden-xs"> <img
					src="img/logo-small.png" alt="Obaju logo" class="visible-xs"><span
					class="sr-only">Obaju - go to homepage</span>
				</a>
				<div class="navbar-buttons">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigation">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>
					<a class="btn btn-default navbar-toggle" href="basket.jsp"> <i
						class="fa fa-shopping-cart"></i> <span class="hidden-xs">3
							items in cart</span>
					</a>
				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li class="dropdown yamm-fw"><a href="Apage.jsp"
						class="dropdown-toggle">Apage <b class="caret"></b></a></li>

					<li class="dropdown yamm-fw"><a href="Bpage.jsp"
						class="dropdown-toggle">Bpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Cpage.jsp"
						class="dropdown-toggle">Cpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Dpage.jsp"
						class="dropdown-toggle">Dpage <b class="caret"></b></a></li>
					<li class="dropdown yamm-fw"><a href="Hpage.jsp"
						class="dropdown-toggle">Hpage <b class="caret"></b></a></li>
				</ul>

			</div>

			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="basket.jsp" class="btn btn-primary navb
					ar-btn"><i
						class="fa fa-shopping-cart"></i><span class="hidden-sm">3
							items in cart</span></a>
				</div>
				<!--/.nav-collapse -->

				<div class="navbar-collapse collapse right"
					id="sear
		ch-not-mobile">
					<button type="button" class="btn navbar-btn btn-primary"
						data-toggle="collapse" data-target="#search">
						<span class="sr-only">Toggle search</span> <i class="fa fa-search"></i>
					</button>
				</div>

			</div>

			<div class="collapse clearfix" id="search">

				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">

							<button type="submit" class="btn btn-primary">
								<i class="fa fa-search"></i>
							</button>

						</span>
					</div>
				</form>

			</div>
			<!--/.nav-collapse -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->

	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">회원가입 안내</a></li>
						<li>정보동의</li>
					</ul>
				</div>
				<div class="col-md-12">
					<ul class="breadcrumb">
						<h1>정보동의</h1>
						<h3>이용약관</h3>
						<textarea rows="6" cols="140" readonly="readonly">제1장 총칙 
제 1조 목적
 이 약관은 정부(보건복지부) 산하기관인 사회보장정보원(이하 SSIS)에서 운영하는 전자바우처 포털사이트(이하 "당 사이트")가 온라인으로 제공하는 디지털 콘텐츠(이하 "콘텐츠"라고 한다) 및 제반서비스의 이용에 관한 조건 및 절차와 기타 필요한 사항을 규정함을 목적으로 합니다.
제 2조 정의
 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
① 이용자 : 본 약관에 따라 당 사이트가 제공하는 서비스를 받는 자. 
② 가입 : 당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위 
③ 회원 : 당 사이트에 개인정보 등 관련 정보를 제공하여 회원등록을 한 개인으로서 당 사이트의 정보를 제공 받으며,
 당 사이트가 제공하는 서비스를 이용할 수 있는 자.
④ 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.
⑤ 탈퇴 : 회원이 이용계약을 종료 시키는 행위 
⑥ 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의합니다.
제3조 약관의 효력과 변경
 
① 이 약관은 서비스 메뉴에 게시하여 공지함으로써 효력을 발생합니다.
② 당 사이트는 합리적인 사유가 발생한 경우에 이 약관을 변경할 수 있으며, 약관을 변경한 경우에는 지체없이 '공지사항'을
 통해 공시합니다. 다만 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 최소 10일전에 공시합니다.
③ 이용자는 변경된 약관사항에 동의하지 않으면, 회원 탈퇴(해지)를 요청할 수 있습니다. 약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 이용자가 동의한 것으로 간주됩니다. 
제4조 약관외 준칙
 이 약관에 명시되지 않은 사항은 관계 법령에 규정되어 있을 경우 그 규정에 따릅니다. 
제2장 서비스 제공 및 이용 
제5조 (이용계약의 성립)
 
① 이용계약은 '이용자'가 온라인으로 당 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 
 완료하는 것으로 성립됩니다. 
② 이용계약에 대한 동의는 회원가입신청서 상의 '동의'버튼을 누름으로써 의사표시를 합니다 
제6조 (서비스 이용 신청)
 
① 당 사이트 회원으로 가입하여 서비스를 이용하고자 하는 이용자는 당 사이트에서 요청하는 다음사항을 제공하여야 합니다. 
1. '회원의 이름'
2. '아이디'와 '비밀번호'(암호화)
3. 전자우편주소
4. 연락처
5. 휴대폰번호와 전화번호
② 모든 회원은 반드시 회원 본인의 정보를 제공하여야만 서비스를 이용할 수 있으며, 타인의 정보를 도용하거나 허위의 정보를 등록하는 등 본인의 진정한 정보를 등록하지 않은 회원은 서비스 이용과 관련하여 권리를 주장할 수 없으며, 관계 법령에 따라 처벌 받을 수도 있습니다. 
제7조 (이용신청의 승낙과 제한)
 
① 당 사이트는 제5조, 제6조의 규정에 의한 이용신청에 대하여 업무 수행상 또는 기술상 지장이 없는 경우에 서비스 이용을
승낙함을 원칙으로 합니다. 
② 당 사이트는 아래사항에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다. 
1. 다른 사람의 명의를 사용하여 신청하였을 때
2. 이용계약신청서의 내용을 허위로 기재하였거나 신청하였을 때
3. 사회의 안녕 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때
4. 다른 사람의 당 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때
5. 당 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우
6. 기타 당 사이트 정한 이용신청요건이 미비 되었을 때 
7. 기타 당 사이트 관리자가 필요하다고 인정하는 경우
③ 당 사이트는 서비스 이용신청이 다음 각 호에 해당하는 경우에는 그 신청에 대하여 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다. 
1. 당 사이트 설비의 여유가 없는 경우
2. 당 사이트의 기술상 지장이 있는 영우
3. 기타 당 사이트의 귀책사유로 이용 승낙이 곤란한 경우
제8조 (이용자 ID 부여 및 변경 등)
 
① 당 사이트는 회원에 대하여 약관에 정하는 바에 따라 ID를 부여합니다.
② ID는 원칙적으로 변경이 불가하며 부득이한 사유로 인하여 변경하고자 하는 경우에는 해당 ID를 해지하고 재가입하여야
 하며, 해지된 ID는 재사용할 수 없습니다.
③ 다른 각 호에 해당하는 경우에는 당 사이트의 요청 또는 당 사이트의 직권으로 ID 이용을 정지할 수 있습니다. 
1. ID가 전화번호 또는 주민등록번호 등으로 등록되어 사생활 침해가 우려되는 경우
2. 타인에게 혐오감을 주거나 미풍양속에 어긋나는 경우
3. 당 사이트의 서비스 또는 서비스 운영자 등의 명칭과 동일하거나 오인 등의 우려가 있는 경우
4. 기타 합리적인 사유가 있는 경우
④ ID 및 비밀번호의 관리책임은 회원에게 있습니다. 이를 소홀이 관리하여 발생하는 서비스 이용상의 손해 또는 제3자에 의한 부정이용 등에 대한 책임은 회원에게 있으며 당 사이트는 그에 대한 책임을 지지 않습니다. 
제3장 계약 당사자의 의무 
제9조 (당 사이트의 의무)
 
① 당 사이트는 회원이 희망한 서비스 제공 개시일에 특별한 사정이 없는 한 서비스를 이용할 수 있도록 하여야 합니다.
② 당 사이트는 이용자가 안전하게 콘텐츠를 이용할 수 있도록 개인정보보호를 위해 보안시스템을 구축하며
 개인정보보호방침을 공시하고 준수합니다.
③ 당 사이트는 정보통신이용촉진에관한법률, 전기통신기본법 등 서비스의 운영, 유지와 관련 있는 법규를 준수합니다. 
④ 당 사이트는 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시
 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우는 회원에게 그 사유와 일정을 통보하여야 합니다. 
제10조 (이용자의 의무) 
① 이용자는 관련 법령, 본 약관의 규정, 이용안내 및 콘텐츠와 관련하여 공지한 주의사항 기타 당 사이트가 통지하는 사항을 준수하여야 하며, 당 사이트의 업무에 방해되는 다음의 행위를 하여서는 안됩니다. 
1. 신청 또는 변경시 허위내용의 기재
2. 타인의 정보도용
3. 당 사이트에 게시된 정보의 변경
4. 당 사이트가 금지한 정보(컴퓨터 프로그램 등)의 송신 또는 게시
5. 당 사이트와 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. 당 사이트 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 말이나 글, 화상, 음향, 기타 공서양속에 반하는 정보를 당 사이트에 공개 또는 게시하는 행위
8. 기타 불법적이나 부당한 행위
② 회원은 개인정보수정화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다. 
③ 회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편, 팩스 등 기타 방법으로 당 사이트에 변경사항을 알려야 합니다.
④ 제③항의 변경사항을 당 사이트에 알리지 않아 발생한 불이익에 대하여 당 사이트는 책임지지 않습니다. 
⑤ 회원은 당 사이트의 사전 승낙 없이 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의 결과에 대해 당 사이트는 책임을 지지 않습니다. 또한 회원은 이와 같은 영업활동으로 당 사이트가 손해를 입은 경우, 회원은 당 사이트에 손해배상의무를 지며, 당 사이트는 해당 회원에 대해 서비스 이용제한 및 적법한 절차를 거쳐 손해배상 등을 청구할 수 있습니다.
⑥ 회원은 당 사이트의 명시적 동의가 없는 한 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며 이를 담보로 제공할 수 없습니다.
⑦ 회원은 당 사이트 및 제 3자의 지적재산권을 포함한 권리를 침해하거나 제16조 각 호에 해당하는 행위를 해서는 안됩니다.
제4장 서비스의 이용 
제11조 (서비스 이용시간) 
① 서비스의 이용은 당 사이트의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 다만, 시스템 정기점검, 증설 및 교체를 위해 당 사이트가 정한 날이나 시간에 서비스를 일시 중단할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시 중단은 당 사이트를 통해 사전에 공지합니다.
② 당 사이트는 긴급한 시스템 점검, 증설 및 교체, 설비의 장애, 서비스 이용의 폭주, 국가비상사태, 정전 등 부득이한 사유가 발생한 경우 사전 예고없이 일시적으로 서비스의 전부 또는 일부를 중단할 수 있습니다.
③ 당 사이트는 서비스 개편 등 서비스 운영 상 필요한 경우 회원에게 사전예고 후 서비스의 전부 또는 일부의 제공을 중단할 수 있습니다.
제12조 (서비스의 변경)
 
① 이용자에 대한 서비스의 내용은 당 사이트의 정책에 의해 결정되며 변경 또는 중단될 수 있습니다.
② 당 사이트는 콘텐츠 서비스의 내용, 이용방법, 이용시간을 변경할 경우에 변경사유, 변경될 콘텐츠서비스의 내용 및 제공일자 등을 해당 콘텐츠 초기화면에 게시합니다.
제13조 (콘텐츠의 내용 등의 게시)
 
① 당 사이트는 다음 사항을 해당 콘텐츠의 이용초기화면에 '이용자'가 알기 쉽게 표시합니다. 
1. 콘텐츠의 명칭 또는 제호
2. 콘텐츠의 제작 및 표시 연월일
3. 콘텐츠 제작자 표시
4. 콘텐츠 내용, 이용방법, 기타 이용조건
② 당 사이트는 콘텐츠별 이용가능기기 및 이용에 필요한 최소한의 기술사양에 관한 정보를 계약체결에서 '이용자'에게 제공합니다.
제14조 (정보의 제공)
 
① 당 사이트는 이용자가 콘텐츠 이용 중 필요하다고 인정되는 각종 정보에 대하여 공지사항이나 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 언제든지 전자우편 등을 통하여 수신 거절할 수 있습니다. 
② 당 사이트는 서비스 개선 및 이용자 대상의 맞춤서비스 제공 등의 목적으로 이용자의 동의하에 관련 법령에 따라 추가적인 개인정보를 수집할 수 있습니다. 
③ 사회서비스 전자바우처 서비스 제공을 위해 개인정보처리방침 제3조에 따라 개인정보가 제공됩니다. 
제15조 (게시된 콘텐츠의 관리) 
① "게시물"이라 함은 회원이 서비스에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
② 등록한 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 모든 책임은 회원에게 있습니다.
③ 당 사이트는 다음 각 호에 해당하는 게시물 등의 경우 회원의 사전 동의 없이 임의로 중단, 수정, 삭제, 이동 또는 등록 거부 등의 관련 조치를 취할 수 있습니다. 
1. 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우
2. 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우
3. 불법복제 또는 해킹을 조장하는 내용인 경우
4. 영리를 목적으로 하는 광고일 경우
5. 범죄와 결부된다고 객관적으로 인정되는 내용일 경우
6. 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
7. 사적인 정치적 판단이나 종교적 견해의 내용으로 당 사이트가 서비스 성격에 부합하지 않는다고 판단하는 경우
8. 당 사이트에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우
9. 기타 관계법령에 위배된다고 판단되는 경우 
④ 당 사이트는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우 임의로 이를 게시중단(전송중단)할 수 있으며, 게시중단 요청자와 게시물 등록자 간에 소송, 합의 기타 이에 준하는 관련기관의 결정 등이 이루어져 당 사이트에 접수된 경우 이에 따릅니다.
⑤ 해당 게시물 등에 대해 임의 게시중단이 된 경우, 게시물을 등록한 회원은 재게시(전송재개)를 당 사이트에 요청할 수 있으며, 게시 중단일로부터 3개월 내에 재게시를 요청하지 아니한 경우 당 사이트는 이를 삭제할 수 있습니다. 
제16조 (게시물에 대한 저작권)
 
① 회원이 당 사이트에 게시한 게시물의 내용에 대한 권리는 회원에게 있습니다. 
② 당 사이트가 작성한 저작물에 대한 저작권 기타 지적재산권은 당 사이트에 귀속됩니다.
③ 당 사이트가 제공하는 서비스 중 제휴계약에 의해 제공되는 저작물에 대한 저작권 기타 지적재산권은 해당 제공처에 귀속됩니다.
④ 이용자는 당 사이트가 제공하는 서비스를 이용함으로써 얻은 정보 중 당 사이트 또는 제공기관에 지적재산권이 귀속된 정보를 당 사이트 또는 제공기관의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용할 수 없습니다.
⑤ 당 사이트는 약정에 따라 회원의 게시물을 이용하고자 하는 경우, 전화, 팩스, 전자우편 등의 방법을 통해 사전에 회원의 동의를 얻어야 합니다.
제17조 (개인정보의 보호)
 
① 당 사이트는 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력하며, 개인정보의 보호 및 사용에 대해서는 관련 법령 및 당 사이트의 개인정보보호정책이 적용됩니다. 단, 당 사이트의 공식 사이트 이외의 링크된 사이트에서는 당 사이트의 개인정보보호방침이 적용되지 않습니다. 또한, 회원은 비밀 번호 등 타인에게 노출되지 않도록 철저히 관리해야 하며 당 사이트는 회원의 귀책사유로 인해 노출된 정보에 대해서 책임을 지지 않습니다. 
② 당 사이트는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원 본인의 동의여부와 상관없이 회원의 개인정보를 제3자에게 제공할 수 있습니다. 
1. 범죄의 수사나 공소의 제기 및 유지에 필요한 경우
2. 법원의 재판업무수행을 위하여 필요한 경우 
3. 회원의 법령 또는 약관의 위반을 포함하여 부정행위 확인 등의 정보보호 업무를 위해 필요한 경우
4. 기타 법률에 의해 요구되는 경우
제5장 계약해지 및 이용제한 
제18조 (계약 변경 및 해지) 
① 회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 서비스 내 [회원탈퇴] 메뉴를 이용해 가입 해지를 해야 합니다. 
② 당 사이트는 회원이 이용계약을 해지하는 경우 당 사이트의 개인정보보호정책에 따라 회원 등록을 말소합니다. 다만 8조 2항, 3항에 해당되어 강제탈퇴 된 경우에는 최소한의 개인정보(성명, ID)를 보관합니다. 
③ 당 사이트가 회원자격을 제한.정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 '당 사이트'는 회원자격을 취소할 수 있습니다.
④ 당 사이트가 직권으로 이용계약을 해지한 경우, 이를 회원에게 통지하며 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다. 
제19조 (서비스 이용 제한) 
당 사이트는 회원이 서비스 이용내용에 있어서 본 약관 제 10조 내용을 위반하거나, 다음 각 호에 해당하는 경우 서비스 이용 제한, 초기화, 이용계약 해지 및 기타해당 조치를 할 수 있습니다. 
1. 회원정보에 부정한 내용을 등록하거나 타인의 ID, 비밀번호 기타 개인정보를 도용하는 행위 또는 ID를 타인과 거래하거나 제공하는 행위 
2. 공공질서 및 미풍양속에 위반되는 저속, 음란한 내용 또는 타인의 명예나 프라이버시를 침해할 수 있는 내용의 정보, 문장, 도형, 음향, 동영상을 전송, 게시, 전자우편 또는 기타의 방법으로 타인에게 유포하는 행위
3. 다른 이용자를 희롱 또는 위협하거나, 특정 이용자에게 지속적으로 고통 또는 불편을 주는 행위
4. '당 사이트'로부터 특별한 권리를 부여 받지 않고 당 사이트의 프로그램을 변경하거나, 당 사이트의 서버를 해킹하거나, 웹사이트 또는 게시된 정보의 일부분 또는 전체를 임의로 변경하는 행위
5. 서비스를 통해 얻은 정보를 당 사이트의 사전 승낙 없이 서비스 이용 외의 목적으로 복제하거나, 이를 출판 및 방송 등에 사용하거나, 제 3자에게 제공하는 행위 
6. 당 사이트의 운영진, 직원 또는 관계자를 사칭하거나 고의로 서비스를 방해하는 등 정상적인 서비스 운영에 방해가 될 경우
7. 방송통신심의위원회 등 관련 공공기관의 시정 요구가 있는 경우
8. 1년 이상 회원인증 서비스를 이용한 적이 없으며, 서비스 이용제한의 타당한 사유가 발생한 경우 
9. 약관을 포함하여 당 사이트가 정한 제반 규정을 위반하거나 범죄와 결부된다고 객관적으로 판단되는 등 제반 법령을 위반하는 행위
제6장 손해보상 및 기타사항
 
제20조 (손해배상) 
① 당 사이트 회원은 서비스 이용과 관련하여 고의 또는 과실로 상대방에게 손해를 끼친 경우에는 이를 배상하여야 합니다.
② 당 사이트는 콘텐츠 하자 등에 의한 이용자 피해보상의 기준.범위.방법 및 절차에 관한 사항을 디지털 콘텐츠이용자보호지침에 따라 처리합니다.
③ 당 사이트는 무료로 제공하는 서비스의 이용과 관련하여 개인정보보호정책에서 정하는 내용에 위반하지 않는 한 어떠한 손해도 책임을 지지 않습니다.
제21조 (면책조항)
 
① "당 사이트"는 천재지변, 전쟁, 기간통신사업자의 서비스 중지 및 기타 이에 준하는 불가항력으로 인하여 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다.
② 당 사이트는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.
③ 당 사이트는 이용자의 컴퓨터 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.
④ 당 사이트는 회원이 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않으며, 서비스를 이용하면서 얻은 자료로 인한 손해에 대하여 책임을 지지 않습니다. 
⑤ 당 사이트는 회원이 서비스에 게재한 각종 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 대하여 책임을 지지 않으며, 회원 상호간 및 회원과 제 3자 상호 간에 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없고, 이로 인한 손해를 배상할 책임도 없습니다.
⑥ 당 사이트는 회원의 게시물을 등록 전에 사전심사 하거나 상시적으로 게시물의 내용을 확인 또는 검토하여야 할 의무가 없으며, 그 결과에 대한 책임을 지지 아니합니다. 
제22조 (통지)
 
① 당 사이트는 회원에 대하여 통지를 하는 경우 회원이 당 사이트에 등록한 전화, 우편번호, 주소로 할 수 있습니다.
② 당 사이트는 불특정다수 회원에게 통재를 해야 할 경우 팝업창 및 공지 게시판을 통해 일정기간 게시함으로써 개별통지를 갈음할 수 있습니다. 
제23조 (재판권 및 준거법)
 
① 이 약관에 명시되지 않은 사항은 전기통신사업법 등 대한민국의 관계법령과 상관습에 따릅니다.
② 서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 사회보장정보원 소재지를 관할하는 법원을 관할 법원으로 합니다. 관할 법원으로 합니다.
부칙
 
1. 본 약관은 2011년 11월 10일부터 시행됩니다. 
2. 2009년 2월 6일부터 시행되던 종전의 약관은 본 약관으로 대체합니다.
※ 본 약관에 대한 저작권은 사회보장정보원에 귀속하며 무단 복제, 배포, 전송, 기타 저작권 침해행위를 엄금합니다
전자바우처 포털 개인정보보호방침
 
당 사이트는 정부(보건복지부) 산하기관인 사회보장정보원(이하 SSIS)에서 운영하고 있는 전자바우처 포털로 당 사이트에서 취급하는 모든 개인정보는 관련법령에 근거하거나 이용자의 동의에 의하여 수집.보유 및 처리되고 있습니다. 



「개인정보보호법」, 「동법 시행령」, 「동법 시행규칙」은 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 당 사이트는 이러한 법령의 규정에 따라 수집.보유 및 처리하는 개인정보를 점 더 나은 전자바우처 서비스 제공을 위해 적법하게 취급하고 있습니다.



또한 당 사이트는 관련 법령에서 규정한 바에 따라 우리원에서 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 이용자의 권리를 존하며, 여러분은 이러한 법령상 권익의 침해 등에 대하여 행정심판법에서 정하는 바에 따라 행정심판을 청구할 수 있습니다.



당 사이트의 개인정보보호방침은 이용자 여러분의 개인정보를 보호하기 위한 관련 법령에서 규정한 「홈페이지 이용자의 개인정보보호」, 「컴퓨터에 의해 처리되는 개인정보보호」로 구성되어 있습니다. 

홈페이지에서의 개인정보보호
 
1. 자동으로 수집.저장되는 정보 
※ 여러분이 당 사이트를 이용할 경우 다음의 정보는 자동적으로 수집.저장됩니다.
- 이용자 여러분의 인터넷서버 도메인과 우리 홈페이지를 방문할 때 거친 웹사이트의 주소
- 이용자의 브라우져 종류 및 OS 
- 방문일시 등 
위와 같이 자동 수집.저장되는 정보는 이용자 여러분에게 보다 나은 서비스를 제공하기 위한 통계분석과 이용자와 웹사이트간의 원활한 의사소통 등을 위해 이용되어질 것입니다. 
다만 법령의 규정에 따라 이러한 정보를 제출하게 되어 있을 경우도 있다는 것을 유념하시기 바랍니다. 
2. 이메일 및 웹 서식 등을 통한 수집정보
 이용자 여러분은 우편, 전화 또는 온라인 전자서식 등 전자적 방법을 통해 의사를 표시할 수 있습니다. 이러한 방법의 선택에 있어 몇 가지 유의사항을 알려드립니다. 
- 여러분이 홈페이지에 기재한 사항은 다른 사람들이 조회 또는 열람할 수도 있습니다.
- 여러분이 기재한 사항은 관련 법규에 근거하여 필요한 다른 사람과 공유될 수 있으며, 관련법령의 시행과 정책개발의
자료로도 사용될 수 있습니다.
- 또한 이러한 정보는 타 부처와 공유되거나 필요에 의하여 제공될 수도 있습니다.
홈페이지 보안을 위해 관리적.기술적 노력을 하고 있으나 만약의 침해사고 시 문제가 될 수 있는 민감한 정보의 기재는 피해 주시기 바랍니다.
3. 웹사이트에서 운영하는 보안조치
 홈페이지의 보안 또는 지속적인 서비스를 위해 당 사이트는 네트워크 트래픽의 통제(Monitor)는 물론 불법적으로 정보를 변경하는 등의 시도를 탐지하기 위해 여러가지 프로그램을 운영하고 있습니다. 
- 여러분이 홈페이지에 기재한 사항은 다른 사람들이 조회 또는 열람할 수도 있습니다.
- 이용자 여러분이 홈페이지에 기재한 내용 중 개인정보가 포함되어 있는 경우 개인정보를 삭제 조치 후 게시하여야 한다. 
※ '개인정보'라 함은 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명.주민등록번호 및 화상 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보 (당해 정보만으로는 특정개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함한다)를 말한다.(개인정보보호법 제2조제2항) 
4. 링크사이트 .웹 페이지
 당 사이트가 운영하는 여러 웹페이지에 포함된 링크 또는 배너를 클릭하여 다른 사이트 또는 웹페이지로 옮겨갈 경우 개인정보보호방침은 그 사이트 운영기관이 게시한 방침이 적용됨으로 새로 방문한 사이트의 방침을 확인하시기 바랍니다. 
5. 웹사이트 이용 중 다른 사람의 개인정보 취득
 당 사이트가 운영하는 웹사이트에서 이메일 주소 등 식별할 수 있는 개인정보를 취득하여서는 아니 됩니다. 허위, 기타 부정한 방법으로 이러한 개인정보를 열람 또는 제공받은 자는 관계 법규에 의하여 처벌을 받을 수 있습니다. 
컴퓨터에 의해 처리된 개인정보 취급 보호방침 
1. 개인정보의 수집 및 보유 
당 사이트는 법령의 규정과 정보주체의 동의에 의해서만 개인정보를 수집ㆍ보유합니다. 당 사이트에서 법령의 규정에 근거하여 수집ㆍ보유하고 있는 주요 개인정보파일은 다음과 같습니다. 
- 파일명 : 당 사이트 회원관리
- 보유목적 : 당 사이트 홈페이지 서비스 운영관리 
- 수집방법 : 온라인 수집(홈페이지 회원가입을 통한 개인 동의) 
- 대상범위 : 일반회원
- 보유기간 : 회원 탈퇴시까지
- 열람청구부서 및 주소 : 보건복지부 사회서비스정책과, 세종특별자치시 도움4로 13 보건복지부(정부세종청사 10동)
- 열람제한항목 : 없음
- 기록항목 : 이름, 이메일, 연락처 등
※ 당 사이트는 보유하고 있는 국민 여러분의 개인정보를 관계 법령에 따라 적법하고 적정하게 처리하며, 권익이 침해받지 않도록 노력할 것입니다. 
2. 개인정보의 이용 및 제공의 제한
 당 사이트가 수집.보유하고 있는 개인정보는 일반 행정정보와 달리 이용 및 제공에 엄격한 제한이 있는 정보입니다. 
-「개인정보보호법」 제10조(이용 및 제공의 제한)에 의거 수집.보유 가능한 경우
- 다른 법률에 의해 보유한 기관 내부에서 이용하거나 보유기관외의 자에게 제공하는 경우
- 정보주체의 동의가 있거나 정보주체에게 제공하는 경우
- 조약 기타 국제협정의 이행을 위해 외국정부 또는 국제기구에 제공하는 경우
- 통계작성 및 학술연구 등의 목적을 위해 특정개인을 식별할 수 없는 형태로 제공하는 경우
- 정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태로 놓여 있거나 주소불명 등으로 동의를 할 수 없는 경우로써 정보주체외의 자에게 제공하는 것이 명백히
정보주체에게 이익이 된다고 인정되는 경우 
- 범죄의 수사와 공소의 제기 및 유지에 필요한 경우 
- 법원의 재판업무수행을 위하여 필요한 경우
- 기타 대통령령이 정하는 특별한 사유가 있는 경우
※ 당 사이트는 개인정보의 이용 및 제공에 있어 관계법령을 엄수하여 부당하게 이용되지 않도록 노력하겠습니다. 
3. 개인정보파일의 열람 및 정정청구 
당 사이트가 보유하고 있는 개인정보파일은 『공공기관의개인정보보호에관한법률』 (다른 법류에 규정이 있는 경우는 해당 법률)의 규정이 정하는 바에 따라 열람을 청구할 수 있습니다. 열람청구 절차(『공공기관의개인정보보호에관한법률』의 경우) 다음 사항은 법 제13조 규정에 의하여 열람을 제한할 수 있습니다.

다음 사항에 해당하는 업무로서 당해업무의 수행에 중대한 지장을 초래하는 경우
- 조세의 부과ㆍ징수 또는 환급에 관한 사항
- 학력ㆍ기능 및 채용에 관한 시험, 자격의 검사, 보상금ㆍ급부금의 산정 등 평가 또는 판단에 관한 업무
- 다른 법률에 의한 감사 및 조사에 관한 업무
- 토지 및 주택 등에 관한 부동산 투기를 방지하기 위한 업무 등
- 개인의 생명ㆍ신체를 해할 우려가 있거나 개인의 재산과 기타 이익을 부당하게 침해할 우려가 있는 경우
4. 정정 청구의 범위(삭제요청)
 본인의 개인정보를 열람한 정보주체는 다음의 경우 정정을 청구할 수 있습니다. 
- 사실과 다르게 기록된 정보의 정정
- 특정항목에 해당사실이 없는 내용에 대한 삭제
- 정정 청구 방법(『공공기관의개인정보보호에관한법률』의 경우)
- 정정ㆍ삭제청구서(별지 제8호 서식)을 작성하여 해당 개인정보파일 부서에 제출 
5. 개인정보파일의 파기 
개인정보파일의 보유목적 달성 등 당해 개인정보파일의 보유가 불필요하게 된 경우에는 당해 개인정보파일을 지체없이 파기합니다. 다만, 다른 법률에 따라 보존하여야하는 경우에는 그러하지 않습니다. 
6. 개인정보의 위탁관리 
당 사이트에서 관리하는 개인정보의 처리를 다른 공공기관 또는 다른 전문기관에 위탁하는 경우, 그 업무에 종사하거나 종사하였던 자에 대해 직무상 알게 된 개인정보를 누설 또는 권한없이 처리하거나 타인의 이용에 제공하는 등 부당한 목적을 위하여 사용하지 않도록 위탁부서에서 아래에 대한 사항에 관하여 필요한 제한이나 절차를 정하고 수탁기관으로 하여금 준수토록하고 있으며, 실태점검도 실시하고 있습니다. 
- 재위탁 금지에 관한 사항
- 개인정보파일의 복사에 관한 사항
- 개인정보의 관리상황 검사 및 소속직원의 교육에 관한 사항
- 수탁기관에서 준수하여야 할 의무를 위반한 경우의 손해배상 등에 관한 사항
7. 권익침해 구제방법 
「개인정보보호법」제12조(처리정보의 열람) 제1항 및 제14조 제1항(처리정보의 정정)의 규정에 의한 청구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익이 침해를 받는 자는 행정심판법이 정하는 방에 따라 행정심판을 청구할 수 있습니다. 
※ 행정심판에 대한 자세한 사항은 법제처(www.moleg.go.kr) 홈페이지를 참고하시기 바랍니다.
「국무총리행정심판위원회(http://simpan.go.kr), 전화번호 안내」
상담전화 1588-1517
8. 개인정보보호 파일 문의 및 침해사항의 신고
 
당 사이트 개인정보보호책임관
이메일 : socialsecurite@ssis.or.kr
전화번호 : (044)202-3206
팩스번호 : (044)202-3956
주소 : 우) 110 - 793 보건복지부 사회서비스정책과, 세종특별자치시 도움4로 13 보건복지부(정부세종청사 10동)
개인정보 파일에 대한 문의
 
보건복지부 사회서비스정책과(전화 (044)202-3206, FAX (044)202-3956)
법령의 규정 등에 의하여 수집한 개인정보가 수집 및 처리목적에 맞게 이용될 수 있도록 항시 지도.감독하겠습니다.
당 사이트 이메일 집단 수집 거부
 당 사이트는 이용자에게 무차별적으로 보내지는 타 기관의 메일을 차단하기 위해 본 웹 사인트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 형사처벌 됨을 유념하시기 바랍니다. 
게시일 2011년 11월 10
</textarea>
						<p>동의하십니까?</p>
						<label><input type="radio" value="yes" name="agreement">동의함</label>
						<label><input type="radio" value="no" name="agreement"
							checked="checked">동의하지 않음</label>
						<form action="register3.jsp" method="post">
							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-sign-in"></i> 가입 시작하기
								</button>
							</div>
						</form>
					</ul>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->


		<!-- *** FOOTER ***
 _________________________________________________________ -->
		<div id="footer" data-animate="fadeInUp">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<h4>Pages</h4>

						<ul>
							<li><a href="text.jsp">About us</a></li>
							<li><a href="text.jsp">Terms and conditions</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="contact.jsp">Contact us</a></li>
						</ul>

						<hr>

						<h4>User section</h4>

						<ul>
							<li><a href="#" data-toggle="modal"
								data-target="#login-modal">Login</a></li>
							<li><a href="register.jsp">Regiter</a></li>
						</ul>

						<hr class="hidden-md hidden-lg hidden-sm">

					</div>
					<!-- /.col-md-3 -->

					<div class="col-md-3 col-sm-6">

						<h4>Top categories</h4>

						<h5>Men</h5>

						<ul>
							<li><a href="category.jsp">T-shirts</a></li>
							<li><a href="category.jsp">Shirts</a></li>
							<li><a href="category.jsp">Accessories</a></li>
						</ul>

						<h5>Ladies</h5>
						<ul>
							<li><a href="category.jsp">T-shirts</a></li>
							<li><a href="category.jsp">Skirts</a></li>
							<li><a href="category.jsp">Pants</a></li>
							<li><a href="category.jsp">Accessories</a></li>
						</ul>

						<hr class="hidden-md hidden-lg">

					</div>
					<!-- /.col-md-3 -->

					<div class="col-md-3 col-sm-6">

						<h4>Where to find us</h4>

						<p>
							<strong>Obaju Ltd.</strong> <br>13/25 New Avenue <br>New
							Heaven <br>45Y 73J <br>England <br> <strong>Great
								Britain</strong>
						</p>

						<a href="contact.jsp">Go to contact page</a>

						<hr class="hidden-md hidden-lg">

					</div>
					<!-- /.col-md-3 -->



					<div class="col-md-3 col-sm-6">

						<h4>Get the news</h4>

						<p class="text-muted">Pellentesque habitant morbi tristique
							senectus et netus et malesuada fames ac turpis egestas.</p>

						<form>
							<div class="input-group">

								<input type="text" class="form-control"> <span
									class="input-group-btn">

									<button class="btn btn-default" type="button">Subscribe!</button>

								</span>

							</div>
							<!-- /input-group -->
						</form>

						<hr>

						<h4>Stay in touch</h4>

						<p class="social">
							<a href="#" class="facebook external" data-animate-hover="shake"><i
								class="fa fa-facebook"></i></a> <a href="#" class="twitter external"
								data-animate-hover="shake"><i class="fa fa-twitter"></i></a> <a
								href="#" class="instagram external" data-animate-hover="shake"><i
								class="fa fa-instagram"></i></a> <a href="#" class="gplus external"
								data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
							<a href="#" class="email external" data-animate-hover="shake"><i
								class="fa fa-envelope"></i></a>
						</p>


					</div>
					<!-- /.col-md-3 -->

				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#footer -->

		<!-- *** FOOTER END *** -->




		<!-- *** COPYRIGHT ***
 _________________________________________________________ -->
		<div id="copyright">
			<div class="container">
				<div class="col-md-6">
					<p class="pull-left">Â© 2015 Your name goes here.</p>

				</div>
				<div class="col-md-6">
					<p class="pull-right">
						Template by <a
							href="http://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
						with support from <a href="https://kakusei.cz">Kakusei</a>
						<!-- Not removing these links is part of the licence conditions of the template. Thanks for understanding :) -->
					</p>
				</div>
			</div>
		</div>
		<!-- *** COPYRIGHT END *** -->



	</div>
	<!-- /#all -->




	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap-hover-dropdown.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/front.js"></script>
</body>

</html>
