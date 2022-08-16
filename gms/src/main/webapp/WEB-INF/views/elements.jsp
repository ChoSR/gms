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
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/5.jpg">
		<div class="container">
			<h2>Elements</h2>
		</div>
	</section>
	<!-- Page top section end -->

	<!-- Elements section -->
	<section class="elements-section">
		<div class="container">
			<div class="element">
				<h2 class="el-title">Buttons</h2>
				<button class="site-btn mr-3 mb-3">Send Message</button>
				<button class="site-btn sb-dark mr-3 mb-3">Send Message</button>
				<button class="site-btn sb-line">Send Message</button>
			</div>
			<div class="element">
				<h2 class="el-title">Accordions & Tabs</h2>
				<div class="row">
					<div class="col-lg-6">
						<!-- Accordions -->
						<div id="accordion" class="accordion-area">
							<div class="panel">
								<div class="panel-header" id="headingOne">
									<button class="panel-link" data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">Eget dolor vitae eros feugiat tristique id vitae massa</button>
								</div>
								<div id="collapse1" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
									<div class="panel-body">
										<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Fusce venenatis vel velit vel euismod. Praesent feugiat lorem euismod dictum imperdiet. </p>
									</div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-header" id="headingTwo">
									<button class="panel-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2"> Donec eget dolor vitae eros feugiat tristique id vitae</button>
								</div>
								<div id="collapse2" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
									<div class="panel-body">
										<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Fusce venenatis vel velit vel euismod. Praesent feugiat lorem euismod dictum imperdiet. </p>
									</div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-header active" id="headingThree">
									<button class="panel-link active" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3"> Donec eget dolor vitae eros feugiat tristique</button>
								</div>
								<div id="collapse3" class="collapse show" aria-labelledby="headingThree" data-parent="#accordion">
									<div class="panel-body">
										<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. </p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<!-- Tabs -->
						<div class="tab-element">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">Eget dolor vitae </a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">Donec eget dolor </a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="3-tab" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">Vitae eros </a>
								</li>
							</ul>
							<div class="tab-content" id="myTabContent">
								<!-- single tab content -->
								<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
									<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. 1</p>
								</div>
								<div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
									<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. 2</p>
								</div>
								<div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
									<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. 3</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="element">
				<h2 class="el-title">Loaders</h2>
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<div class="circle-progress" data-cptitle="Happy Clients" data-cpid="id-1" data-cpvalue="50" data-cpcolor="#fcff18"></div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="circle-progress" data-cptitle="Fatt Lost" data-cpid="id-2" data-cpvalue="75" data-cpcolor="#fcff18"></div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="circle-progress" data-cptitle="Work" data-cpid="id-3" data-cpvalue="100" data-cpcolor="#fcff18"></div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="circle-progress" data-cptitle="Energy" data-cpid="id-4" data-cpvalue="25" data-cpcolor="#fcff18"></div>
					</div>
				</div>
			</div>
			<div class="element">
				<h2 class="el-title">Milestones</h2>
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<div class="milestone">
							<h2>1374</h2>
							<p>Happy Clients</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="milestone">
							<h2>356</h2>
							<p>Strong Bodies</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="milestone">
							<h2>57k</h2>
							<p>IG Followers</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="milestone">
							<h2>24/7</h2>
							<p>Working Hours</p>
						</div>
					</div>
				</div>
			</div>
			<div class="element">
				<h2 class="el-title">Icon Boxes</h2>
				<div class="row">
					<div class="col-lg-4">
						<div class="icon-box-item">
							<div class="ib-icon">
								<i class="flaticon-004-dumbbell"></i>
							</div>
							<h4>Intense Workouts</h4>
							<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="icon-box-item">
							<div class="ib-icon">
								<i class="flaticon-031-app-1"></i>
							</div>
							<h4>Intense Workouts</h4>
							<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="icon-box-item">
							<div class="ib-icon">
								<i class="flaticon-010-podium"></i>
							</div>
							<h4>Intense Workouts</h4>
							<p>Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Elements section end -->
	</body>
</html>
