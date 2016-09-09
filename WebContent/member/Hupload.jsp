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
ul#hashtag li {
	display: inline;
	margin: 5px;
}

ul#hashtag li:before {
	content: "#";
}
</style>

<body>
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>upload</li>
					</ul>
				</div>
				<form action="../SidServlet?command=hpage_upload" method="post" id="form"
					name='frm' enctype="multipart/form-data">
					<div class="col-md-12">

						<div class="row same-height-row" id="productMain">
							<div class="col-sm-6">
								<div class="box">
									<div id="mainImage">
										<img id="mainImg" style="width: 100%;"
											src="<%=request.getParameter("imageSrc1")%>">
										<div>
											<span onclick="toMainImg('1')"><img id="myImage1"
												style="width: 24%;"
												src="<%=request.getParameter("imageSrc1")%>"> </span> <span
												onclick="toMainImg('2')"><img id="myImage2"
												style="width: 24%;"
												src="<%=request.getParameter("imageSrc2")%>"> </span> <span
												onclick="toMainImg('3')"><img id="myImage3"
												style="width: 24%;"
												src="<%=request.getParameter("imageSrc3")%>"> </span> <span
												onclick="toMainImg('4')"><img id="myImage4"
												style="width: 24%;"
												src="<%=request.getParameter("imageSrc4")%>"> </span>
												<input style="display:none;"value="<%=request.getParameter("imageSrc1")%>" name="imageSrc1">
												<input style="display:none;" value="<%=request.getParameter("imageSrc2")%>"name="imageSrc2">
												<input style="display:none;" value="<%=request.getParameter("imageSrc3")%>"name="imageSrc3">
												<input style="display:none;" value="<%=request.getParameter("imageSrc4")%>"name="imageSrc4">
												
										</div>
									</div>


								</div>
							</div>

							<div class="col-sm-6">
								<div class="box">
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
											<label class="col-sm-10 control-label">원가</label>
											<div class="col-sm-10">
												<p><%=request.getParameter("cost")%>
													원
												</p>
											</div>
											<label class="col-sm-10 control-label">할인가</label>
											<div class="col-sm-10">
												<input class="form-control" type="number" name="cost"
													hint="원">
											</div>
										</div>
									</div>

									<div class="box">
										<div class="form-group row">
											<label class="col-sm-10 control-label">기타등등등</label>
											<div class="col-sm-10"></div>
										</div>
									</div>

									<p class="text-center buttons">
										<button type="button" id="tocart" onclick="toCart()"
											class="btn btn-primary">바로구매</button>
										<button type="button" id="tocart" onclick="toCart()"
											class="btn btn-primary">장바구니 담기</button>
										<button type="button" id="tocart" onclick="toCart()"
											class="btn btn-primary">(좌)주머니 담기</button>
									</p>
								</div>

							</div>



						</div>

						<script>
						$('#form').on('keyup keypress', function(e) {
							var keyCode = e.keyCode || e.which;
							if (keyCode === 13) {
								e.preventDefault();
								return false;
							}
						});
									$("#hashtagInput").keypress(function(e) {
												if (e.keyCode == 13) {
													$("#hashtag").append(	"<li>"
																			+ $(this).val()
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
								
								document.frm.action="../SidServlet?command=bWrite";
								 document.frm.submit();
								 return true;
								
							}
							function toMainImg(num){
								switch(num){
								case '1':
									$("#mainImg").attr("src","<%=request.getParameter("imageSrc1")%>");
									break;
								case '2':
									$("#mainImg").attr("src","<%=request.getParameter("imageSrc2")%>");
									break;
								case '3':
									$("#mainImg").attr("src","<%=request.getParameter("imageSrc3")%>");
									break;
								case '4':
									$("#mainImg").attr("src","<%=request.getParameter("imageSrc4")%>");
									break;
								}
							}
						
						</script>


						<div class="box" id="details">

							<h3>지시사항</h3>
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



	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->

</body>

</html>
