<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<meta name="description" content="X Gym Fitness HTML Template">
	<meta name="keywords" content="fitness, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="${contextPath }/resources/bootstrap/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/flaticon.css"/>
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function execDaumPostcode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		
		            var fullRoadAddr = data.roadAddress; 
		            var extraRoadAddr = ''; 
		
		            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                extraRoadAddr += data.bname;
		            }
		            if (data.buildingName !== '' && data.apartment === 'Y'){
		               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		            }
		            if (extraRoadAddr !== ''){
		                extraRoadAddr = ' (' + extraRoadAddr + ')';
		            }
		            if (fullRoadAddr !== ''){
		                fullRoadAddr += extraRoadAddr;
		            }
		
		            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
		            document.getElementById('roadAddress').value = fullRoadAddr;
		            document.getElementById('jibunAddress').value = data.jibunAddress;
		          
		        }
		    }).open();
		}
	</script>
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header Section Begin -->
    	<tiles:insertAttribute name="header" />
    <!-- Header Section End -->
    
	<tiles:insertAttribute name="body"/>
	
	<!-- Footer Section Begin -->
		<tiles:insertAttribute name="footer" />
	<!-- Footer Section End -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="${contextPath }/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
	<script src="${contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="${contextPath }/resources/bootstrap/js/jquery.slicknav.js"></script>
	<script src="${contextPath }/resources/bootstrap/js/owl.carousel.min.js"></script>
	<script src="${contextPath }/resources/bootstrap/js/circle-progress.min.js"></script>
	<script src="${contextPath }/resources/bootstrap/js/main.js"></script>
</body>
</html>