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
	<header class="header-section">
		<a href="${contextPath }/" class="site-logo">
			<img src="${contextPath }/resources/bootstrap/img/gymlogo2.png" alt="">
		</a>
		<ul class="main-menu">
		<c:choose>
			<c:when test="${sessionScope.memberId eq null }">
				<li><a href="${contextPath }/classes">Classes</a></li>
        		<li><a href="${contextPath }/contact">Contact</a></li>
				<li><a href="${contextPath }/login">Login</a></li>
				<li><a href="${contextPath }/register">Register</a></li>
			</c:when>
			<c:when test="${sessionScope.memberId eq 'gmsadmin'}">
				<li><a href="${contextPath }/admin/member/adminMemberList">User Management</a></li>
				<li><a href="${contextPath }/admin/order/adminOrderList">Order Management</a></li>
				<li><a href="${contextPath }/contactList">Contact Management</a></li>
				<li><a href="${contextPath }/member/logout">Logout</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="${contextPath }/classes">Classes</a></li>
        		<li><a href="${contextPath }/contact">Contact</a></li>
		    	<li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}">My Info</a></li>
		  	  	<li><a href="${contextPath }/myPage/myOrderList?memberId=${sessionScope.memberId}">My Order</a></li>
				<li><a href="${contextPath }/member/logout">Logout</a></li>
			</c:otherwise>
		</c:choose>
			<li class="header-right">
				<div class="hr-box">
					<img src="${contextPath }/resources/bootstrap/img/location-icon.png" alt="">
					<h6>서울특별시 강남구 선릉로 324, 지하1층</h6>
				</div>
			</li>
		</ul>
	</header>
	<div class="clearfix"></div>
</body>
</html>