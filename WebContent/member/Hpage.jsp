<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp"%>
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
#hCanvas{
  	
}
.barOne{
	display:block;
	text-align:center;
	float:left;
	width:12%;
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
	display:block;
	float:right;
	text-align:center;
	width:12%;
	padding:5px;	
	overflow:scroll;
	overflow-x: hidden;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
   <div id="all">
<!-- main -->
      <div id="container">
        		 <div id="hPageContainer">
        			<div id="moveGui"></div>
					<div class="barOne"> 	
						<div id="baseButton">
							<input type="image" class="img-circle"" onclick="createEntity('a')" src="../img/img1.png"> 
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
					<div class="barTwo">
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

	$('[id="ccButton"]').css("border","");

	$("#"+img).siblings("button").css("border","1px solid red");
	
	
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
	
	var element=document.getElementById('moveGui');
	element.style.top=y-130+'px';
	element.style.left=x+20+'px';
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
<%@ include file="../include/footer.jsp"%>

</body>
</html>