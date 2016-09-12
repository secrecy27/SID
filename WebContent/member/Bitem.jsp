<%@ page import="com.sid.dao.DPageDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.sid.dto.DWriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>

<style>
.zoomImg {
	max-width: 100%;
	max-height: 100%;
}
</style>

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
									<img id="image" name="imageUrl" src="${bpage.imageUrl}"
										style="width: 100%; max-width: 100%;" />
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="box">
								<ul class="breadcrumb">
									<div class="form-group row">
										<label class="col-sm-10 control-label">해쉬태그</label> <label
											class="col-sm-10 control-label"> <c:forEach
												items="${hashtag}" var="hashtag">
											#${hashtag.hashtag}&nbsp;&nbsp;
										</c:forEach>
										</label>
									</div>
								</ul>
								<ul class="breadcrumb">
									<div class="form-group row">

										<label class="col-sm-10 control-label">저작료</label> <label
											class="col-sm-10 control-label">${bpage.cost}원</label>
									</div>
								</ul>

								<ul class="breadcrumb">
									<div class="form-group row">
										<p>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-file-text-o"></i>포트폴리오
											</button>
										</p>
										<p>디자이너 이메일 ${designer.email}</p>
									</div>
								</ul>
								<p class="text-center buttons">
									<button type="button" id="toRPocket" onclick="toRPocket()"
										class="btn btn-primary">
										<i class="fa fa glyphicon-plus"></i>&nbsp주머니
									</button>
								</p>
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
<script>
	function toRPocket() {
		$.ajax({
			type : "POST",
			url : "../SidServlet?command=bItemtoRpocket&email=${sessionScope.email}&id=${bpage.bWriteId}",
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
</html>
