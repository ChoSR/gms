<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	$().ready(function(){
		
		$("[name='payMethod']").val("${myOrder.payMethod}");
		$("[name='cardCompanyNm']").val("${myOrder.cardCompanyNm}");
		$("[name='cardPayMonth']").val("${myOrder.cardPayMonth}");
	});
	
	function removeOrder(){
		if(confirm("정말로 주문을 취소하시겠습니까?")) {
			location.href = "${contextPath}/myPage/removeOrder?orderCd=" + $("#orderCd").val();
		}
	}

</script>
</head>
<body>

	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/3.jpg">
		<div class="container">
			<h2>주문 상세 내역</h2>
		</div>
	</section>

<!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
                <div class="row">
                	<div class="col-lg-12">
                        <div class="checkout__order">
                            <h3>Your order</h3>
                            <br></br>
                            <div class="checkout__order__product">
                            	<table>
                            		<thead>
                            			<tr>
                            				<th width="50%">Product</th>
                            				<th width="30%">개월 수</th>
                            				<th>가격</th>
                            			</tr>
                            		</thead>
                            		<tbody>
                            			<tr>
                            			  	<td>01. ${myOrder.goodsNm }</td>
                            			  	<td>${myOrder.orderGoodsQty }(개월)</td>
                            			  	<td> <span><fmt:formatNumber value="${myOrder.price}"/> </span></td>
		                            	</tr>		
                            		</tbody>
                            	</table>
                            </div>
                            <div class="checkout__order__total">
                                <ul>
                                    <li>Total <span><fmt:formatNumber value="${myOrder.paymentAmt}"/>원</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
	                	<br><br><br>
                        <h5>주문상세</h5>
                        <div>
                        	<input type="hidden" id="orderCd" name="orderCd" value="${myOrder.orderCd }">
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <a>주문자 성함 : </a>
                                    <input type="text" name="ordererNm" value="${myOrder.ordererNm }" disabled>
                                </div>
                            </div>
                            <br><br>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <a>지불방법 : </a>
                                    <input type="text" name="payMethod" value="${myOrder.payMethod }" disabled>
                                </div>
                            </div>
                            <c:choose>
                            	<c:when test="${myOrder.payMethod eq 'card'}">
		                            <div class="col-lg-6 col-md-6 col-sm-6">
		                                <div class="checkout__form__input">
		                                    <a>카드회사 : </a>
		                                    <input type="text" name="cardCompanyNm" value="${myOrder.cardCompanyNm }" disabled>
		                                </div>
		                            </div>
		                            <div class="col-lg-6 col-md-6 col-sm-6">
		                            	<div class="checkout__form__input">
		                                    <a>할부개월 : </a>
		                                    <c:choose>
		                                    	<c:when test="${myOrder.cardPayMonth == 0}">
		                                    		<input type="text" name="cardPayMonth" value="일시불" disabled>
		                                    	</c:when>
		                                    	<c:otherwise>
				                                    <input type="text" name="cardPayMonth" value="${myOrder.cardPayMonth }개월" disabled>
		                                    	</c:otherwise>
		                                    </c:choose>
		                                </div>
		                            </div>
                            	</c:when>
                            	<c:otherwise>
									<div class="col-lg-6 col-md-6 col-sm-6">
		                                <div class="checkout__form__input">
		                                    <a>주문자 연락처 : </a>
		                                    <input type="text" name="myOrderHp" value="${myOrder.ordererHp }" disabled>
		                                </div>
		                            </div>                        	
                            	</c:otherwise>
                            </c:choose>
                            <br><br><br>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <a>우편번호 : </a>
                                    <input type="text" id="zipcode" name="zipcode" value="${myOrder.zipcode }" style="width: 30%;" disabled>
                                    <input type="button" value="주소 검색" onclick="execDaumPostcode();" style="width: 20%; padding-left: 0" disabled>
                                </div>
                                <br>
                                <div class="checkout__form__input">
                                    <a>도로명 주소 : </a>
                                    <input type="text" id="roadAddress" name="roadAddress" value="${myOrder.roadAddress }" disabled>
                                </div>
                                <br>
                                <div class="checkout__form__input">
                                    <a>지번 주소 : </a>
                                    <input type="text" id="jibunAddress" name="jibunAddress" value="${myOrder.jibunAddress }" disabled>
                                </div>
                                <br>
                                <div class="checkout__form__input">
                                    <a>나머지 주소 : </a>
                                    <input type="text" id="namujiAddress" name="namujiAddress" value="${myOrder.namujiAddress }" disabled>
                                </div>
                                <br>
                                <a href="javascript:removeOrder();" class="site-btn sb-dark mr-3 mb-3">주문취소</a>
                            </div>
                        </div>
                        </div>
                    </div>
            </div>
        </section>
        <!-- Checkout Section End -->
</body>
</html>