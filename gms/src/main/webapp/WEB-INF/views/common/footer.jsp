<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<footer class="footer-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h4>Location</h4>
						<div class="fw-info-box">
							<img src="${contextPath }/resources/bootstrap/img/icons/1.png" alt="">
							<div class="fw-info-text">
								<p>서울특별시 강남구, 선릉로 324, 지하1층</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h4>Subscriptions</h4>
						<div class="fw-info-box">
							<img src="${contextPath }/resources/bootstrap/img/icons/2.png" alt="">
							<div class="fw-info-text">
								<p>02-123-4592</p>
								<p>02-123-4556</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h4>E-mail</h4>
						<div class="fw-info-box">
							<img src="${contextPath }/resources/bootstrap/img/icons/3.png" alt="">
							<div class="fw-info-text">
								<p>Contact@daygym.com</p>
								<p>www.daygym.co.kr</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="footer-widget">
						<h4>Social Media</h4>
						<div class="fw-info-box">
							<img src="${contextPath }/resources/bootstrap/img/icons/4.png" alt="">
							<div class="social-links">
								<a href="#"><i class="fa fa-pinterest"></i></a>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 order-2 order-md-1">
					<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
				</div>
				<div class="col-md-6 order-1 order-md-2">
					<ul class="footer-menu">
						<li><a href="${contextPath }/">Home</a></li>
			<li><a href="${contextPath }/classes">Classes</a></li>
        	<li><a href="${contextPath }/contact">Contact</a></li>
		<c:choose>
			<c:when test="${sessionScope.memberId eq null }">
				<li><a href="${contextPath }/login">Login</a></li>
				<li><a href="${contextPath }/register">Register</a></li>
			</c:when>
			<c:otherwise>
			    <li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}"><span class="icon_info"></span> My Info</a></li>
				<li><a href="${contextPath }/member/logout">Logout</a></li>
			</c:otherwise>
		</c:choose>
					</ul>
					
					
				</div>
			</div>
		</div>
	</footer>

</body>
</html>