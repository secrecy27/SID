<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
						<li>C-item</li>
					</ul>
				</div>
				<div class="col-md-12">
					<div class="row same-height-row" id="productMain">
						<div class="col-sm-6">
							<div class="box">
								<div id="mainImage">
									<img id="image" name="imageUrl" src="${cpage.imageUrl}"
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
											class="col-sm-10 control-label">${cpage.cost}원</label>
									</div>
								</ul>



								<ul class="breadcrumb">
									<div class="form-group row">
										<p>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-file-text-o"></i>포트폴리오
											</button>
										</p>
										<p>디자이너 이메일</p>
									</div>
								</ul>
								<p class="text-center buttons" style="display: inline">
									<a type="button" id="tocart" class="btn btn-primary"
										href="../SidServlet?command=cItemtoCart&email=${sessionScope.email }&id=${cpage.cWriteId}">
										<i class="fa fa glyphicon-plus"></i>&nbsp;장바구니
									</a>
								</p>
								<p class="text-center buttons" style="display: inline">
									<a type="submit" id="tocart" class="btn btn-primary">
										<i class="fa fa glyphicon-plus"></i>&nbsp;주머니
									</a>
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

</body>
</html>