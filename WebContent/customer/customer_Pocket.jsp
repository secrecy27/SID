<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="member/index.jsp">Home</a></li>
						<li>Dpage</li>
					</ul>

					<ul class="breadcrumb">
						<!-- if 세션이 있으면 바로 넘기고 없으면 함수 작동 -->
						<a href="member/DWrite.jsp" class="btn btn-primary"><i
							class="fa fa glyphicon-plus"></i>&nbsp글쓰기</a>
					</ul>

					<div class="dContainer">
						<div class="row products">
							<c:forEach items="${list}" var="dpage">
								<!-- a href 버튼 -->
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

										<script>
		                             
		                                </script>

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


					<div class="pages">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>


				</div>
				<!-- /.col-md-9 -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->


	</div>

</body>
<%@ include file="../include/footer.jsp"%>
</html>