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

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->
<link href="../css/font-awesome.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/animate.min.css" rel="stylesheet">
<link href="../css/owl.carousel.css" rel="stylesheet">
<link href="../css/owl.theme.css" rel="stylesheet">

<!-- theme stylesheet -->
<link href="../css/style.default.css" rel="stylesheet"
	id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="../css/custom.css" rel="stylesheet">

<script src="../js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">

</head>

<style>
.zoomImg{
	max-width:100%;
	max-height:100%;

}

</style>
	<script src="../js/jquery-1.11.0.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.cookie.js"></script>
	<script src="../js/waypoints.min.js"></script>
	<script src="../js/modernizr.js"></script>
	<script src="../js/bootstrap-hover-dropdown.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/front.js"></script>
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
				
					<form action="../SidServlet?command=dWrite" method="post" name='frm'>
						 <div class="col-md-12">

                    <div class="row same-height-row" id="productMain">
                        <div class="col-sm-6">
                            <div class="box">
                             <h3>이미지등록</h3>
                                 <hr>
                                 <div id="mainImage">
                                     <input type='file' id="imgInp"/><button id="zoomButton" style='display:none' onclick='zoomImg()' class="btn btn-primary btn-circle">+</button>
                                     <br>
                                     <img id="image" src="#"alt="이미지" style="display:none"/>
                                 </div>
                                 
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="box">

                                <h3>직접선정</h3>
                                <hr>
                                    <div class="form-group row">
                                        <label class="col-sm-10 control-label">기준시각</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="datetime-local" value="0000-00-00AMT00:00:01"name="standardDate">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-10 control-label">마감시각</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="datetime-local" value="0000-00-00T00:00:01" name="endDate">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-10 control-label">최대지불가능 비용</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="number" name="cost" placeholder="원">
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

                        </div>
                    </div>
                    <div class="box" id="details">

                                <h3>지시사항</h3>
                                <hr>
                                <h4>핵심포인트  <button type="button" class="btn btn-default btn-circle">?</button></h4>
                                <textarea class="form-control" rows="5" name="point"></textarea>
                                <h4>전체적인 느낌</h4>
                                <textarea  class="form-control" rows="5" name="expl"></textarea>

                    </div>
                    
                    <div>
                    	<p class="text-center buttons">
                    		<button type="submit" class="btn btn-primary"><i class="fa fa glyphicon-plus"></i>&nbsp등록하기</button>
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



			
<script>
					var flag=true;
					
					function zoomImg(){
						
						if(flag){
							$('#zoomButton').text("-");
							 $('#image').removeClass("zoomImg");
							 flag=false;
						}else{
							$('#zoomButton').text("+");
							 $('#image').addClass("zoomImg");
							 flag=true;
						}
					}
					
			        $(document).ready(function(){
			            function readURL(input) {
			                if (input.files && input.files[0]) {
			                    var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
			                    reader.onload = function (e) { 
			                    //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			                        $('#image').attr('src', e.target.result);
			                        //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
			                        //(아래 코드에서 읽어들인 dataURL형식)
			                        $('#image').addClass("zoomImg");
			                        $('#image').css("display","");
			                        $('#zoomButton').css("display","");
			                        
			                    }                    
			                    reader.readAsDataURL(input.files[0]);
			                    //File내용을 읽어 dataURL형식의 문자열로 저장
			                }
			            }//readURL()--
			            //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
			            $("#imgInp").change(function(){
			                //alert(this.value); //선택한 이미지 경로 표시
			                readURL(this);
			                /* $('#imageUrl').val(this.value);
	                         */
			               
			            });
			         });
			        
			   
				</script>

	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
	<%@ include file="../include/footer.jsp"%>
</body>

</html>
l>