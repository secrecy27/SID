<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.zoomImg {
	max-width: 100%;
	max-height: 100%;
}
</style>

<body>

	<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>A-item</li>
					</ul>
				</div>
				<div class="col-md-12">
					<div class="row same-height-row" id="productMain">
						<div class="col-sm-6">
							<div class="box">
								<div id="mainImage">
									<img id="mainImg" style="width: 100%;" src="${apage.imageUrl}">
									<div>
										<span onclick="toMainImg('1')"><img id="myImage1"
											style="width: 24%;" src="${apage.imageUrl}"> </span> <span
											onclick="toMainImg('2')"><img id="myImage2"
											style="width: 24%;" src="${apage.imageUrl2}"> </span> <span
											onclick="toMainImg('3')"><img id="myImage3"
											style="width: 24%;" src="${apage.imageUrl3}"> </span> <span
											onclick="toMainImg('4')"><img id="myImage4"
											style="width: 24%;" src="${apage.imageUrl4}"> </span> <input
											style="display: none;" value="${apage.imageUrl}"
											name="imageSrc1"> <input style="display: none;"
											value="${apage.imageUrl2}" name="imageSrc2"> <input
											style="display: none;" value="${apage.imageUrl3}"
											name="imageSrc3"> <input style="display: none;"
											value="${apage.imageUrl4}" name="imageSrc4">
									</div>
								</div>

							</div>
						</div>

						<div class="col-sm-6">
							<div class="box">
								<ul class="breadcrumb">
									<div class="form-group row">
										<label class="col-sm-10 control-label">해쉬태그</label> <label
											class="col-sm-10 control-label"> <c:forEach
												items="${hashtag}" var="hashtag">
											#${hashtag.hashtag}&nbsp;&nbsp;
										</c:forEach>
										</label>
									</div>
								</ul>
								<ul class="breadcrumb">
									<div class="form-group row">

										<label class="col-sm-10 control-label">저작료</label> <label
											class="col-sm-10 control-label">${apage.cost}원</label>
									</div>
								</ul>



								<ul class="breadcrumb">
									<div class="form-group row">
										<p>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-file-text-o"></i>포트폴리오
											</button>
										</p>
										<p>디자이너 이메일</p>
									</div>
								</ul>

								<p class="text-center buttons" style="display: inline">
									<a type="button" id="toCart" class="btn btn-primary" onclick="toCart()"
										href="#">
										<i class="fa fa glyphicon-plus"></i>&nbsp;장바구니
									</a>
								</p>
								<p class="text-center buttons" style="display: inline">
									<a type="button" id="toLPocket" class="btn btn-primary" onclick="toLPocket()"
										href="#">
										<i class="fa fa glyphicon-plus"></i>&nbsp;주머니
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="box" id="details">
				<ul class="breadcrumb">
					<div class="panel panel-default">
						<div class="panel-body">${bpage.expl}</div>
					</div>
				</ul>
			</div>
		</div>
	</div>
	<script>
		function toMainImg(num) {
			switch (num) {
			case '1':
				$("#mainImg").attr("src", "${apage.imageUrl }");
				break;
			case '2':
				$("#mainImg").attr("src", "${apage.imageUrl2 }");
				break;
			case '3':
				$("#mainImg").attr("src", "${apage.imageUrl3 }");
				break;
			case '4':
				$("#mainImg").attr("src", "${apage.imageUrl4 }");
				break;
			}
		}
		
		function toCart() {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoCart&email=${sessionScope.email }&id=${apage.aWriteId}",
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toCart").prop("disabled", true);
					} else {

						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});


		}
		
		function toLPocket() {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoLpocket&email=${sessionScope.email }&id=${apage.aWriteId}",
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toLPocket").prop("disabled", true);
					} else {

						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});


		}
	</script>
</body>
</html>