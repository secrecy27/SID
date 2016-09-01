<%@ page import="com.sid.dao.DPageDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.DWriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">
<a
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>
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
						<li>D-item</li>
					</ul>
				</div>
				<div class="col-md-12">

					<div class="row same-height-row" id="productMain">
						<div class="col-sm-6">
							<div class="box">
								<div id="mainImage">
									<img id="image" name="imageUrl" src="${dpage.imageUrl}"
										style="width: 100%; max-width: 100%;" />
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="box">
								<form
									action="../SidServlet?command=ditem_suggest&num=${dpage.dWriteId}"
									method="post" name='frm'>
									<ul class="breadcrumb">
										<div class="form-group row">
											<label class="col-sm-10 control-label">기준시각 :<strong>
													${dpage.standardDate}</strong></label> <label
												class="col-sm-10 control-label">마감시각 :<strong>
													${dpage.endDate}</strong>
											</label>
										</div>
									</ul>


									<ul class="breadcrumb">
										<div class="form-group row">
											<label class="col-sm-10 control-label">선택조건 : <strong><c:if
														test="${dpage.condition eq '0'}">
												최고가 우선</c:if> <c:if test="${dpage.condition eq '1'}">
												평점 우선</c:if> <c:if test="${dpage.condition eq '2'}">
												등급 우선</c:if> </strong>
											</label>
										</div>
									</ul>



									<ul class="breadcrumb">
										<div class="form-group row">
											<label class="col-sm-3 control-label">필요작업시간 <input
												class="form-control" type="number" name="needTime"
												placeholder="분">
											</label>
										</div>
									</ul>


									<ul class="breadcrumb">
										<div class="form-group row">
											<label class="col-sm-3 control-label">필요비용 <input
												class="form-control" type="number" name="needCost"
												placeholder="원">
											</label>
										</div>
									</ul>

									<ul class="breadcrumb">
										<div class="form-group row">
											<label class="col-sm-10 control-label">최대지불가능 비용 : <strong>${dpage.cost}</strong></label>

										</div>
									</ul>

									<%
										if (session.getAttribute("admin").equals(1)) {
									%>
									<p class="text-center buttons">
										<button type="submit" class="btn btn-primary">&nbsp제시하기</button>
									</p>
									<%
										} else {
									%>
									<p class="text-center buttons">
										<a href="#" onclick="noAdmin()" class="btn btn-primary">&nbsp제시하기</a>
									</p>
									<%
										}
									%>
								</form>
							</div>
						</div>

					</div>

					<div class="box" id="details">
						<h4>현재 지원한 디자이너 ${count}</h4>
						<hr>
						<ul class="breadcrumb">
							<c:forEach items="${list}" var="dsuggest">
								<div class="box">
									<div class="text">
										<p>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-file-text-o"></i>포트폴리오
											</button>
										</p>
										<p>디자이너 이메일 ${dsuggest.designerEmail}</p>
										<p>필요비용 ${dsuggest.needCost}</p>
										<p>필요작업시간 ${dsuggest.needTime}</p>
									</div>
								</div>
							</c:forEach>
						</ul>
					</div>

					<div class="box" id="details">
						<h3>지시사항</h3>
						<hr>
						<ul class="breadcrumb">
							<h4>핵심포인트</h4>
							<div class="panel panel-default">
								<div class="panel-body">${dpage.point}</div>
							</div>
						</ul>
						<ul class="breadcrumb">
							<h4>전체적인 느낌</h4>
							<div class="panel panel-default">
								<div class="panel-body">${dpage.expl}</div>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	</div>
	<!-- /#all -->

	<script>
		function noAdmin() {
			alert("디자이너만 제시 가능합니다")
		}
		var flag = true;

		function zoomImg() {

			if (flag) {
				$('#zoomButton').text("-");
				$('#image').removeClass("zoomImg");
				flag = false;
			} else {
				$('#zoomButton').text("+");
				$('#image').addClass("zoomImg");
				flag = true;
			}
		}

		$(document).ready(function() {
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
					reader.onload = function(e) {
						//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
						$('#image').attr('src', e.target.result);
						//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
						//(아래 코드에서 읽어들인 dataURL형식)
						$('#image').addClass("zoomImg");

					}
					reader.readAsDataURL(input.files[0]);
					//File내용을 읽어 dataURL형식의 문자열로 저장
				}
			}//readURL()--
			//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
			$("#imgInp").change(function() {
				// alert(this.value); //선택한 이미지 경로 표시
				readURL(this);
				$('#imageUrl').val(this.value);

			});
		});
	</script>

	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<%@ include file="../include/footer.jsp"%>
</body>

</html>
