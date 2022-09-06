<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="sessionId"  value="${sessionScope.memberId }" />
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title></title>
<script>
	
	function processToOrder(goodsCd) {
		
		if("${sessionId == null}" == "true") {
			alert("로그인을 해주세요.");
			location.href = "${contextPath }/member/login";
		}else{
			location.href = "${contextPath }/order/orderGoods?goodsCd="+goodsCd;
		} 
		
	}
	
</script>
</head>
<body>
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/2.jpg">
		<div class="container">
			<h2>Classes</h2>
		</div>
	</section>

	<section class="service-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/bodybuilding" ></a>
						<div class="ib-icon">
							<i class="flaticon-050-weightlifting"></i>
						</div>
						<h4>Bodybuilding</h4>
						<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/fitness" ></a>
						<div class="ib-icon">
							<i class="flaticon-045-fitness"></i>
						</div>
						<h4>Fitness</h4>
						<p>Vivamus libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/aerobic" ></a>
						<div class="ib-icon">
							<i class="flaticon-033-pump"></i>
						</div>
						<h4>Aerobic</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at vulputate est. Donec tempor felis at nibh eleifend malesuada.  </p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/pilates" ></a>
						<div class="ib-icon">
							<i class="flaticon-017-weightlifting-1"></i>
						</div>
						<h4>Pilates</h4>
						<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/personalTraining" ></a>
						<div class="ib-icon">
							<i class="flaticon-004-dumbbell"></i>
						</div>
						<h4>Personal Training</h4>
						<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item"><a href="${contextPath }/personalTraining"></a>
						<div class="ib-icon">
							<i class="flaticon-038-vitamins"></i>
						</div>
						<h4>Managing</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at vulputate est. Donec tempor felis at nibh eleifend malesuada. </p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="pricing-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/pricing-bg.jpg">
		<div class="container">
			<div class="section-title text-white text-center">
				<h2>Prices for <span>everybody</span></h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="pricing-box">
						<h2>15,000</h2>
						<p>/month</p>
						<ul>
							<li>Gym</li>
							<li>Fitness 24/7</li>
							<li><span></span></li>
							<li><span></span></li>
							<li><span></span></li>
						</ul>
						<a href="javascript:processToOrder(1)" class="site-btn">Basic Plan</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="pricing-box">
						<h2>35,000</h2>
						<p>/month</p>
						<ul>
							<li>Gym</li>
							<li>Fitness 24/7</li>
							<li>Sauna</li>
							<li><span></span></li>
							<li><span></span></li>
						</ul>
						<a href="javascript:processToOrder(2)" class="site-btn">Regular Plan</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="pricing-box">
						<h2>60,000</h2>
						<p>/month</p>
						<ul>
							<li>Gym</li>
							<li>Fitness 24/7</li>
							<li>Sauna</li>
							<li>Personal Trainer</li>
							<li>Massage</li>
						</ul>
						<a href="javascript:processToOrder(3)" class="site-btn">Prime Plan</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="pricing-box">
						<h2>80000</h2>
						<p>/month</p>
						<ul>
							<li>Gym</li>
							<li>Fitness 24/7</li>
							<li>Sauna</li>
							<li>Personal Trainer</li>
							<li>Massage</li>
							<li>Dietician</li>
						</ul>
						<a href="javascript:processToOrder(4)" class="site-btn">Platinum Plan</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="classes-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
					<h2><span>Personal Trainer</span><br>관리가 필요한가요?</h2>
				</div>
				</div>
				<div class="col-lg-6">
					<div class="classes-text">
						<p>현대 사회는 산업이 발달됨에 따라 자동화되고 기계화된 편리한 생활로 인해 신체활동이 점차 줄어들고 있다. 특히 교통수단의 발달은 운동부족 현상의 주범으로 간주된다. 인체는 활동(운동)이 부족하면 체력이 떨어지고, 이로 인해 신체기관의 기능도 저하된다. 기능 저하는 노화의 진행을 당길 뿐 아니라 성인병 등 각종 질병의 원인이 되기도 한다. 그러니 운동은 꼭 필요하다.</p>
						<a href="${contextPath }/contact" class="site-btn">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	</body>
</html>
