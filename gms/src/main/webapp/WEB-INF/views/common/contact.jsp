<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title></title>
</head>
<body>
	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/4.jpg">
		<div class="container">
			<h2>Contact</h2>
		</div>
	</section>
	<!-- Page top section end -->

	<!-- Contact section -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h2 class="contact-title">Contact Info</h2>
					<div class="contact-info-warp">
						<h4>Location</h4>
						<div class="contact-info">
							<img src="${contextPath }/resources/bootstrap/img/icons/1-dark.png" alt="">
							<div class="cf-text">
								<p>서울특별시 강남구 선릉로 324, 지하1층</p>
							</div>
						</div>
					</div>
					<div class="contact-info-warp">
						<h4>Subscriptions</h4>
						<div class="contact-info">
							<img src="${contextPath }/resources/bootstrap/img/icons/2-dark.png" alt="">
							<div class="cf-text">
								<p>02-123-4592</p>
								<p>02-123-4556</p>
							</div>
						</div>
					</div>
					<div class="contact-info-warp">
						<h4>E-mail</h4>
						<div class="contact-info">
							<img src="${contextPath }/resources/bootstrap/img/icons/3-dark.png" alt="">
							<div class="cf-text">
								<p>Contact@daygym.com</p>
								<p>www.daygym.co.kr</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<h2 class="contact-title">Get in touch</h2>
					<form class="contact-form">
						<div class="row">
							<div class="col-md-6">
								<input type="text" placeholder="Your name">
							</div>
							<div class="col-md-6">
								<input type="text" placeholder="Your e-mail">
							</div>
							<div class="col-md-12">
								<input type="text" placeholder="Subject">
								<textarea placeholder="Message"></textarea>
								<button class="site-btn">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101301.13977640185!2d126.97675748296858!3d37.492334415680155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca5201644e71d%3A0xe408ee770256c48c!2z7Iqk7Y-s7JWg64uIIO2VnO2LsOyXreygkA!5e0!3m2!1sko!2skr!4v1660632889540!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
	</section>
	<!-- Contact section end -->
	</body>
</html>
