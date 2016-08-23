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
                    <div class="col-md-12">

                        <div class="row same-height-row" id="productMain">
                            <div class="col-sm-6">
                                <div class="box">
                                    <div id="mainImage">
                                        <img id="image" name="imageUrl" src="#"	alt="이미지" style='display:none'/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="box">
                                    <form action="../SidServlet?command=dWrite" method="post" name='frm'>
                                        <ul class="breadcrumb">
                                            <div class="form-group row">
                                            	<label class="col-sm-10 control-label">기준시각</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label">${dpage.standardDate}</label>
	                                            </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                            	<label class="col-sm-10 control-label">마감시각</label>
	                                        
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label">${dpage.endDate}</label>
	                                            </div>
                                            </div>
                                        </ul>


                                        <ul class="breadcrumb">
                                        	<div class="form-group row">
                                            	<label class="col-sm-10 control-label">선택조건</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label"> ${dpage.condition}</label>
	                                            </div>
                                            </div>
                                        </ul>

										
                                    	
                                        <ul class="breadcrumb">
                                            <div class="form-group row">
                                        		<label class="col-sm-10 control-label">필요작업시간</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control" type="number" name="time" placeholder="분">
		                                        </div>
	                                    	</div>
                                        </ul>


                                        <ul class="breadcrumb">
                                        	<div class="form-group row">
                                        		<label class="col-sm-10 control-label">필요비용</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control" type="number" name="cost" placeholder="원">
		                                        </div>
	                                    	</div>
                                        </ul>

                                        <ul class="breadcrumb">
                                        	<div class="form-group row">
                                            	<label class="col-sm-10 control-label">최대지불가능 비용</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label"> ${dpage.cost}</label>
	                                            </div>
                                            </div>
                                        </ul>

                                        <p class="text-center buttons">
                                            <a href="basket.html" class="btn btn-primary"><i class="fa fa glyphicon-plus"></i>&nbsp제시하기</a>
                                        </p>
                                        
                                    </form>
                                </div>
                            </div>

                        </div>

                        <div class="box" id="details">
                            <h4>현재 지원한 디자이너</h4>
                            <hr>
                            <ul class="breadcrumb">
                            	<p>명, 닉네임</p>
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
<script>
				function as(){
					console.log("asd");
				}
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
			                        
			                    }                    
			                    reader.readAsDataURL(input.files[0]);
			                    //File내용을 읽어 dataURL형식의 문자열로 저장
			                }
			            }//readURL()--
			            //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
			            $("#imgInp").change(function(){
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
