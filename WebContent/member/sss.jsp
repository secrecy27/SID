<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>

<meta charset="utf-8">
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
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- theme stylesheet -->
<link href="../css/style.default.css" rel="stylesheet"
   id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="../css/custom.css" rel="stylesheet">

<script src="../js/respond.min.js"></script>

<link rel="shortcut icon" href="favicon.png">

<style>

#hPageContainer{

position:relative;
}

#moveGui { 
	position:absolute; top:20px; left:30px;
	z-index:1;
}
#selectingUi{
	position:absolute; top:20px; left:30px;
	z-index:1;
	
}
#hCanvas{
  	
}
#baseUi{
	margin:10px;
}

.barOne{
	margin:10px;
	display:block;
	text-align:center;
	float:left;
	width:8%;
	padding:2px;
	overflow:scroll;
	overflow-x: hidden;
}
input{

	height:80px;
}

#mapButton{
	display:block;
}

#baseButton{
  box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
}


.barTwo{
	position:absolute; top:20px; left:30px;
	display:block;
	float:right;
	text-align:center;
	width:8%;
	margin:10px;
	padding:5px;	
	overflow:scroll;
	overflow-x: hidden;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
 <div id="top">
      <div class="container">
         <div class="col-md-6" data-animation="fadeInDown">
            <ul class="menu">
               <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
               </li>
               <li><a href="register.html">Register</a></li>
               <li><a href="contact.html">Contact</a></li>
               <li><a href="#">Recently viewed</a></li>
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
                  <form action="customer-orders.html" method="post">
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
                     <a href="register.html"><strong>Register now</strong></a>! It is
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

            <a class="navbar-brand home" href="index.html"
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
               <a class="btn btn-default navbar-toggle" href="basket.html"> <i
                  class="fa fa-shopping-cart"></i> <span class="hidden-xs">3
                     items in cart</span>
               </a>
            </div>
         </div>
         <!--/.navbar-header -->

         <div class="navbar-collapse collapse" id="navigation">

            <ul class="nav navbar-nav navbar-left">
               <li class="active"><a href="index.html">Home</a></li>
               <li class="dropdown yamm-fw"><a href="Apage.html"
                  class="dropdown-toggle">Apage <b class="caret"></b></a></li>

               <li class="dropdown yamm-fw"><a href="Bpage.html"
                  class="dropdown-toggle">Bpage <b class="caret"></b></a></li>
               <li class="dropdown yamm-fw"><a href="Cpage.html"
                  class="dropdown-toggle">Cpage <b class="caret"></b></a></li>
               <li class="dropdown yamm-fw"><a href="Dpage.html"
                  class="dropdown-toggle">Dpage <b class="caret"></b></a></li>
               <li class="dropdown yamm-fw"><a href="Hpage.html"
                  class="dropdown-toggle">Hpage <b class="caret"></b></a></li>
            </ul>

         </div>
         <!--/.nav-collapse -->

         <div class="navbar-buttons">

            <div class="navbar-collapse collapse right" id="basket-overview">
               <a href="basket.html" class="btn btn-primary navbar-btn"><i
                  class="fa fa-shopping-cart"></i><span class="hidden-sm">3
                     items in cart</span></a>
            </div>
            <!--/.nav-collapse -->

            <div class="navbar-collapse collapse right" id="search-not-mobile">
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
<!-- main -->

      <div id="container">
      	
        		 <div id="hPageContainer">
        			<div id="moveGui"></div>
        			
        			<div id="selectingUi">
        				
        				<button type="button" class="btn btn-default btn-circle" id="controlOne">1</button>
        				
        				<button type="button" class="btn btn-default btn-circle" id="controlTwo">2</button>
        			
        			</div>
			
					<div class="barOne"> 	
						<div id="baseUI">
						
                                            <select class="form-control" name="condition">
                                                <option value="0">최고가</option>
                                                <option value="1">평점</option>
                                                <option value="2">등급</option>
                                            </select>

						</div>
					
						<div id="baseButton">
							<input type="image" class="img-circle" onclick="createEntity('a')" src="../img/img1.png"> 
						</div>
						<br>
						<div id="baseButton">
							<input type="image" class="img-circle" onclick="createEntity('b')" src="../img/img2.png">
						</div>
						<br>
						<div id="baseButton">
							<input type="image" class="img-circle" onclick="createEntity('c')" src="../img/img3.png">
						</div>
						<br>
					</div>
				
				
					<canvas id="hCanvas">  
					</canvas>
					
					<div class="barTwo" id="barTwo">
					<div id="baseUI">
						
                                            <select class="form-control" name="condition">
                                                <option value="0">주머니1</option>
                                                <option value="1">주머니2</option>
                                                <option value="2">주머니3</option>
                                            </select>

						</div>
						<div id="mapButton">
							<input type="image" onclick="mapping('aaa')" src="../img/pattern.png" id="aaa" value="off">
							<button type="button" id="ccButton" class="btn btn-default" style="display:none;" onclick="changeController('aaa')">ㅇ</button>
							<p id="mapCheck" >0</p>
						</div>
						<br>
						<!-- id를 이미지 고유번호로 둠 -->
					
						<div class="mapButton">
							<input type="image" onclick="mapping('bbb')" src="../img/pattern2.jpg" id="bbb" value="off">
							<button type="button" id="ccButton" class="btn btn-default" style="display:none;" onclick="changeController('bbb')" value="bbb">ㅇ</button>
							<p id="mapCheck" >0</p>
						</div>
						<br>
						
						<div class="mapButton">
							<input type="image" onclick="mapping('ccc')" src="../img/UV_Grid_Sm.jpg" id="ccc" value="off">
							<button type="button" id="ccButton" class="btn btn-default" style="display:none;" onclick="changeController('ccc')" value="ccc">ㅇ</button>
							<p id="mapCheck" >0</p>
						</div>
						<br>
					</div>
        		 </div>
        		 <!-- /#hPageContainer -->
        		 
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
                     <li><a href="text.html">About us</a></li>
                     <li><a href="text.html">Terms and conditions</a></li>
                     <li><a href="faq.html">FAQ</a></li>
                     <li><a href="contact.html">Contact us</a></li>
                  </ul>

                  <hr>

                  <h4>User section</h4>

                  <ul>
                     <li><a href="#" data-toggle="modal"
                        data-target="#login-modal">Login</a></li>
                     <li><a href="register.html">Regiter</a></li>
                  </ul>

                  <hr class="hidden-md hidden-lg hidden-sm">

               </div>
               <!-- /.col-md-3 -->

               <div class="col-md-3 col-sm-6">

                  <h4>Top categories</h4>

                  <h5>Men</h5>

                  <ul>
                     <li><a href="category.html">T-shirts</a></li>
                     <li><a href="category.html">Shirts</a></li>
                     <li><a href="category.html">Accessories</a></li>
                  </ul>

                  <h5>Ladies</h5>
                  <ul>
                     <li><a href="category.html">T-shirts</a></li>
                     <li><a href="category.html">Skirts</a></li>
                     <li><a href="category.html">Pants</a></li>
                     <li><a href="category.html">Accessories</a></li>
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

                  <a href="contact.html">Go to contact page</a>

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
               <p class="pull-left">© 2015 Your name goes here.</p>

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
 
	<script src="../js/three.js"></script>
	<script src="../js/OBJLoader.js"></script>	
	<script src="../js/OrbitControls.js"></script>
   <script src="../js/jquery-1.11.0.min.js"></script>
   <script src="../js/bootstrap.min.js"></script>
   <script src="../js/jquery.cookie.js"></script>
   <script src="../js/waypoints.min.js"></script>
   <script src="../js/modernizr.js"></script>
   <script src="../js/bootstrap-hover-dropdown.js"></script>
   <script src="../js/owl.carousel.min.js"></script>
   <script src="../js/front.js"></script>
   <script src="../js/dat.gui.min.js"></script>
<script>
$(document).ready(function (){
		//왼쪽주머니
	$(".img-circle").click(function(){
	
		$(this).parent().siblings().css("border","");
		$(this).parent().css("border","2px solid red"); 
		
		
    });
	
	$()
		
});

var arrTemplate;
var maxMap=0;
var curMap=0;
var assigned=[0,0];
var rotate=[0,0],segments=[3,3],radius=[1,1];
var geomX=[0,0],geomY=[0,0];
var fb=[true,true];
var camera, controls, scene, renderer;
var mode=1;
var mapController;

var textureA = new THREE.Texture();
var textureB = new THREE.Texture();

init();
animateH();

function test(){
	
}

function changeMode(){//레이아웃빼기
	if(mode){
		mode=0;
	}else{
		mode=1;
	}
}


function changeMappingFigure(){
	
	removeMappingPlane(curMap-1);
	
	if(curMap==1){
		var geometryA=new THREE.CircleGeometry(radius[curMap-1],segments[curMap-1],(Math.PI/36)*rotate[curMap-1]);//radius,segments,thetaStart
		var materialA = new THREE.MeshBasicMaterial( {color: 0xffffff});
		var planeA = new THREE.Mesh( geometryA, materialA );
		
		if(fb[curMap-1]){
			planeA.position.z=5;
		}else{

			planeA.position.z=-4.47;

		}
		planeA.position.x=geomX[curMap-1];
		planeA.position.y=geomY[curMap-1];
		
		planeA.material.side=THREE.DoubleSide;
		planeA.material.map=textureA;
		planeA.name=""+curMap-1;
		
		scene.add( planeA );
	}else if(curMap==2){
		var geometryB=new THREE.CircleGeometry(radius[curMap-1],segments[curMap-1],(Math.PI/180)*rotate[curMap-1]);//radius,segments,thetaStart
		var materialB = new THREE.MeshBasicMaterial( {color: 0xffffff});
		var planeB = new THREE.Mesh( geometryB, materialB );
		if(fb[curMap-1]){
			planeB.position.z=5;
		}else{

			planeB.position.z=-4.47;

		}
		planeB.position.x=geomX[curMap-1];
		planeB.position.y=geomY[curMap-1];
		
		
		planeB.material.side=THREE.DoubleSide;
		planeB.material.map=textureB;
		planeB.name=""+curMap-1;
		
		scene.add( planeB );
	}
}
function removeMappingPlane(name){
	  var selectedObject = scene.getObjectByName(name);
	  console.log("remove mapping plane"+name);	
	    scene.remove( selectedObject );
}



function changeController(img){


	curMap=$("#"+img).siblings("p").text();
	
	mapController.radius=radius[curMap-1];
	mapController.segments=segments[curMap-1];
	mapController.rotate=rotate[curMap-1];
	mapController.FrontBack=fb[curMap-1];
	mapController.LR=geomX[curMap-1];
	mapController.UD=geomY[curMap-1];
	
	if(curMap==1){
		
		$("#controlOne").removeClass("btn btn-default btn-circle").addClass("btn btn-primary btn-circle");
		$("#controlTwo").removeClass("btn btn-primary btn-circle").addClass("btn btn-default btn-circle");
		
	}else{
		$("#controlOne").removeClass("btn btn-primary btn-circle").addClass("btn btn-default btn-circle");
		$("#controlTwo").removeClass("btn btn-default btn-circle").addClass("btn btn-primary btn-circle");
	}

	/* $('[id="ccButton"]').css("border","");

	$("#"+img).siblings("button").css("border","1px solid red");
	 */
	 
	 
	 
	
}
//맵핑 
function mapping(img){
	
 	if($("#"+img).val()=="off"&&maxMap<2){ //두가지 제한
 		
 		for(var i=0;i<2;i++){
 			if(assigned[i]==0){
 				$("#"+img).siblings("p").text(i+1);
 				assigned[i]=1;
 				break;
 				
 			}
 		}
 		
 		curMap=$("#"+img).siblings("p").text();
 		console.log("mapping "+img);
 		changeMappingFigure(img);
 	
 		var imageFile;
 		if(img=='aaa'){
 			imageFile="../img/pattern.png";				
 			//$('#mapButton').sty;e("border","3px solid red;");
 		}else if(img=='bbb'){
 			imageFile="../img/pattern2.jpg";
 		}else if(img=='ccc'){
 			imageFile="../img/UV_Grid_Sm.jpg";
 		}
 		
 		/* if($('#'+img).value=='on'){
 			$('#'+img).text='off';
 		}else{
 			$('#'+img).text='on';	
 		} */
 		var loader = new THREE.ImageLoader();
 		loader.load(imageFile, function ( image ) {
 			console.log(curMap+"curm");
 				if(curMap==1){	
 					
 					textureA.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
 			 		
 					textureA.image = image;

 		 			textureA.needsUpdate = true;
 				}else{
 					textureB.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
 			 		
 					textureB.image = image;

 		 			textureB.needsUpdate = true;
 				}
 		} );
 		
 		$("#"+img).parent().css("border","2px solid red");
 		$("#"+img).val("on");
 		$("#"+img).siblings("button").css("display","");
 		
 		maxMap++;
 		
 		
	}else if($("#"+img).val()=="on"){//지우기
		
		removeMappingPlane($("#"+img).siblings("p").text()-1);
	
		rotate[$("#"+img).siblings("p").text()-1]=0;
		segments[$("#"+img).siblings("p").text()-1]=3;
		radius[$("#"+img).siblings("p").text()-1]=1;
		geomX[$("#"+img).siblings("p").text()-1]=0;
		geomY[$("#"+img).siblings("p").text()-1]=0;
		fb[$("#"+img).siblings("p").text()-1]=true;
		
 		$("#"+img).parent().css("border","");
		$("#"+img).val("off");
 		$("#"+img).siblings("button").css("display","none");
 		assigned[$("#"+img).siblings("p").text()-1]=0;
 		$("#"+img).siblings("p").text("");	
 		
 		console.log(curMap);
 	
		maxMap--;
	}else{
		
	}
 	
} 
//옷 생성
function createEntity(num){// NUM 임의로 설정
	console.log(num);
	removeEntity();
	
	if(num=='a'){
		
		
		var loader = new THREE.OBJLoader();
		loader.load( '../models/originT.obj', function ( object ) {

			object.traverse( function ( child ) {

				if ( child instanceof THREE.Mesh ) {
				}

			} );

			object.name="object";
			object.position.y = 0;
			scene.add( object );

		});
	}else if(num=='b'){
		var geometry = new THREE.SphereGeometry( 7, 32, 32 );
		var material = new THREE.MeshBasicMaterial( {color: 0xffffff} );
		var cylinder = new THREE.Mesh( geometry, material );			
		var mesh = new THREE.Mesh( geometry, material );				
		mesh.position.y = 10		
		mesh.name="object";
		mesh.traverse( function ( child ) {

			if ( child instanceof THREE.Mesh ) {
			}

		} );
		scene.add( mesh );
	}else if(num=='c'){
		var loader = new THREE.OBJLoader();
		loader.load( '../models/male02.obj', function ( object ) {

			object.traverse( function ( child ) {

				if ( child instanceof THREE.Mesh ) {
				//	child.material.map = texture;
				}

			} );

			object.name="object";
			object.position.y = 0;
			scene.add( object );
		});
	}else if(num='test'){
		
		imageFile="../img/pattern.png";	
		var loader = new THREE.ImageLoader();
		loader.load(imageFile, function ( image ) {
			texture.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
			texture.image = image;
			
			texture.needsUpdate = true;

		} );
		
		var loader = new THREE.OBJLoader();
		loader.load( '../models/ee.obj', function ( object ) {

			object.traverse( function ( child ) {

				if ( child instanceof THREE.Mesh ) {
			//		child.material.map = texture;
				}

			} );

			object.name="object";
			object.position.y = 0;
			scene.add( object );
		});
		
	}
}

//옷 지우기
function removeEntity() {
    var selectedObject = scene.getObjectByName("object");
    scene.remove( selectedObject );
}
//init
function init() {

	scene = new THREE.Scene();
	var canvas = document.getElementById( 'hCanvas' );

	renderer = new THREE.WebGLRenderer({canvas:canvas});

	renderer.setPixelRatio( window.devicePixelRatio );
	renderer.setSize( window.innerWidth/1.5, window.innerHeight/1.5 );
	
 		var gui= new dat.GUI({autoPlace:false});
 		$('#moveGui').append($(gui.domElement));
 		mapController = new function() {
 			this.select='a';
 			  this.radius=2;
 			  this.segments=4;
 			  this.rotate=0;
 			  this.FrontBack=true;
 			  this.LR=0;
 			  this.UD=0;
 			};
 			
 			var contr=gui.add(mapController, 'radius',1,4).listen();
 			var contr2=gui.add(mapController, 'segments', 3, 26).step(1).listen();
 			var contr3=gui.add(mapController,'rotate',0,360).step(1).listen();
 			var contr4=gui.add(mapController,'FrontBack').listen();
 			var contr5=gui.add(mapController,'LR',-2.4,2.4).listen();
 			var contr6=gui.add(mapController,'UD',-3.4,2.2).listen();
 			 
 			 contr.onChange(function(){
 				radius[curMap-1]=mapController.radius;
 				changeMappingFigure();
 			 });
 			contr2.onChange(function(){
 				  segments[curMap-1]=mapController.segments;
 					changeMappingFigure();
 			 });
 			contr3.onChange(function(){
				  rotate[curMap-1]=mapController.rotate;
				  changeMappingFigure();
 			 });
 			contr4.onChange(function(){
				  fb[curMap-1]=mapController.FrontBack;
				  changeMappingFigure();
 			 });
 			contr5.onChange(function(){
				geomX[curMap-1]=mapController.LR;	
				changeMappingFigure();
 			 });
 			contr6.onChange(function(){
 				 geomY[curMap-1]=mapController.UD;
 				changeMappingFigure();
 			 });
 			onGUIResize();
	// 1. 카메라 
	camera = new THREE.PerspectiveCamera( 60, window.innerWidth / window.innerHeight, 1, 1000 );
	camera.position.z = 15;
	camera.position.x=0;
	camera.position.y=0;
	controls = new THREE.OrbitControls( camera, renderer.domElement );
	
	//controls.addEventListener( 'change', render ); // add this only if there is no animation loop (requestAnimationFrame)
	controls.enableDamping = true;
	controls.dampingFactor = 0.25;
	controls.enableZoom = false;

	// 1-1. 컨트롤 제한
	controls.maxPolarAngle = Math.PI * 0.5;
	controls.minDistance = 30;
	controls.maxDistance = 130;

	// 2. 옷 밑의 원기둥
	var geometry = new THREE.CylinderGeometry( 20, 20, 5, 64 );
	var material = new THREE.MeshPhongMaterial( {color: 0x999999} );
	var cylinder = new THREE.Mesh( geometry, material );			
	var mesh = new THREE.Mesh( geometry, material );				
	mesh.position.y = -15	
	scene.add( mesh );
	
	var manager = new THREE.LoadingManager();
	manager.onProgress = function ( item, loaded, total ) {

		console.log( item, loaded, total );

	};
	
	// lights
	var spotLight = new THREE.SpotLight( 0xffffff, 1 );
	
	var ambientLight = new THREE.AmbientLight( 0x606060 );
	scene.add( ambientLight ); 
	 
	var sphere = new THREE.SphereGeometry( 0.5, 16, 8 );
	
 	var directionalLight = new THREE.DirectionalLight( 0xffffff,0.3,100 );
	//directionalLight.add(new THREE.Mesh(new THREE.MeshPhongMaterial({color:0x00000})));
	directionalLight.position.set( 15, 25,-20 );
	scene.add( directionalLight );

	var directionalLight = new THREE.DirectionalLight( 0xffffff,0.3,100  );
	//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
	directionalLight.position.set( 15,25,20 );
	scene.add( directionalLight );  

	var directionalLight = new THREE.DirectionalLight( 0xffffff,0.3,100  );
	//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
	directionalLight.position.set( -15, 25,20 );
	scene.add( directionalLight );  
	
	var directionalLight = new THREE.DirectionalLight( 0xffffff,0.3,100  );
	//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
	directionalLight.position.set( -15, 25,-20 );
	scene.add( directionalLight );   
	
	var light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(8,-12,13);
	scene.add( light1 );
	
	light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(-8,-12,13);
	scene.add( light1 );
	
	light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(8,-12,-13);
	scene.add( light1 );
	
	light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(-8,-12,-13);
	scene.add( light1 );
	
	light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(15,-12,0);
	scene.add( light1 );
	
	light1 = new THREE.PointLight( 0xffffff, 0.4, 100 );
	light1.add( new THREE.Mesh( sphere, new THREE.MeshPhongMaterial( { color: 0xffffff } ) ) );
	light1.position.set(-15,-12,0);
	scene.add( light1 );


	window.addEventListener( 'resize', onWindowResize, false );

}
function onWindowResize() {

	camera.aspect = window.innerWidth / window.innerHeight;
	camera.updateProjectionMatrix();

	renderer.setSize( window.innerWidth/1.5, window.innerHeight/1.5 );
	onGUIResize();
}

function onGUIResize(){
	var element = document.getElementById('hCanvas');
	var position = element.getBoundingClientRect();
	var x = position.left;
	var y = position.top;
	var x2 = position.right;
	
	var element=document.getElementById('moveGui');
	element.style.top=y-130+'px';
	element.style.left=x+20+'px';
	
	element=document.getElementById('barTwo');
	element.style.top=y-130+'px';
	element.style.left=x2+20+'px';
	
	element=document.getElementById('selectingUi');
	element.style.top=y-130+'px';
	element.style.left=x2-50+'px';
	
}

function animateH() {

	requestAnimationFrame( animateH );

	controls.update(); // required if controls.enableDamping = true, or if controls.autoRotate = true


	renderH();

}

function renderH() {

	renderer.render( scene, camera );
	
	
	if(mode){
		//무대 없어지는거 나중에 구현 ㅇ
	}

}

</script>

</body>
</html>