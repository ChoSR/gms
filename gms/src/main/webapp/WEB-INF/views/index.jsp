<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title></title>
</head>
<body>
	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/hero-bg.jpg">
		<div class="container">
			<div class="hero-text">
				<h2>Physical activity</h2>
				<h2>enhances <span>positive energy!</span></h2>
				<a href="" class="site-btn">Join the DayGym</a>
			</div>
		</div>
	</section>
	<!-- Hero section end -->

	<!-- Feature section -->
	<section class="feature-section">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-lg-8">
					<div class="section-title text-center">
						<h2>진짜 <span>운동을</span> 하고 싶다면 DAYGYM </h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="icon-box-item">
						<div class="ib-icon">
							<i class="flaticon-004-dumbbell"></i>
						</div>
						<h4>1 : 1 Personal Training</h4>
						<p> 다수 수상경력의 트레이너들이 1:1로 운동과 식단을 관리해 드립니다. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="icon-box-item">
						<div class="ib-icon">
							<i class="flaticon-031-app-1"></i>
						</div>
						<h4>For Older People</h4>
						<p> 장년층과 노년층을 위해서 신체에 무리가 가지 않는 건강을 위한 운동을 알려드립니다. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="icon-box-item">
						<div class="ib-icon">
							<i class="flaticon-010-podium"></i>
						</div>
						<h4>Bodybuilding</h4>
						<p> 보디빌딩 대회를 나가기 위해서 매니지먼트가 필요하신 분 철저하게 관리해 드립니다. </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Feature section end -->

	<!-- Add section -->
	<section class="add-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/add-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 ml-auto">
					<div class="add-text">
						<h2>지금 상담 이후에 등록시 20% <span>할인</span></h2>
						<ul>
							<li><img src="img/check-icon.png" alt="">상기 이벤트는 8월 한달간 한정수량 진행 됩니다.</li>
							<li><img src="img/check-icon.png" alt="">수량이 모두 소진 될 시 조기종료 될 수 있습니다.</li>
							<li><img src="img/check-icon.png" alt="">카드 결제시 부가세 별도</li>
						</ul>
						<a href="#" class="site-btn">가격 알아보기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Add section end -->

	<!-- Milestones section -->
	<section class="milestones-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="milestone">
						<h2>374</h2>
						<p>회원 수</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="milestone">
						<h2>12</h2>
						<p>트레이너 수</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="milestone">
						<h2>1700</h2>
						<p>daygym 팔로워 수</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="milestone">
						<h2>24/7</h2>
						<p>운영시간</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Milestones section end -->

	<!-- Trainers section -->
	<section class="trainers-section">
		<div class="container">
			<div class="section-title text-center">
				<h2>Meet the <span>Trainers</span></h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/1.jpg" alt="">
						</div>
						<h4>Michael Smith</h4>
						<p>Vivamus libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum nec sapien.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/2.jpg" alt="">
						</div>
						<h4>Jessica Black</h4>
						<p>Ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/3.jpg" alt="">
						</div>
						<h4>James Brown</h4>
						<p>Libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum. Donec nec sapien.</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="trainer-item">
						<div class="trainer-pic">
							<img src="${contextPath }/resources/bootstrap/img/trainers/4.jpg" alt="">
						</div>
						<h4>Paula Carlton</h4>
						<p>Sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermen-tum ornare.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Trainers section end -->

	<!-- BMI section -->
	<section class="bmi-section spad">
		<div class="bmi-bg set-bg" data-setbg="${contextPath }/resources/bootstrap/img/bmi-bg.jpg"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-7 ml-auto">
					<div class="section-title mb-0">
						<h2>당신의 <span>BMI</span>를 계산해 보세요</h2>
						<p>체질량지수. 체중(kg)을 키의 제곱(㎡)으로 나눈 값을 통해 지방의 양을 추정하는 비만측정법이다. 체질량지수가 26인 경우에는 21인 사람에 비해 당뇨병에 걸릴 가능성이 여성의 경우에는 8배, 남성의 경우에는 4배에 달하고 담석증 및 고혈압이 발생할 확률도 2~3배나 높아지는 것으로 알려져 있다.</p>
					</div>
					<div class="bmi-calculator-warp">
						<div class="bmi-calculator">
							<div class="row">
								<div class="col-sm-6">
									<input type="text" placeholder="Weight (KG)" id="bmi-weight">
								</div>
								<div class="col-sm-6">
									<input type="text" placeholder="Hight (M)" id="bmi-hight">
								</div>
								<div class="col-sm-6">
									<button class="site-btn" id="bmi-submit">Calculate</button>
								</div>
								<div class="col-sm-6">
									<input type="text" id="bmi-result" readonly>
								</div>
							</div>
							<p>Vivamus libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum nec sapien.Vivamus libero mauris, bibendum.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- BMI section end -->

	</body>
</html>
