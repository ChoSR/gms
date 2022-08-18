<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<style>
	.col-md-new1{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}
</style>
</head>
<body>
	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/4.jpg">
		<div class="container">
			<h2>Admin Login</h2>
		</div>
	</section>
	<!-- Page top section end -->
	
	<!-- Contact section -->
    <section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h2 class="contact-title">Admin Login</h2>
					<form action="${contextPath }/admin/member/adminLogin" method="post" class="contact-form">
						<div class="row">
							<div class="col-md-10">
								<p>아이디 <span style="color:red;">*</span></p>
								<input type="text" placeholder="아이디">
							</div>
							<div class="col-md-new1">
								<p>비밀번호 <span style="color:red;">*</span></p>
								<input type="password" placeholder="비밀번호를 입력하세요">
							</div>
						</div>
						<div align="right">
	                       	<button type="submit" class="site-btn"><span class="icon_plus"></span>관리자 로그인</button>
                       	</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact section end -->
</body>
</html>