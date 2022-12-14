<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>회원가입</title>
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
	$().ready(function() {
		
		$("#btnOverlapped").click(function(){
			
		    var memberId = $("#memberId").val();
		   
		    if (memberId == ''){
		   		alert("ID를 입력하세요");
		   		return;
		    }
		   
		    $.ajax({
		       type : "get",
		       url  : "${contextPath}/member/checkDuplicatedId?memberId=" + memberId,
		       success : function (data){
		          if (data == "duplicate"){
					  alert("사용할 수 있는 ID입니다.");
		          }
		          else {
		          	  alert("사용할 수 없는 ID입니다.");
		          }
		       }
		    });
	 	});
		    
		$("form").submit(function(){
				
				var dateBirth = $("#birthY").val() + "-" + $("#birthM").val() + "-" + $("#birthD").val();
				$("[name='dateBirth']").val(dateBirth);
			
				if ($("#passwd").val() != $("#confirmPasswd").val()) {
					alert("비밀번호를 확인하세요.");
					$("#passwd").focus();
					return false;
				}
		});
	});	
</script>
</head>
<body>
	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/3.jpg">
		<div class="container">
			<h2>Register</h2>
		</div>
	</section>
	<!-- Page top section end -->

	<!-- Contact section -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h2 class="contact-title">Become Member</h2>
					<form action="${contextPath }/member/register" method="post" class="contact-form">
						<div class="row">
							<div class="col-md-10">
								<p>아이디 <span style="color:red;">*</span></p>
								<input type="text" id="memberId" name="memberId" placeholder="아이디">
								<input type="button" id="btnOverlapped" value="중복확인"  style="width: 20%; padding-left: 0">
							</div>
							<div class="col-md-10">
								<p>비밀번호 <span style="color:red;">*</span></p>
								<input type="password" id="passwd" name="passwd" class="pwd" placeholder="비밀번호를 입력하세요">
							</div>
							<div class="col-md-10">
								<p>비밀번호 확인 <span style="color:red;">*</span></p>
								<input type="password" class="pwd" id="confirmPasswd" placeholder="비밀번호를 확인하세요">
							</div>
							<div class="col-md-10">
								<p>이름 <span style="color:red;">*</span></p>
								<input type="text" name="memberNm" placeholder="이름">
							</div>
                            <div class="col-md-10">
								<p>전화번호 <span style="color:red;">*</span></p>
								<input type="text" name="hp" placeholder="전화번호">
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
                               <div class="checkout__order__widget">
                                    <p>성별 <span style="color:red;">*</span></p>
                                    남 &nbsp;<input type="radio" name="sex" value="m"> &emsp;
                                    여 &nbsp;<input type="radio" name="sex" value="f">
                                </div>
                            </div>
							<div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__order__widget">
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
                                    <input type="hidden" name="dateBirth"/>
                                </div>
                            </div>
                            <div class="col-lg-12">
								<div class="checkout__form__input">
	                                <p>우편번호 <span style="color:red;">*</span></p>
	                                <input type="text" id="zipcode" name="zipcode" style="width: 20%;">
	                                <input type="button" value="검색" onclick="execDaumPostcode();" style="width: 10%; padding-left: 0">
	                            </div>
	                            <div class="checkout__form__input">
	                                <p>도로명 주소 <span style="color:red;">*</span></p>
	                                <input type="text" id="roadAddress" name="roadAddress" placeholder="도로명주소를 입력하세요.">
	                            </div>
	                            <div class="checkout__form__input">
	                                <p>지번 주소 <span style="color:red;">*</span></p>
	                                <input type="text" id="jibunAddress" name="jibunAddress" placeholder="지번주소를 입력하세요.">
	                            </div>
	                            <div class="checkout__form__input">
	                                <p>나머지 주소 <span style="color:red;">*</span></p>
	                                <input type="text" id="namujiAddress" name="namujiAddress" placeholder="나머지주소를 입력하세요.">
	                            </div>
                            </div>
						</div>
						<div align="right">
                        	<button type="submit" class="site-btn"><span class="icon_plus"></span>가입</button>
                        </div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact section end -->
	</body>
</html>
