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
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/bodybuilding" >
								<i class="flaticon-050-weightlifting"></i>
							</a>
						</div>
						<h4>Bodybuilding</h4>
						<p>전문적인 보디빌딩 선수과정을 성공하기 위한 프로 트레이너들의 명단을 확인하세요!!</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/personalTraining" >
								<i class="flaticon-045-fitness"></i>
							</a>
						</div>
						<h4>Fitness</h4>
						<p>취미와 건강을 위한 운동을 체계적으로 관리를 해줄 트레이너들의 명단을 확인하세요!!</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/aerobic" >
								<i class="flaticon-033-pump"></i>
							</a>
						</div>
						<h4>Aerobic</h4>
						<p>효과적인 칼로리 소모 짧은 시간에 많은 칼로리를 소모해줄 트레이너들의 명단을 확인하세요!!</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/pilates" >
								<i class="flaticon-017-weightlifting-1"></i>
							</a>
						</div>
						<h4>Pilates</h4>
						<p>아름다운 몸매와 라인을 가꿔줄 트레이너들의 명단을 확인하세요!!</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/personalTraining" >
								<i class="flaticon-004-dumbbell"></i>
							</a>
						</div>
						<h4>Personal Training</h4>
						<p>체계적인 식단관리 효과적인 체중감량과 근육증량을 도와줄 트레이너들의 명단을 확인하세요!!</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="icon-box-item">
						<div class="ib-icon">
							<a href="${contextPath }/personalTraining">
								<i class="flaticon-038-vitamins"></i>
							</a>
						</div>
						<h4>Managing</h4>
						<p>체계적인 식단관리 효과적인 체중감량과 근육증량을 도와줄 트레이너들의 명단을 확인하세요!!</p>
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
