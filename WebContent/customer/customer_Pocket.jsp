<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_for_customer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SID - Snow In Dawn</title>
</head>
<body>
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="panel panel-default sidebar-menu">

						<div class="panel-heading">
							<h3 class="panel-title">전체보기</h3>
						</div>

						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked category-menu">
								<li><a href="SidServlet?command=customer_dplan">D 관리 </a></li>
								<li><a href="SidServlet?command=customer_cplan">C 관리</a></li>
								<li><a href="SidServlet?command=customer_buylist">주문목록</a></li>
								<li><a href="SidServlet?command=customer_customer_coupon">쿠폰목록</a></li>
								<li><a href="SidServlet?command=customer_basket">장바구니</a></li>
								<li><a href="SidServlet?command=customer_pocket">주머니관리</a></li>
								<hr>
								<li><a href="customer_Accountchange.jsp">회원정보변경</a></li>
							</ul>

						</div>
					</div>
				</div>
				<div class="col-md-9">
					<ul class="nav nav-tabs" role="tablist" id="myTab">
						<li><a href="#" onclick="openPocket(event,'left')"
							class="tablinks">
								<h2>좌주머니</h2>
						</a></li>
						<li><a href="#" onclick="openPocket(event,'right')"
							class="tablinks">
								<h2>우주머니</h2>
						</a></li>
					</ul>
					<div class="box info-bar">
						<div class="row">
							<div class="col-sm-12 col-md-4 products-showing">
								<select class="tab" name="condition" id="sel_pocket">
									<li>
										<ul>
											<option value="0" id="pocket1">주머니1</option>
										</ul>
										<ul>
											<option value="1" id="pocket2">주머니2</option>
										</ul>
										<ul>
											<option value="2" id="pocket3">주머니3</option>
										</ul>
								</li>
								</select>
							</div>

							<div class="col-sm-12 col-md-8  products-number-sort">
								<div class="row">
									<form class="form-inline">
										<div class="col-md-6 col-sm-6">
											<div class="products-sort-by">
												<button>전체선택</button>
												<button>선택이동</button>
												<button>선택삭제</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row products">
						<div class="col-md-4 col-sm-6">
							<div class="tabcontent" id="left">
								<div class="dContainer">
									<div class="row products">
										<c:forEach items="${list}" var="dpage">
											<div class="col-md-2 col-sm-6">
												<div class="product">
													<div style="max-width: 100%; width: 100%;">
														<a
															href="../SidServlet?command=read_dpage&num=${dpage.dWriteId}">
															<img src="${dpage.imageUrl}" id="imageFile"
															style="max-width: 100%; width: 100%; height: 150px;">
															<!-- ${dpage.imageUrl} -->
														</a>
													</div>
													<div class="text">
														<p>기준시간 ${dpage.standardDate}</p>
														<p>마감시간 ${dpage.endDate}</p>
														<p>최대지불가능비용 ${dpage.cost}</p>
														<p>조건 ${dpage.condition}</p>
														<p class="buttons">
															<a href="" class="btn btn-default">입</a>
														</p>
													</div>
													<!-- /.text -->
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="tabcontent" id="left">
								<h3>0</h3>
							</div>
							<div class="tabcontent" id="right1">
								<h3>1</h3>
							</div>
							<div class="tabcontent" id="right2">
								<h3>2</h3>
							</div>
							<!-- /.product -->
						</div>
						<!-- /.product -->
					</div>
					<!-- /.products -->
					<script>
						function openPocket(event, direction) {
							var i,
								tabcontent,
								tablinks;
					
							console.log(direction);
							
							tabcontent = document.getElementsByClassName("tabcontent");
							for (i = 0; i < tabcontent.length; i++) {
								tabcontent[i].style.display = "none";
							}
							tablinks = document.getElementsByClassName("tablinks");
							for (i = 0; i < tablinks.length; i++) {
								tablinks[i].className = tablinks[i].className.replace("active", "");
							}
							//document.getElementById(direction).style.display = "block";
							event.currentTarget.className += " active";
					
						}

						$(document).ready(function(){
							console.log("a");
							$("#sel_pocket").on("click",function(){
								if(this.value==0){
									$("#left").show();
									$("#right1").hide();
									$("#right2").hide();
								}else if(this.value==1){
									$("#right1").show();
									$("#right2").hide();
									$("#left").hide();
								}else{
									$("#right2").show();
									$("#left").hide();
									$("#right1").hide();
								}
							})
						})
						
						</script>
				</div>
			</div>
		</div>
	</div>


</body>
<%@ include file="../include/footer.jsp"%>
</html>