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
	<a href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
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
                        <li>B-item</li>
                    </ul>
                </div>
                    <div class="col-md-12">

                        <div class="row same-height-row" id="productMain">
                            <div class="col-sm-6">
                                <div class="box">
                                    <div id="mainImage">
                                        <img id="image" name="imageUrl" src="${bpage.imageUrl}"style="width:100%; max-width:100%;"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="box">
                               		<div class="form-group row">
										<label class="col-sm-10 control-label">해쉬태그</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label"></label>
	                                            </div>
									</div>
									<div class="form-group row">
										<label class="col-sm-10 control-label">저작료</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label">${bpage.cost}</label>
	                                            </div>
									</div>
									
                                    <div class="form-group row">
										<label class="col-sm-10 control-label">디자이너 정보</label>
		                                        <div class="col-sm-10">
		                                     	  <label class="col-sm-10 control-label">${bpage.userEmail}</label>
	                                            </div>
									</div>
                                    <p class="text-center buttons">
                                    	<a href="" onclick="take()" class="btn btn-primary"><i class="fa fa glyphicon-plus"></i>&nbsp담기</a>
                                    </p>
                                    
                                    <script>
                                    	function take(){
                                    		
                                    		alert("take take take");
                                    	}
                                    </script>
                                        
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
            </div>
        </div>
	<!-- /#all -->
	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
<%@ include file="../include/footer.jsp"%>
</body>

</html>
