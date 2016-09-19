<%@ page import="com.sid.dao.DPageDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.DWriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<style>
input {
	height: 80%;
}
#canvasContainer{
	text-align:center;
}
#canvasBox{
	text-align:center;
	overflow:hidden;
}
.arrowKey {
	width: 40px;
	height: 40px;
}

#arrowDiv {
	text-align: center;
	padding: 10px;
}

#dropDown {
	display: inline-block;
}

#leftBar {
	text-align: center;
	padding: 10px;
	overflow: auto;
	overflow-x: hidden;
}

#rightBar {
	text-align: center;
	padding: 10px;
	overflow: auto;
	overflow-x: hidden;
}

#baseButton {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	background-color:#5a5a5a;
	width:140px;
	height:140px;
	margin:10px;
}

#saveLoad {
	display:block;
	padding:5px;
	position: absolute;
	top: 20px;
	left: 30px;
	z-index: 1;
}
.saveLoadItem{
	margin:5px;
}

#toolButton {
	margin: 5px;
	float: left;
	padding: 10px;
}

#showCost {
	margin: 5px;
	float: right;
}

#hCanvas {
	width: 100%;
}

.row {
	margin-bottom: 15px;
}
</style>
<body style="background-color:#424242">
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
				<form action="member/Hupload.jsp" method="post" name='frm'>
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
		<div id="content">
			<div class="container" style="width: 100%">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="member/index.jsp">Home</a></li>
						<li>Hpage</li>
					</ul>

					<div class="col-md-2">
						<div>
							<div class="row">
								<div class="col-sm-12 col-md-8">
									<select class="form-control" name="condition">
										<option value="0">주머니1</option>
										<option value="1">주머니2</option>
										<option value="2">주머니3</option>
									</select>
								</div>
								<div class="col-sm-12 col-md-4">
									<button class="btn btn-default">
										<img src="../img/grid.png" style="height: 20px">
									</button>
								</div>
							</div>

						</div>
						
						<div id="leftBar">
							<div>
						
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('a')" src="../img/a.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('b')" src="../img/b.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('c')" src="../img/c.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('test')" src="../img/d.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('test2')" src="../img/h.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('test3')" src="../img/f.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('a')" src="../img/g.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('a')" src="../img/e.gif">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('a')" src="../img/h.jpg">
							</div>
							<div id="baseButton">
								<input type="image" class="baseImage"
									onclick="createEntity('a')" src="../img/j.jpg">
							</div>
						</div>
							</div>
					</div>
					<div id="saveLoad">
					
						<div class="saveLoadItem">
						<button type="button" class="btn btn-primary btn-lg"
							data-toggle="modal" data-target="#loadModal">담기</button>
						</div>
						<div class="saveLoadItem">
						<button type="button" class="btn btn-default btn-lg"
							onclick="screenshot()" data-toggle="modal"
							data-target="#saveModal">upload</button>
						
						</div>
						<div class="saveLoadItem">
							<button type="button" class="btn btn-default btn-lg"
							id="totalCost">0</button>
						</div>
						
					
					</div>
					
					<div class="col-md-8">
						<div id="canvasBox">
							<canvas id="hCanvas"></canvas>



							<div id="toolButton">
								<div style="margin-bottom: 3px">
									<img class="arrowKey" src="../img/buttonB.png"> <img
										class="arrowKey" src="../img/buttonA.png">
								</div>
								<div>
									<img class="arrowKey" src="../img/zoomin.png"> <img
										class="arrowKey" src="../img/zoomout.png">
								</div>
							</div>

							<div id="showCost">
								<div id="arrowDiv">
									<div style="margin-bottom: 3px">
										<img class="arrowKey" src="../img/up.png">
									</div>
									<div>
										<img class="arrowKey" src="../img/left.png"> <img
											class="arrowKey" src="../img/down.png"> <img
											class="arrowKey" src="../img/right.png">
									</div>

								</div>
							</div>
						</div>



					</div>

					<div class="col-md-2">

						<div>
							<div class="row">
								<div class="col-sm-12 col-md-8">
									<select class="form-control" name="condition">
										<option value="0">주머니1</option>
										<option value="1">주머니2</option>
										<option value="2">주머니3</option>
									</select>
								</div>
								<div class="col-sm-12 col-md-4">
									<button class="btn btn-default">
										<img src="../img/grid.png" style="height: 20px">
									</button>
								</div>
							</div>

						</div>

						<div id="rightBar">
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


				</div>
				<!-- /.col-md-9 -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
	</div>

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
	
			var c = $("#hCanvas").height();
			$(".box").height(c + 100);
	
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
				loader.load("../img/fabric.jpg", function(image) {
	
					texture.minFilter = THREE.LinearFilter; //이거 없애면 image is not power of two 에러남. 왜??
	
					texture.image = image;
					/* 	texture.wrapS = THREE.ClampToEdgeWrapping;
						texture.wrapT = THREE.ClampToEdgeWrapping;
						texture.offset.set(0, 0);
						texture.repeat.set(1, 1); */
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
				mtlLoader.load('dropbody.mtl', function(materials) {
	
					materials.preload();
	
					var objLoader = new THREE.OBJLoader();
					objLoader.setMaterials(materials);
					objLoader.setPath('../models/');
					objLoader.load('dropbody.obj', function(object) {
	
						object.name = "object";
						object.position.y = 0;
						scene.add(object);
	
					}, onProgress, onError);
	
				});
				mtlLoader = new THREE.MTLLoader();
				mtlLoader.setPath('../models/');
				mtlLoader.load('droparm.mtl', function(materials) {
	
					materials.preload();
	
					var objLoader = new THREE.OBJLoader();
					objLoader.setMaterials(materials);
					objLoader.setPath('../models/');
					objLoader.load('droparm.obj', function(object) {
	
						object.name = "object";
						object.position.y = 0;
						scene.add(object);
	
					}, onProgress, onError);
	
				});
	
			} else if (num = 'test2') {
	
				var onProgress = function(xhr) {
					var percentComplete = xhr.loaded / xhr.total * 100;
					console.log(Math.round(percentComplete, 2) + '% downloaded');
				};
	
	
				var onError = function(xhr) {};
	
				THREE.Loader.Handlers.add(/\.dds$/i, new THREE.DDSLoader());
	
				var mtlLoader = new THREE.MTLLoader();
				mtlLoader.setPath('../models/');
				mtlLoader.load('dropY.mtl', function(materials) {
	
					materials.preload();
	
					var objLoader = new THREE.OBJLoader();
					objLoader.setMaterials(materials);
					objLoader.setPath('../models/');
					objLoader.load('dropY.obj', function(object) {
	
						object.name = "object";
						object.position.y = 0;
						scene.add(object);
	
					}, onProgress, onError);
	
				});
	
				console.log("test2");
	
			} else if (num = 'test3') {
	
				var onProgress = function(xhr) {
					var percentComplete = xhr.loaded / xhr.total * 100;
					console.log(Math.round(percentComplete, 2) + '% downloaded');
				};
	
	
				var onError = function(xhr) {};
	
				THREE.Loader.Handlers.add(/\.dds$/i, new THREE.DDSLoader());
	
				var mtlLoader = new THREE.MTLLoader();
				mtlLoader.setPath('../models/');
				mtlLoader.load('body.mtl', function(materials) {
	
					materials.preload();
	
					var objLoader = new THREE.OBJLoader();
					objLoader.setMaterials(materials);
					objLoader.setPath('../models/');
					objLoader.load('body.obj', function(object) {
	
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
	
			var box = document.getElementById('canvasBox');
	
			renderer.setPixelRatio(window.devicePixelRatio);
			renderer.setSize(canvas.clientWidth, canvas.clientHeight);
	
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
			camera.position.z = 30;
			camera.position.x = 0;
			camera.position.y = 0;
	
			controls = new THREE.OrbitControls(camera, renderer.domElement);
	
			//controls.addEventListener( 'change', render ); // add this only if there is no animation loop (requestAnimationFrame)
			controls.enableDamping = true;
			controls.dampingFactor = 0.25;
	
	
			// 1-1. 컨트롤 제한
			controls.maxPolarAngle = Math.PI * 0.5;
			controls.minDistance = 12;
			controls.maxDistance = 80;
	
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
			var box = document.getElementById('canvasBox');
			camera.aspect = window.innerWidth / window.innerHeight;
			camera.updateProjectionMatrix();
	
			renderer.setSize(box.clientWidth, box.clientHeight);
			onGUIResize();
		}
	
		function onGUIResize() {
			var element = document.getElementById('canvasBox');
			var position = element.getBoundingClientRect();
			var x = position.left;
			var y = position.top;
			var y2 = position.bottom;
			var x2 = position.right;
	
			console.log("x: " + x + "y : " + y);
	
			var element = document.getElementById('saveLoad');
			element.style.top = y -110 + 'px';
			element.style.left = x +20+ 'px';
	
	
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
<%@ include file="../include/footer.jsp"%>
</html>