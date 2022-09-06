<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.pwd{    width: 100%;
    height: 60px;
    padding: 10px 29px;
    border: none;
    background: #edf3f5;
    margin-bottom: 19px;
    font-style: italic;
    font-size: 16px;
    color: #242424;}
	</style>
<script>

	$().ready(function(){
		
		var dateBirth = $("[name='dateBirth']").val().split("-");
		$("#birthY").val(dateBirth[0]);
		$("#birthM").val(dateBirth[1]);
		$("#birthD").val(dateBirth[2]);
		
		$("form").submit(function(){
			var dateBirth = $("#birthY").val() + "-" + $("#birthM").val() + "-" + $("#birthD").val();
			$("[name='dateBirth']").val(dateBirth);
		});
		
	});
	
	function removeMember(){
		if (confirm("정말로 탈퇴하시겠습니까?")) {
			location.href = "${contextPath}/myPage/removeMember?memberId=" + $("#memberId").val();
		}
	}

</script>
</head>
<body>

	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/1.jpg">
		<div class="container">
			<h2>상세정보 관리</h2>
		</div>
	</section>

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
        <div class="row">
			<div class="col-lg-12">
			   <div class="cart__btn update__btn" align="right">
			       <a href="javascript:removeMember();" class="site-btn sb-dark mr-3 mb-3">탈퇴</a>
			   </div>
			</div>
            <form action="${contextPath }/myPage/modifyInfo" method="post" class="contact-form">
                    <div class="col-lg-8">
                        <h5>내 가입 정보</h5>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="checkout__form__input">
                                    <p>아이디 <span>*</span></p>
                                    <input type="text" id="memberId" name="memberId" value="${memberDto.memberId }" readonly>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="checkout__form__input">
                                    <p>이름 <span>*</span></p>
                                    <input type="text" name="memberNm" value="${memberDto.memberNm }">
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="checkout__form__input">
                                    <p>비밀번호 <span>*</span></p>
                                    <input type="password" class = "pwd" name="passwd" value="${memberDto.passwd }" readonly>
                                </div>
                            </div>
                            <div class="col-sm-6">
                               <div class="checkout__form__checkbox">
                                    <p>성별 <span style="color:red;">*</span></p>
                                    남 &nbsp;<input type="radio" name="sex" value="m" <c:if test="${memberDto.sex eq 'm'}">checked</c:if>> &emsp;
                                    여 &nbsp;<input type="radio" name="sex" value="f" <c:if test="${memberDto.sex eq 'f'}">checked</c:if>>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>생년월일 <span>*</span></p>
                                    <select id="birthY">
                                    	<c:forEach var="i" begin="0" end="2022" >
                                    		<option>${2022 - i}</option>
                                    	</c:forEach>
                                    </select>년 
                                    <select id="birthM">
                                    	<c:forEach var="i" begin="1" end="12" >
                                    		<c:choose>
	                                    		<c:when test="${i < 10 }">
		                                    		<option>0${i}</option>
	                                    		</c:when>
	                                    		<c:otherwise>
		                                    		<option>${i}</option>
	                                    		</c:otherwise>
                                    		</c:choose>
                                    	</c:forEach>
                                    </select>월 
                                    <select id="birthD">
                                    	<c:forEach var="i" begin="1" end="31" >
                                    		<c:choose>
	                                    		<c:when test="${i < 10 }">
		                                    		<option>0${i}</option>
	                                    		</c:when>
	                                    		<c:otherwise>
		                                    		<option>${i}</option>
	                                    		</c:otherwise>
                                    		</c:choose>
                                    	</c:forEach>
                                    </select>일	
                                    <input type="hidden" name="dateBirth" value="${memberDto.dateBirth }"/>
                                </div>
                            </div>
                             <div class="col-sm-12" style="margin-bottom: 20">
                            </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>전화번호 <span>*</span></p>
                                    <input type="text" name="hp" value="${memberDto.hp }">
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <div class="checkout__form__input">
                                    <p>우편번호 <span>*</span></p>
                                    <input type="text" id="zipcode" name="zipcode" value="${memberDto.zipcode }" style="width: 20%;">
                                    <input type="button" value="검색" onclick="execDaumPostcode();" style="width: 10%; padding-left: 0">
                                </div>
                                <div class="checkout__form__input">
                                    <p>도로명 주소 <span>*</span></p>
                                    <input type="text" id="roadAddress" name="roadAddress" value="${memberDto.roadAddress }">
                                </div>
                                <div class="checkout__form__input">
                                    <p>지번 주소 <span>*</span></p>
                                    <input type="text" id="jibunAddress" name="jibunAddress" value="${memberDto.jibunAddress }">
                                </div>
                                <div class="checkout__form__input">
                                    <p>나머지 주소 <span>*</span></p>
                                    <input type="text" id="namujiAddress" name="namujiAddress" value="${memberDto.namujiAddress }">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__checkbox" align="left">
                               	 	<button type="submit" class="site-btn"><img src="${contextPath }/resources/bootstrap/img/icons/edit.png">수정</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->
</body>
</html>