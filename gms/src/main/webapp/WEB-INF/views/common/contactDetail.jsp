<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/5.jpg">
		<div class="container">
			<h2>Contact Detail</h2>
		</div>
	</section>
	
	<section class="contact-section">
        <div class="container">
             <form class="contact-form">
                <div class="row">
                    <div class="col-lg-12">
	                	<br><br><br>
                        <h5>컨텍트 상세</h5>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="checkout__form__input">
                                    <p>문의자 성함 </p>
                                    <input type="text" value="${contactDto.name }" disabled>
                                </div>
                            </div>
                           <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="checkout__form__input">
                                    <p>문의자 이메일 </p>
                                    <input type="text"value="${contactDto.email }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="checkout__form__input">
                                    <p>문의 제목 </p>
                                    <input type="text" value="${contactDto.subject }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상세 내용 </p>
                                    <textarea cols="130" rows="10" disabled>${contactDto.message }</textarea>
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
                </form>
            </div>
        </section>
	
	
</body>
</html>