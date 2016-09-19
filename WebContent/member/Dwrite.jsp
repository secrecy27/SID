<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
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
</head>

<style>
.zoomImg {
	max-width: 100%;
	max-height: 100%;
}
#content, #menu, #category, #all,#details {
	background-image: url(../css_sid/1.png);
}

#instruction{
	background-image: url(../css_d_write/3-instruction.png);
	height:45px;
	margin:0px;
	padding:0px;
}
</style>

<body>
	<div id="all">
		<div id="content">
			<div class="container" >
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>D-Write</li>
					</ul>
				</div>
				<form action="../SidServlet?command=dWrite" method="post" name='frm'
					enctype="multipart/form-data">
					<div class="col-md-12">

						<div class="row same-height-row" id="productMain">
							<div class="col-sm-6">
								<div class="box">
									<h3>이미지등록</h3>
									<hr>
									<div id="mainImage">
										<input type='file' id="imgInp" name="imageFile"/>
										
										<br> <img id="image" src="#" alt="이미지"
											style="display: none; width: 100%; max-width: 100%;" />
											<button id="zoomButton" style='display: none'
											onclick='zoomImg()' class="btn btn-primary btn-circle">+</button>
									</div>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="box">
									<ul class="nav nav-tabs">
										<li class="active"><a data-toggle="tab" href="#home">직접
												선정</a></li>
										<li ><a data-toggle="tab" href="#menu1">자동 선정</a></li>

									</ul>
									<div class="tab-content">
										<div id="home" class="tab-pane fade in active">
											<h3>직접 선정</h3>
											<hr>
											<div class="form-group row">
												<label class="col-sm-10 control-label">기준시각</label>
												<div class="col-sm-10">
													<input class="form-control" type="datetime-local"
														value="0000-00-00T12:00:00" name="standardDate">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-10 control-label">마감시각</label>
												<div class="col-sm-10">
													<input class="form-control" type="datetime-local"
														value="0000-00-00T12:00:00" name="endDate">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-10 control-label">최대지불가능 비용</label>
												<div class="col-sm-10">
													<input class="form-control" type="number" name="cost" hints="원">
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-10 control-label">선택조건</label>
												<div class="col-sm-10">
													<select class="form-control" name="condition">
														<option value="0">최고가</option>
														<option value="1">평점</option>
														<option value="2">등급</option>
													</select>
												</div>
											</div>
										</div>
										<div id="menu1" class="tab-pane fade">
											<h3>자동 선정</h3>
											<hr>
											<p>자동으로 선정 됩니다</p>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="box" id="details">

							<div id="instruction"></div>
							<hr>
							<h4>
								핵심포인트
								<button type="button" class="btn btn-default btn-circle">?</button>
							</h4>
							<textarea class="form-control" rows="5" name="point"></textarea>
							<h4>전체적인 느낌</h4>
							<textarea class="form-control" rows="5" name="expl"></textarea>

						</div>

						<div>
							<p class="text-center buttons">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa glyphicon-plus"></i>&nbsp;등록하기
								</button>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	<!-- /.container -->
	<!-- /#content -->

	</div>
	<!-- /#all -->

	<script>
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
						$('#image').css("display", "");
						//$('#zoomButton').css("display", "");

					}
					reader.readAsDataURL(input.files[0]);
					//File내용을 읽어 dataURL형식의 문자열로 저장
				}
			} //readURL()--
			//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
			$("#imgInp").change(function() {
				//alert(this.value); //선택한 이미지 경로 표시
				readURL(this);
				/* $('#imageUrl').val(this.value);
				 */

			});
		});
	</script>

	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->

</body>

</html>
