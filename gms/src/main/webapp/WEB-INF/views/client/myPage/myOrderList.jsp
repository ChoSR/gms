<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/3.jpg">
		<div class="container">
			<h2>주문 내역</h2>
		</div>
	</section>

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table" >
                        <table>
                            <thead>
                                <tr>
                                    <th width="50%">상품명</th>
                                    <th width="30%">상품가격</th>
                                    <th>주문날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:choose>
                            		<c:when test="${empty myOrderList}">
                            			<tr align="center">
                            				<td colspan="5"><h5>조회된 상품이 없습니다.</h5></td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
		                            	<c:forEach var="myOrder" items="${myOrderList }">
		                            		 <tr>
                                    			<td class="order__product__item">
			                                        <div class="order__product__item__title">
			                                            <h6><a href="${contextPath }/myPage/myOrderDetail?orderCd=${myOrder.orderCd}&memberId=${myOrder.memberId}">${myOrder.goodsNm } / ${myOrder.orderGoodsQty }달</a></h6>
			                                        </div>
			                                    </td>
			                                    <td class="total_pricce"><fmt:formatNumber value="${myOrder.price }"/>원</td>
			                                    <td class="order_time"><fmt:formatDate value="${myOrder.payOrderTime }" pattern="yyyy-MM-dd"/> </td>
			                                </tr>
		                            	</c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
		</div>
    </section>
    <!-- Shop Cart Section End -->
    
</body>
</html>