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

	function setPayMethod(){
		
		var method = $("[name='payMethod']").val();
		if (method == 'card') {
			$("#cardPayMonth,#cardCompanyNm").show();
			$("#payOrdererHp").hide();
		}
		else {
			$("#cardPayMonth,#cardCompanyNm").hide();
			$("#payOrdererHp").show();
			$("[name='payOrdererHp']").val("${orderer.hp }");
		}
		
	}
	
	function getOrderGoodsQty(){
		var orderGoodsQty = $("#orderGoodsQty").val();
		var price = $("#price").val();
		
		var totalPrice = price * orderGoodsQty;
		
		$("#paymentAmt").val(totalPrice);
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + " 원";
		$("#totalPrice").html(totalPrice);
	}
	
</script>
</head>
<body>
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/3.jpg">
		<div class="container">
			<h2>주문 화면</h2>
		</div>
	</section>



<!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <form action="${contextPath }/order/orderGoods" method="post" class="contact-form">
                <input type="hidden" name="goodsCd" value="${goodsDto.goodsCd }">
                <input type="hidden" name="memberId" value="${orderer.memberId}">
                <div class="row">
                	<div class="col-lg-12">
                        <div class="checkout__order">
                            <h5>주문 하기</h5>
                            <div class="checkout__order__product">
                            	<div class="col"></div>
                            	<table>
                            		<thead>
                            			<tr>
                            				<th width="20%">구매상품</th>
                            				<th width="30%"></th>
                            				<th width="15%">상품가격</th>
                            				<th width="25%"></th>
                            				<th>구매개월</th>
                            			</tr>
                            		</thead>
                            		<tbody>
				                      	<tr>
				                      		<td class="order_goodsNm" >
				                      			<div class="product_Nm">
				                      				<input type="text" name="goodsNm" value="${goodsDto.goodsNm }">
				                      			</div>
				                      		</td>
				                      		<td></td>
				                          	<td class="order__price">
						                         <div class="product__price" >
														<input type="text" id="price" name="price" value="${goodsDto.price }">	                                    
					                             </div>
					                        </td>
				                      		<td></td>
					                        <td class="order__quantity">
					                             <div class="pro-qty" onchange="getOrderGoodsQty()">
						                                <select id="orderGoodsQty" name="orderGoodsQty">
															<option value="1">1개월</option>
															<option value="3">3개월</option>
															<option value="6">6개월</option>
															<option value="12">12개월</option>
					                                    </select>
					                             </div>
					                        </td>
		                                </tr>
	                           		</tbody>
                            	</table>
                            </div>
                            <div class="checkout__order__total">
                                <c:set var="paymentAmt" value="${goodsDto.price * orderGoodsQty}"/>
	                                <ul>
	                                    <li>Total : <span id="totalPrice"></span></li>
	                                </ul>
                               	<input type="hidden" name="paymentAmt" id="paymentAmt" value='<fmt:parseNumber integerOnly="true" value="${paymentAmt }"/>'/>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
	                	<br><br><br>
                        <h5>주문상세</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>주문자 성함 <span>*</span></p>
                                    <input type="text" name="ordererNm" value="${orderer.memberNm }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>주문자 연락처 <span>*</span></p>
                                    <input type="text" name="ordererHp" value="${orderer.hp }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__order__widget">
                                    <p>지불방법 <span>*</span></p>
                                    <select name="payMethod" onchange="setPayMethod()">
                                    	<option value="card">카드결제</option>
                                    	<option value="phone">휴대폰결제</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                            </div>
                            <div id="cardCompanyNm" class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__order__widget">
                                    <p>카드회사 <span>*</span></p>
	                                <select name="cardCompanyNm">
										<option value="삼성">삼성</option>
										<option value="하나SK">하나SK</option>
										<option value="현대">현대</option>
										<option value="KB">KB</option>
										<option value="신한">신한</option>
										<option value="롯데">롯데</option>
										<option value="BC">BC</option>
										<option value="시티">시티</option>
										<option value="NH농협">NH농협</option>
								   </select>
                                </div>
                            </div>
                            <div id="cardPayMonth" class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__order__widget">
                                    <p>할부개월 <span>*</span></p>
                                    <select name="cardPayMonth">
										<option value="0">일시불</option>                                    
										<option value="1">1개월</option>                                    
										<option value="2">2개월</option>                                    
										<option value="3">3개월</option>                                    
										<option value="4">4개월</option>                                    
										<option value="5">5개월</option>                                    
										<option value="6">6개월</option>                                    
                                    </select>
                                </div>
                            </div>
                            <div id="payOrdererHp" class="col-lg-6 col-md-6 col-sm-6" style="display: none">
                                <div class="checkout__form__input">
                                    <p>결제 휴대폰 번호 <span>*</span></p>
                                    <input type="text" name="payOrdererHp">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                            </div>
                            <br><br>
                            <div class="col-lg-12">
                            	<div class="trainerNm">
                            		<input type="text" id="trainerNm" name="trainerNm" value="${goodsDto.trainerNm }" style="width: 50%;" >
                            	</div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>우편번호 <span>*</span></p>
                                    <input type="text" id="zipcode" name="zipcode" value="${orderer.zipcode }" style="width: 14%;">
                                    <input type="button" value="주소 검색" onclick="execDaumPostcode();" style="width: 8%; padding-left: 0">
                                </div>
                                <div class="checkout__form__input">
                                    <p>도로명 주소 <span>*</span></p>
                                    <input type="text" id="roadAddress" name="roadAddress" value="${orderer.roadAddress }" style="width: 50%;">
                                </div>
                                <div class="checkout__form__input">
                                    <p>지번 주소 <span>*</span></p>
                                    <input type="text" id="jibunAddress" name="jibunAddress" value="${orderer.jibunAddress }" style="width: 50%;">
                                </div>
                                <div class="checkout__form__input">
                                    <p>나머지 주소 <span>*</span></p>
                                    <input type="text" id="namujiAddress" name="namujiAddress" value="${orderer.namujiAddress }" style="width: 50%;">
                                </div>
                            </div>
                        </div>
	                     <div align="right">
	                        <button type="submit" class="site-btn"><span class="icon_check"></span>주문</button>
	                    </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->
</body>
</html>