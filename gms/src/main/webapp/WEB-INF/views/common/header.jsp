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
		<a href="${contextPath }/WEB-INF/views/index.jsp" class="site-logo">
			<img src="${contextPath }/resources/bootstrap/img/gymlogo2.png" alt="">
		</a>
		<ul class="main-menu">
			<li><a class="active" href="./index.jsp">Center</a></li>
			<li><a href="../about.jsp">Membership</a></li>
			<li><a href="../classes.jsp">Classes</a></li>
			<li><a href="${contextPath }/WEB-INF/views/blog.jsp">Notice</a></li>
			<li><a href="${contextPath }/WEB-INF/views/contact.jsp">Contact</a></li>
			<li><a href="${contextPath }/WEB-INF/views/contact.jsp">Login</a></li>
			<li><a href="${contextPath }/WEB-INF/views/contact.jsp">Register</a></li>
			<li class="header-right">
				<div class="hr-box">
					<img src="${contextPath }/resources/bootstrap/img/location-icon.png" alt="">
					<h6>1525  Amazing Lane, Los Angeles, CA</h6>
				</div>
			</li>
		</ul>
	</header>
	<div class="clearfix"></div>
</body>
</html>