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
#hPageContainer {
	position: relative;
}

#moveGui {
	position: absolute;
	top: 20px;
	left: 30px;
	z-index: 1;
}

#selectingUi {
	position: absolute;
	top: 20px;
	left: 30px;
	z-index: 1;
}

.mb {
	max-width: 50%;
	height: auto;
}

#saveLoad {
	position: absolute;
	top: 20px;
	left: 30px;
	z-index: 1;
}

#showCost {
	position: absolute;
	top: 20px;
	left: 30px;
	z-index: 1;
}

#hCanvas {
	
}

.baseUi {
	margin: 10px;
	margin-bottom: 20px;
}

.barOne {
	top: 20px;
	left: 30px;
	display: block;
	float: left;
	text-align: center;
	width: 8%;
	height: 100%;
	max-height: 100%;
	margin: 10px;
	padding: 5px;
	overflow: scroll;
	overflow-x: hidden;
}

input {
	height: 80px;
}

.outerButton {
	display: block;
	text-align: center;
	margin-bottom: 10px;
	max-width: 100%;
	height: 130px;
}

.mapButton {
	vertical-align: middle
}

#baseButton {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

#controlOne {
	margin: 5px;
}

#controlTwo {
	margin: 5px;
}

.selMap {
	width: 60px;
	height: 60px;
}

.barTwo {
	position: absolute;
	top: 20px;
	left: 30px;
	display: block;
	float: right;
	text-align: center;
	width: 8%;
	height: 100%;
	margin: 10px;
	padding: 5px;
	overflow: scroll;
	overflow-x: hidden;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="modal fade" id="loadModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">장바구니에 안전하게 담겼습니다.</h4>
				</div>
				<div class="modal-body">
					<p id="totalCostModal"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">페이지
						이동</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="saveModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">upload</h4>
				</div>
				<form action="Hupload.jsp" method="post" name='frm'>
					<div class="modal-body">
						<p>업로드 화면으로 이동합니다</p>

						<input id="uploadCost" style="display: none" name="cost">
						<input id="input1" style="display: none" name="imageSrc1">
						<input id="input2" style="display: none" name="imageSrc2">
						<input id="input3" style="display: none" name="imageSrc3">
						<input id="input4" style="display: none" name="imageSrc4">

					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">페이지 이동</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="all">
		<!-- main -->

		<div id="container">

			<div id="hPageContainer">
				<div id="moveGui"></div>

				<div id="selectingUi">
					<input type="image" src="" style="display: none"
						class="selMap img-circle" id="controlOne" /> <input type="image"
						src="" style="display: none" class="selMap img-circle"
						id="controlTwo" />
				</div>
				<div id="saveLoad">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#loadModal">담기</button>

					<button type="button" class="btn btn-default btn-lg"
						onclick="screenshot()" data-toggle="modal"
						data-target="#saveModal">upload</button>
				</div>

				<div id="showCost">

					<button type="button" class="btn btn-info btn-lg"
						onclick="cameraPos()">aa</button>

					<button type="button" class="btn btn-info btn-lg">preview</button>
					<button type="button" class="btn btn-default btn-lg" id="totalCost">0</button>
				</div>

				<div class="box barOne">
					<div class="baseUI">
						<select class="form-control" name="condition">
							<option value="0">주머니1</option>
							<option value="1">주머니2</option>
							<option value="2">주머니3</option>
						</select>
					</div>

					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/a.gif">
					</div>
					<br> <br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('b')"
							src="../img/b.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('c')"
							src="../img/c.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage"
							onclick="createEntity('test')" src="../img/d.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/h.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/f.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/g.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/e.gif">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/h.jpg">
					</div>
					<br>
					<div id="baseButton">
						<input type="image" class="baseImage" onclick="createEntity('a')"
							src="../img/j.jpg">
					</div>
					<br>
				</div>

				<canvas id="hCanvas">  
					</canvas>

				<div class="box barTwo" id="barTwo">
					<div class="baseUI">
						<select class="form-control" name="condition">
							<option value="0">주머니1</option>
							<option value="1">주머니2</option>
							<option value="2">주머니3</option>
						</select>
					</div>

					<c:forEach items="${blist}" var="list">
						<div class="outerButton">
							<div class="mapButton">
								<button class="useMapButton btn btn-default btn-circle">use</button>
								<input type="image" src="${list.imageUrl}" class="mb"
									value="off">
								<p class="mapCheck" style="display: none">0</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- /#hPageContainer -->
			<fieldset id="controls">
				<legend>Circle</legend>
				<div class="control">
					WrapS : <select onchange="setwrapS(this)">
						<option value="ClampToEdgeWrapping">ClampToEdgeWrapping</option>
						<option value="RepeatWrapping" selected>RepeatWrapping</option>
						<option value="MirroredRepeatWrapping">MirroredRepeatWrapping</option>
					</select>
				</div>
				<div class="control">
					WrapT : <select onchange="setwrapT(this)">
						<option value="ClampToEdgeWrapping">ClampToEdgeWrapping</option>
						<option value="RepeatWrapping" selected>RepeatWrapping</option>
						<option value="MirroredRepeatWrapping">MirroredRepeatWrapping</option>
					</select>
				</div>
				<div class="control">
					매핑 : <select onchange="setFabric(this)">
						<option value="../img/fab1.jpg" selected>1</option>
						<option value="../img/fab2.jpg">2</option>
						<option value="../img/fab3.jpg">3</option>
						<option value="../img/fab4.jpg">4</option>
						<option value="../img/fab5.jpg">5</option>
					</select>
				</div>
				<div class="control">
					Offset : X <input type="number" value="0" step="0.05"
						onchange="setOffsetU(this)" /> Y <input type="number" value="0"
						step="0.05" onchange="setOffsetV(this)" /><br />
				</div>
				<div class="control">
					Repeat : X <input type="number" value="1" step="0.1"
						onchange="setRepeatU(this)" /> Y <input type="number" value="1"
						step="0.1" onchange="setRepeatV(this)" />
				</div>
			</fieldset>
			<!-- /.container -->
		</div>


		<!-- /#content -->


	</div>
	<!-- /#all -->




	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->

	<script src="../js/three.js"></script>
	<script src="../js/OBJLoader.js"></script>
	<script src="../js/MTLLoader.js"></script>
	<script src="../js/DDSLoader.js"></script>
	<script src="../js/stats.min.js"></script>
	<script src="../js/Detector.js"></script>

	<script src="../js/FBXLoader.js"></script>
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
	
	
		var arrTemplate;
		var maxMap = 0;
		var curMap = 0;
		var assigned = [ 0, 0 ];
		var rotate = [ 0, 0 ],
			segments = [ 20, 20 ],
			radius = [ 1, 1 ];
		var geomX = [ 0, 0 ],
			geomY = [ 0, 0 ];
		var fb = [ true, true ];
		var camera,
			controls,
			scene,
			renderer;
		var mode = 1;
		var mapController;
	
		var texture = new THREE.Texture();
		var texture2 = new THREE.Texture();
		var textureA = new THREE.Texture();
		var textureB = new THREE.Texture();
	
		$(document).ready(function() {
			//왼쪽주머니
			$(".baseImage").click(function() {
	
				$(this).parent().siblings().css("border", "");
				$(this).parent().css("border", "2px solid red");
	
	
			});
	
			$("#controlOne").click(function() {
				curMap = 1;
				$(".selMap").css("border", "");
				$(this).css("border", "2px solid red");
				updateGUI();
	
			});
			$("#controlTwo").click(function() {
				curMap = 2;
				$(".selMap").css("border", "");
				$(this).css("border", "2px solid red");
				updateGUI();
			});
	
			$(".useMapButton").click(function() {
				var input = $(this).siblings("input");
				var thisDiv = $(this).parent();
				var imageSrc = $(this).siblings("input").attr("src");
				var mapCheck = $(this).siblings("p").text()
	
	
				if (input.val() == "off" && maxMap < 2) { //두가지 제한
	
					for (var i = 0; i < 2; i++) {
						if (assigned[i] == 0) {
							input.siblings("p").text(i + 1);
							assigned[i] = 1;
							break;
	
						}
					}
	
					curMap = input.siblings("p").text();
					console.log(imageSrc);
					changeMappingFigure();
	
					if (curMap == "1") {
						$("#controlOne").css("display", "");
						$("#controlOne").attr("src", imageSrc);
						$(".selMap").css("border", "");
						$("#controlOne").css("border", "2px solid red");
	
					} else {
						$("#controlTwo").css("display", "");
						$("#controlTwo").attr("src", imageSrc);
						$(".selMap").css("border", "");
						$("#controlTwo").css("border", "2px solid red");
					}
	
					/* if($('#'+img).value=='on'){
						$('#'+img).text='off';
					}else{
						$('#'+img).text='on';	
					} */
	
					var loader = new THREE.ImageLoader();
					loader.load(imageSrc, function(image) {
						if (curMap == 1) {
	
							textureA.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
	
							textureA.image = image;
							textureA.repeat.set(1.5, 1.5);
							textureA.offset.set(-0.23, -0.23);
							textureA.needsUpdate = true;
						} else {
							textureB.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
	
							textureB.image = image;
	
							textureB.needsUpdate = true;
						}
					});
	
					$(this).removeClass("btn btn-default btn-circle").addClass("btn btn-primary btn-circle");
					input.val("on");
	
					maxMap++;
	
					plusCost(3500);
	
				} else if (input.val() == "on") { //지우기
	
					removeMappingPlane(mapCheck - 1);
	
					rotate[mapCheck - 1] = 0;
					segments[mapCheck - 1] = 3;
					radius[mapCheck - 1] = 1;
					geomX[mapCheck - 1] = 0;
					geomY[mapCheck - 1] = 0;
					fb[mapCheck - 1] = true;
	
					$(this).removeClass("btn btn-primary btn-circle").addClass("btn btn-default btn-circle");
	
					if (mapCheck == "1") {
						$("#controlOne").css("display", "none");
						curMap = 2;
						$(".selMap").css("border", "");
						$("#controlTwo").css("border", "2px solid red");
					} else {
						$("#controlTwo").css("display", "none");
						curMap = 1;
						$(".selMap").css("border", "");
						$("#controlOne").css("border", "2px solid red");
					}
	
					input.val("off");
					assigned[mapCheck - 1] = 0;
	
					/*$( ".mapCheck" ).each(function( index, element ) {
					    // element == this
					    $( element ).css( "backgroundColor", "yellow" );
					    if ( $( this ).text("")!="0" ) {
					      curMap=$(this).text("");
					    }
					});*/
					console.log(curMap);
					maxMap--;
					minusCost(3500);
				} else {
	
				}
				updateGUI();
			});
	
		});
	
		init();
		animateH();
		function setwrapS(that) {
			texture.wrapS = THREE[that.value];
			texture.needsUpdate = true;
	
		}
		;
	
		function setwrapT(that) {
			texture.wrapT = THREE[that.value];
			texture.needsUpdate = true;
	
		}
		;
		function setFabric(that) {
			console.log("c 2 : " + that.value);
	
			var loader = new THREE.ImageLoader();
			loader.load(that.value, function(image) {
	
				texture.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
	
				texture.image = image;
				//texture.offset.set(-0.23,-0.23);
				texture.needsUpdate = true;
	
			});
	
			texture.needsUpdate = true;
	
		}
		;
	
		function setOffsetU(that) {
			texture.offset.x = parseFloat(that.value);
	
		}
		;
	
		function setOffsetV(that) {
			texture.offset.y = parseFloat(that.value);
	
		}
		;
	
		function setRepeatU(that) {
			texture.repeat.x = parseFloat(that.value);
	
		}
		;
	
		function setRepeatV(that) {
			texture.repeat.y = parseFloat(that.value);
	
		}
		;
	
		function updateGUI() {
			mapController.radius = radius[curMap - 1];
			mapController.segments = segments[curMap - 1];
			mapController.rotate = rotate[curMap - 1];
			mapController.FrontBack = fb[curMap - 1];
			mapController.LR = geomX[curMap - 1];
			mapController.UD = geomY[curMap - 1];
		}
		function changeMappingFigure() {
			removeMappingPlane(curMap - 1);
	
			if (curMap == 1) {
				var geometryA = new THREE.CircleGeometry(radius[curMap - 1], segments[curMap - 1], (Math.PI / 36) * rotate[curMap - 1]); //radius,segments,thetaStart
				var materialA = new THREE.MeshBasicMaterial({
					color : 0xffffff
				});
				var planeA = new THREE.Mesh(geometryA, materialA);
	
				if (fb[curMap - 1]) {
					planeA.position.z = 5;
				} else {
	
					planeA.position.z = -4.47;
					planeA.scale.x = -1;
				}
	
				planeA.position.x = geomX[curMap - 1];
				planeA.position.y = geomY[curMap - 1];
	
				planeA.material.side = THREE.DoubleSide;
				planeA.material.map = textureA;
	
	
				planeA.name = "" + curMap - 1;
	
				//0903 texture flip x 
				scene.add(planeA);
			} else if (curMap == 2) {
				var geometryB = new THREE.CircleGeometry(radius[curMap - 1], segments[curMap - 1], (Math.PI / 180) * rotate[curMap - 1]); //radius,segments,thetaStart
				var materialB = new THREE.MeshBasicMaterial({
					color : 0xffffff
				});
				var planeB = new THREE.Mesh(geometryB, materialB);
				if (fb[curMap - 1]) {
					planeB.position.z = 5;
				} else {
	
					planeB.position.z = -4.47;
					planeB.scale.x = -1;
				}
				planeB.position.x = geomX[curMap - 1];
				planeB.position.y = geomY[curMap - 1];
	
				planeB.material.side = THREE.DoubleSide;
				planeB.material.map = textureB;
				if (!fb[curMap - 1]) {
					textureB.flipX = false;
				}
				planeB.name = "" + curMap - 1;
	
				scene.add(planeB);
			}
		}
		function removeMappingPlane(name) {
			var selectedObject = scene.getObjectByName(name);
			console.log("remove mapping plane" + name);
			scene.remove(selectedObject);
		}
	
		//옷 생성
		function createEntity(num) { // NUM 임의로 설정
			clothCost(15000);
	
			removeEntity();
	
			if (num == 'a') {
				var loader = new THREE.ImageLoader();
				loader.load("../img/ang.png", function(image) {
	
					texture.minFilter = THREE.LinearFilter; //이거 없애면 image is not power of two 에러남. 왜??
	
					texture.image = image;
					texture.wrapS = THREE.ClampToEdgeWrapping;
					texture.wrapT = THREE.ClampToEdgeWrapping;
					texture.offset.set(0, 0);
					texture.repeat.set(1, 1);
					texture.needsUpdate = true;
	
				});
	
				var loader = new THREE.OBJLoader();
				loader.load('../models/originT.obj', function(object) {
	
					object.traverse(function(child) {
	
						if (child instanceof THREE.Mesh) {
							child.material.map = texture;
						}
	
					});
	
					object.name = "object";
					object.position.y = 0;
					scene.add(object);
	
				});
			} else if (num == 'b') {
	
				var loader = new THREE.ImageLoader();
				loader.load("../img/ang.png", function(image) {
	
					texture.minFilter = THREE.LinearFilter; //이거 없애면 image is not power of two 에러남. 왜??
	
					texture.image = image;
					texture.wrapS = THREE.ClampToEdgeWrapping;
					texture.wrapT = THREE.ClampToEdgeWrapping;
					texture.offset.set(-3, -9.5);
					texture.repeat.set(13, 13);
					texture.needsUpdate = true;
	
				});
				var loader = new THREE.ImageLoader();
				loader.load("../img/fabric.jpg", function(image) {
	
					texture2.minFilter = THREE.LinearFilter; //이거 없애면 image is not power of two 에러남. 왜??
					texture2.image = image;
					//texture.offset.set(-0.23,-0.23);
					texture2.needsUpdate = true;
	
				});
				var loader = new THREE.OBJLoader();
				loader.load('../models/ab.obj', function(object) {
	
					object.traverse(function(child) {
	
						if (child instanceof THREE.Mesh) {
	
							child.material.map = texture;
	
						}
	
					});
	
					object.name = "object";
					object.position.y = 0;
					scene.add(object);
				});
	
			/* var loader = new THREE.FBXLoader();
			loader.load( '../models/b.FBX', function( object ) {
			
				object.traverse( function( child ) {
			
					if ( child instanceof THREE.Mesh ) {
			
						// pass
						child.material.map = texture;
						child.material.bumpMap=texture2;
			
					}
			
				} );
				object.name = "object";
				object.position.y = 0;
				scene.add( object );
			
			
			}); */
			} else if (num == 'c') {
				var loader = new THREE.ImageLoader();
				loader.load("../img/fab2.jpg", function(image) {
	
					texture.minFilter = THREE.LinearFilter //이거 없애면 image is not power of two 에러남. 왜??
	
					texture.image = image;
					texture.needsUpdate = true;
	
				});
	
	
				loader = new THREE.OBJLoader();
				loader.load('../models/na.obj', function(object) {
	
					object.traverse(function(child) {
	
						if (child instanceof THREE.Mesh) {
	
							child.material.map = texture;
	
						}
	
					});
	
					object.name = "object";
					object.position.y = 0;
					scene.add(object);
				});
	
				loader = new THREE.ImageLoader();
				loader.load("../img/fab1.jpg", function(image) {
	
					texture2.minFilter = THREE.LinearFilter; //이거 없애면 image is not power of two 에러남. 왜??
					texture2.image = image;
					texture2.needsUpdate = true;
	
				});
	
				loader = new THREE.OBJLoader();
				loader.load('../models/nb.obj', function(object) {
	
					object.traverse(function(child) {
	
						if (child instanceof THREE.Mesh) {
	
							child.material.map = texture2;
	
						}
	
					});
	
					object.name = "object2";
					object.position.y = 0;
					scene.add(object);
				});
	
			} else if (num = 'test') {
	
				var onProgress = function(xhr) {
					var percentComplete = xhr.loaded / xhr.total * 100;
					console.log(Math.round(percentComplete, 2) + '% downloaded');
				};
	
	
				var onError = function(xhr) {};
	
				THREE.Loader.Handlers.add(/\.dds$/i, new THREE.DDSLoader());
	
				var mtlLoader = new THREE.MTLLoader();
				mtlLoader.setPath('../models/');
				mtlLoader.load('maptest.mtl', function(materials) {
	
					materials.preload();
	
					var objLoader = new THREE.OBJLoader();
					objLoader.setMaterials(materials);
					objLoader.setPath('../models/');
					objLoader.load('maptest.obj', function(object) {
	
						object.name = "object";
						object.position.y = 0;
						scene.add(object);
	
					}, onProgress, onError);
	
				});
	
			}
		}
	
	
		//옷 지우기
		function removeEntity() {
			var selectedObject = scene.getObjectByName("object");
			scene.remove(selectedObject);
		}
		var strDownloadMime = "image/octet-stream";
		function screenshot() {
			$("#uploadCost").val(cost);
	
			var imgData,
				imgNode;
	
			try {
				var strMime = "image/jpeg";
	
				camera.position.set(0, 0, 30);
				animateH();
	
				var myImage = document.getElementById('myImage');
				var a = renderer.domElement.toDataURL(strMime);
	
				$("#input1").val(a);
	
				camera.position.set(0, 0, -30);
				animateH();
	
				myImage = document.getElementById('myImage2');
	
				a = renderer.domElement.toDataURL(strMime);
	
				$("#input2").val(a);
	
				camera.position.set(-30, 0, 0);
				animateH();
	
				myImage = document.getElementById('myImage3');
	
				a = renderer.domElement.toDataURL(strMime);
	
				$("#input3").val(a);
	
				camera.position.set(30, 0, 0);
				animateH();
	
				myImage = document.getElementById('myImage4');
	
				a = renderer.domElement.toDataURL(strMime);
	
				$("#input4").val(a);
	
				/* 	            saveFile(imgData.replace(strMime, strDownloadMime), "hpage.jpg"); */
	
			} catch (e) {
				console.log(e);
				return;
			}
	
		}
		function screenshot2() {
			console.log("shot");
			var imgData,
				imgNode;
	
			try {
				var strMime = "image/jpeg";
	
	
				var myImage = document.getElementById('myImage2');
	
				camera.position.z = -30;
				camera.position.x = 0;
				camera.position.y = 0;
				myImage2.src = renderer.domElement.toDataURL(strMime);
	
				/* 	            saveFile(imgData.replace(strMime, strDownloadMime), "hpage.jpg"); */
	
			} catch (e) {
				console.log(e);
				return;
			}
	
	
		}
		var saveFile = function(strData, filename) {
			var link = document.createElement('a');
			if (typeof link.download === 'string') {
				document.body.appendChild(link); //Firefox requires the link to be in the body
				link.download = filename;
				link.href = strData;
				link.click();
				document.body.removeChild(link); //remove the link when done
			} else {
				location.replace(uri);
			}
		}
	
		//init
		function init() {
			scene = new THREE.Scene();
			var canvas = document.getElementById('hCanvas');
	
			renderer = new THREE.WebGLRenderer({
				canvas : canvas,
				preserveDrawingBuffer : true
			});
	
			renderer.setPixelRatio(window.devicePixelRatio);
			renderer.setSize(window.innerWidth / 1.5, window.innerHeight / 1.5);
	
			var gui = new dat.GUI({
				autoPlace : false
			});
			$('#moveGui').append($(gui.domElement));
			mapController = new function() {
				this.select = 'a';
				this.radius = 2;
				this.segments = 20;
				this.rotate = 0;
				this.FrontBack = true;
				this.LR = 0;
				this.UD = 0;
			};
	
			var contr = gui.add(mapController, 'radius', 1, 4).listen();
			var contr2 = gui.add(mapController, 'segments', 3, 26).step(1).listen();
			var contr3 = gui.add(mapController, 'rotate', 0, 360).step(1).listen();
			var contr4 = gui.add(mapController, 'FrontBack').listen();
			var contr5 = gui.add(mapController, 'LR', -2.4, 2.4).listen();
			var contr6 = gui.add(mapController, 'UD', -3.4, 2.2).listen();
	
			contr.onChange(function() {
				radius[curMap - 1] = mapController.radius;
				changeMappingFigure();
			});
			contr2.onChange(function() {
				segments[curMap - 1] = mapController.segments;
				changeMappingFigure();
			});
			contr3.onChange(function() {
				rotate[curMap - 1] = mapController.rotate;
				changeMappingFigure();
			});
			contr4.onChange(function() {
				fb[curMap - 1] = mapController.FrontBack;
				changeMappingFigure();
			});
			contr5.onChange(function() {
				geomX[curMap - 1] = mapController.LR;
				changeMappingFigure();
			});
			contr6.onChange(function() {
				geomY[curMap - 1] = mapController.UD;
				changeMappingFigure();
			});
			onGUIResize();
			// 1. 카메라 
			camera = new THREE.PerspectiveCamera(60, window.innerWidth / window.innerHeight, 1, 1000);
			camera.position.z = 15;
			camera.position.x = 0;
			camera.position.y = 0;
	
			controls = new THREE.OrbitControls(camera, renderer.domElement);
	
			//controls.addEventListener( 'change', render ); // add this only if there is no animation loop (requestAnimationFrame)
			controls.enableDamping = true;
			controls.dampingFactor = 0.25;
			controls.enableZoom = false;
	
			// 1-1. 컨트롤 제한
			controls.maxPolarAngle = Math.PI * 0.5;
			controls.minDistance = 30;
			controls.maxDistance = 130;
	
			// 2. 옷 밑의 원기둥
			var geometry = new THREE.CylinderGeometry(20, 20, 5, 64);
			var material = new THREE.MeshPhongMaterial({
				color : 0x999999
			});
			var cylinder = new THREE.Mesh(geometry, material);
			var mesh = new THREE.Mesh(geometry, material);
			mesh.position.y = -15
			scene.add(mesh);
	
			var manager = new THREE.LoadingManager();
			manager.onProgress = function(item, loaded, total) {
	
				console.log(item, loaded, total);
	
			};
	
			// lights
			var spotLight = new THREE.SpotLight(0xffffff, 1);
	
			var ambientLight = new THREE.AmbientLight(0x606060);
			scene.add(ambientLight);
	
			var sphere = new THREE.SphereGeometry(0.5, 16, 8);
	
			var directionalLight = new THREE.DirectionalLight(0xffffff, 0.3, 100);
			//directionalLight.add(new THREE.Mesh(new THREE.MeshPhongMaterial({color:0x00000})));
			directionalLight.position.set(15, 25, -20);
			scene.add(directionalLight);
	
			var directionalLight = new THREE.DirectionalLight(0xffffff, 0.3, 100);
			//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
			directionalLight.position.set(15, 25, 20);
			scene.add(directionalLight);
	
			var directionalLight = new THREE.DirectionalLight(0xffffff, 0.3, 100);
			//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
			directionalLight.position.set(-15, 25, 20);
			scene.add(directionalLight);
	
			var directionalLight = new THREE.DirectionalLight(0xffffff, 0.3, 100);
			//directionalLight.add(new THREE.Mesh(sphere,new THREE.MeshPhongMaterial({color:0x00000})));
			directionalLight.position.set(-15, 25, -20);
			scene.add(directionalLight);
	
			var light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(8, -12, 13);
			scene.add(light1);
	
			light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(-8, -12, 13);
			scene.add(light1);
	
			light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(8, -12, -13);
			scene.add(light1);
	
			light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(-8, -12, -13);
			scene.add(light1);
	
			light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(15, -12, 0);
			scene.add(light1);
	
			light1 = new THREE.PointLight(0xffffff, 0.4, 100);
			light1.add(new THREE.Mesh(sphere, new THREE.MeshPhongMaterial({
				color : 0xffffff
			})));
			light1.position.set(-15, -12, 0);
			scene.add(light1);
	
	
			window.addEventListener('resize', onWindowResize, false);
	
		}
		function onWindowResize() {
			camera.aspect = window.innerWidth / window.innerHeight;
			camera.updateProjectionMatrix();
	
			renderer.setSize(window.innerWidth / 1.5, window.innerHeight / 1.5);
			onGUIResize();
		}
	
		function onGUIResize() {
			var element = document.getElementById('hCanvas');
			var position = element.getBoundingClientRect();
			var x = position.left;
			var y = position.top;
			var y2 = position.bottom;
			var x2 = position.right;
	
			var element = document.getElementById('moveGui');
			element.style.top = y - 130 + 'px';
			element.style.left = x + 20 + 'px';
	
			element = document.getElementById('barTwo');
			element.style.top = y - 130 + 'px';
			element.style.left = x2 + 5 + 'px';
	
			element = document.getElementById('selectingUi');
			element.style.top = y - 130 + 'px';
			element.style.left = x2 - 150 + 'px';
	
			element = document.getElementById('saveLoad');
			element.style.top = y2 - 200 + 'px';
			element.style.left = x + 20 + 'px';
	
			element = document.getElementById('showCost');
			element.style.top = y2 - 200 + 'px';
			element.style.left = x2 - 200 + 'px';
			element = document.getElementById('hPageContainer');
			element.style.height = y2 - 152 + 'px';
	
	
		}
	
		function cameraPos() {
			console.log("x : " + camera.position.x + "y : " + camera.position.y + "z : " + camera.position.z);
	
		}
	
		function animateH() {
			requestAnimationFrame(animateH);
	
			controls.update(); // required if controls.enableDamping = true, or if controls.autoRotate = true
	
	
			renderH();
	
		}
	
		function renderH() {
			renderer.render(scene, camera);
	
		}
	
		var cost = 0;
	
		function plusCost(num) {
			cost += num;
			$("#totalCost").text(cost);
			$("#totalCostModal").text("총 금액은 " + cost + " 원 입니다.");
		}
		function clothCost(num) {
			cost = num;
			$("#totalCost").text(cost);
			$("#totalCostModal").text("총 금액은 " + cost + " 원 입니다.");
		}
		function minusCost(num) {
			cost -= num;
			$("#totalCost").text(cost);
			$("#totalCostModal").text("총 금액은 " + cost + " 원 입니다.");
		}
	</script>

</body>
</html>