<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/2.jpg">
		<div class="container">
			<h2>Personal Training Classes</h2>
		</div>
	</section>
	
	<section class="trainers-section">
		<div class="container">
			<div class="section-title text-center">
				<h2>전문 <span>트레이너</span>들을 만나보세요</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/1.jpg" alt="">
						</div>
						<h4>Michael</h4>
						<p> 트레이너는 동국대학교 체육대학을 졸업하고 스포츠지도사 자격증 2급을 소유하고 있습니다.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/2.jpg" alt="">
						</div>
						<h4>Jessica</h4>
						<p> 트레이너는 경희대학교 체육대학을 졸업하고 스포츠지도사 자격증 2급을 소유하고 있습니다.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/3.jpg" alt="">
						</div>
						<h4>James</h4>
						<p> 트레이너는 한양대학교 체육대학을 졸업하고 스포츠지도사 자격증 2급을 소유하고 있습니다.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/4.jpg" alt="">
						</div>
						<h4>Paula</h4>
						<p> 트레이너는 동국대학교 체육대학을 졸업하고 스포츠지도사 자격증 2급을 소유하고 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	

</body>
</html>