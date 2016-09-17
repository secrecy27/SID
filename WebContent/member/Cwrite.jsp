<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
.zoomImg {
	max-width: 100%;
	max-height: 100%;
}

ul#hashtag li {
	display: inline;
	margin: 5px;
}

ul#hashtag li:before {
	content: "#";
}
#content{
	background-image: url(../css_sid/1.png);
}
</style>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>C-Write</li>
					</ul>
				</div>
				<form method="post" name='frm' enctype="multipart/form-data"
					
					id="bForm">
					<div class="col-md-12">

						<div class="row same-height-row" id="productMain">
							<div class="col-sm-6">
								<div class="box">
									<h3>이미지등록</h3>
									<hr>
									<div id="mainImage">
										<input type='file' id="imgInp" name="imageFile" />
										<button id="zoomButton" style='display: none'
											onclick='zoomImg()' class="btn btn-primary btn-circle">+</button>
										<br> <img id="image" src="#" alt="이미지"
											style="display: none; width: 100%; max-width: 100%;" />
									</div>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="box">
									<div class="form-group row">
										<div class="col-sm-10">
											해시태그 등록<input class="form-control" id="hashtagInput" />
										</div>
										<input style='display: none;' name='hashtag' id="ht">
									</div>
								</div>

								<div class="box">
									<blockquote>
										<ul id="hashtag"></ul>
									</blockquote>
								</div>

								<div class="box">
									<div class="form-group row">
										<label class="col-sm-10 control-label">저작료</label>
										<div class="col-sm-10">
											<input class="form-control" type="number" name="cost"
												hint="원">
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="box" id="details">

							<h4>설명</h4>
							<textarea class="form-control" rows="5" name="expl"></textarea>

						</div>

						<div>
							<p class="text-center buttons">
								<button type="button" onclick="return splitStr()"class="btn btn-primary">
									<i class="fa fa glyphicon-plus"></i>&nbsp;등록하기
								</button>
							</p>
						</div>
					</div>
					<script>
						var arraylist;
						var str;
						$("#hashtagInput")
								.keypress(
										function(e) {
											if (e.keyCode == 13) {
												$("#hashtag")
														.append(
																"<li>"
																		+ $(
																				this)
																				.val()
																		+ '<i class="hashtagRemove fa fa-remove" style="color:red" onclick="this.parentNode.remove()"></i>'
																		+ "</li>");
												$("#hashtagInput").val('');

											}
										});
						
						function splitStr(){
							var str = $("#hashtag").html();
							str = str.substring(4);
							str = str.substring(0,
									str.length - 100);
							arrayList = str
									.split('<i class="hashtagRemove fa fa-remove" style="color:red" onclick="this.parentNode.remove()"></i></li><li>');

							
							$("#ht").val(arrayList);
							
							document.frm.action="../SidServlet?command=cpage_write";
							 document.frm.submit();
							 return true;
							
						}
					</script>

				</form>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- /#content -->

	<!-- /#all -->

	<script>
		//enter로 submit 방지
		$('#bForm').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13) {
				e.preventDefault();
				return false;
			}
		});

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
						$('#zoomButton').css("display", "");

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