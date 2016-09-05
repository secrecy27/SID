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
								<div class="form-group row">
									<div class="box">
										<div class="text">
											<label class="col-sm-10 control-label">해쉬태그</label>
											<div class="col-sm-10">
												<label class="col-sm-10 control-label"> <c:forEach
														items="${hashtag}" var="hashtag">
											#${hashtag.hashtag}&nbsp&nbsp
										</c:forEach>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="box">
										<div class="text">
											<label class="col-sm-10 control-label">저작료</label>
											<div class="col-sm-10">
												<label class="col-sm-10 control-label">${bpage.cost}</label>
											</div>
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="box">
										<div class="text">
											<p>
												<button type="button" class="btn btn-primary btn-sm">
													<i class="fa fa-file-text-o"></i>포트폴리오
												</button>
											</p>
											<p>디자이너 이메일 ${designer.email}</p>
										</div>
									</div>
								</div>

								<p class="text-center buttons">
									<a href="" onclick="take()" class="btn btn-primary"><i
										class="fa fa glyphicon-plus"></i>&nbsp담기</a>
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

</html>
