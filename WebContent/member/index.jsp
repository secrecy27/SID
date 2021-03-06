<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<style>
.cart, .pocket {
	display: inline;
	width: 30px;
	height: 30px;
}
</style>
<body>
	<div id="all">
		<div class="container">
			<div class="col-md-12">
				<div id="main-slider" style="width: 100%">
					<div class="item">
						<img src="../img/main-slider1.jpg" alt="" class="img-responsive">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider2.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider3.jpg" alt="">
					</div>
					<div class="item">
						<img class="img-responsive" src="../img/main-slider4.jpg" alt="">
					</div>
				</div>
				<!-- /#main-slider -->
			</div>
		</div>
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 -Apage</h1>
					</div>
					<div class="row products">
						<c:forEach items="${alist}" var="apage">
							<div class="col-md-2 col-sm-6">
								<div class="product">
									<div class="flip-container">
										<a
											href="../SidServlet?command=read_apage&num=${apage.aWriteId }">
											<img src="${apage.imageUrl }"
											style="max-width: 100%; width: 100%; height: 150px"
											class="img-responsive">
										</a>
									</div>
									<div class="text" id="hash"
										style="max-width: 100%; width: 100%; height: 110px">
										<a href="#">${apage.hashtag }</a>
										<p class="price">${apage.cost}원</p>
										<p class="text-center buttons">
											<a type="button" id="toCart"
												onclick="toCart(${apage.aWriteId})" href="#"><img
												class="cart" src="icon/cart.png"> </a> <a type="button"
												id="toLPocket" onclick="toLPocket(${apage.aWriteId})"
												href="#"><img class="pocket" src="icon/pocket.png"></a>
												
											
										</p>
									</div>
									<!-- /.text -->
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- /.products -->
					<div class="pages">
						<p class="loadMore">
							<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
								class="fa fa-chevron-down"></i> Load more</a>
						</p>
					</div>
				</div>

				<!--  인기페이지 Apage -->
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 -Bpage</h1>
					</div>

					<div class="row products">
						<c:forEach items="${blist}" var="bpage">
							<div class="col-md-2 col-sm-6">
								<div class="product">
									<div class="flip-container">
										<a
											href="../SidServlet?command=read_bpage&num=${bpage.bWriteId }">
											<img src="${bpage.imageUrl }"
											style="max-width: 100%; width: 100%; height: 150px"
											class="img-responsive">
										</a>
									</div>
									<div class="text">
										<a href="#">${bpage.hashtag }</a>
										<p class="price">${bpage.cost}원</p>
										<p class="text-center buttons">
											<a type="button" id="toRPocket"
												onclick="toRPocket(${bpage.bWriteId})"> <img
												class="pocket" src="icon/pocket.png">
											</a>
										</p>
									</div>
									<!-- /.text -->
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- /.products -->
					<div class="pages">
						<p class="loadMore">
							<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
								class="fa fa-chevron-down"></i> Load more</a>
						</p>
					</div>
				</div>
				<!--  인기페이지 Bpage -->
				<div class="col-md-12">
					<div class="box">
						<h1>인기페이지 - Cpage</h1>
					</div>
					<div class="row products">
						<c:forEach items="${clist}" var="cpage">
							<div class="col-md-2 col-sm-6">
								<div class="product">
									<div class="flip-container">
										<a
											href="../SidServlet?command=read_cpage&num=${cpage.cWriteId }">
											<img src="${cpage.imageUrl }"
											style="max-width: 100%; width: 100%; height: 150px"
											class="img-responsive">
										</a>
									</div>
									<div class="text">
										<a href="#">${cpage.hashtag }</a>
										<p class="price">${cpage.cost}원</p>
										<p class="text-center buttons">
											<a type="button" id="toCart"
												onclick="toCart(${cpage.cWriteId})"> <img class="cart"
												src="icon/cart.png">
											</a>
										</p>
									</div>
									<!-- /.text -->
								</div>
							</div>
						</c:forEach>
						<!-- /.product -->
					</div>
				</div>
				<!-- /.products -->
				<div class="pages">
					<p class="loadMore">
						<a href="Apage.jsp" class="btn btn-primary btn-lg"><i
							class="fa fa-chevron-down"></i> Load more</a>
					</p>
				</div>
			</div>
			<!--  인기페이지 Cpage -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->
	</div>
	<!-- /#content -->
	<%@ include file="../include/footer.jsp"%>
	<script>
		function toCart(id) {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoCart&email=${sessionScope.email }&id="+id,
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toCart").prop("disabled", true);
					} else {
	
						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
	
	
		}
	
	
		function toLPocket(id) {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=aItemtoLpocket&email=${sessionScope.email }&id="+id,
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toLPocket").prop("disabled", true);
					} else {
	
						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
	
	
		}
		
		function toRPocket(id) {
			$.ajax({
				type : "POST",
				url : "../SidServlet?command=bItemtoRpocket&email=${sessionScope.email}&id="+id,
				success : function(result) {
					if (result == 1) {
						alert("담기 성공")
						$("#toRPocket").prop("disabled", true);
					} else {
	
						alert("담기 실패 ( 이미 담긴 품목 )")
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
	
	
		}
	</script>


</body>

</html>