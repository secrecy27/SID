<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta content="text/jsp; charset=UTF-8" http-equiv="Content-Type">
<title>SID - Snow in Dawn</title>
</head>
<body>

	<div id="all">

		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>D-Write</li>
					</ul>

				</div>
				<div class="col-md-12">
					<ul class="breadcrumb">
						<h1>이미지 등록</h1>
						<form id="form1" method="post" action="SidServlet?command=DWrite" name=formm>
							<input type='file' id="imgInp" /><br /> <img id="image" src="#"
								alt="이미지" />
					</ul>
				</div>
				<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
				<script>
			        $(document).ready(function(){
			            function readURL(input) {
			                if (input.files && input.files[0]) {
			                    var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
			                    reader.onload = function (e) { 
			                    //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			                        $('#image').attr('src', e.target.result);
			                        //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
			                        //(아래 코드에서 읽어들인 dataURL형식)
			                    }                    
			                    reader.readAsDataURL(input.files[0]);
			                    //File내용을 읽어 dataURL형식의 문자열로 저장
			                }
			            }//readURL()--
			            //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
			            $("#imgInp").change(function(){
			               // alert(this.value); //선택한 이미지 경로 표시
			                readURL(this);
			            });
			         });
			   
				  </script>
				<div class="col-md-12">

					<ul class="breadcrumb">
						<h2>지시사항</h2>
						<h3>
							핵심포인트
							<button type="button">?</button>
						</h3>
						<textarea cols="80" rows="5" name="description">
						</textarea>
						<h3>전체적인 느낌</h3>
						<textarea cols="80" rows="5" name="description">
						</textarea>
					</ul>
				</div>
				<div class="col-md-12">

					<ul class="breadcrumb">
						<h3>기간 선택</h3>
						<button type="button" id="autoChoice">자동선택</button>
						<button type="button" id="menualChoice">직접선택</button>
						<div id="select1">선택조건</div>
						<div id="select2">마감일자</div>

						</form>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- /#content -->
	<%@ include file="../include/footer.jsp"%>
</body>

</html>
