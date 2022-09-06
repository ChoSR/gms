<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<html>
<head>
<meta  charset="utf-8">
<script>
	function gerateOrderExcelExport() {
		location.href = "${contextPath}/admin/order/orderExcelExport";
	}
</script>
</head>
<body>

	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/5.jpg">
		<div class="container">
			<h2>Order List</h2>
		</div>
	</section>



    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                	<div class="cart__btn update__btn" align="right">
						<a href="javascript:gerateOrderExcelExport();">Excel로 추출</a>
					</div>
                    <div class="shop__cart__table">
                        <table align="center">
                            <thead>
                                <tr>
                                    <th width="70%">주문정보</th>
                                    <th width="19%">주문자ID</th>
                                    <th width="11%">주문날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:choose>
                            		<c:when test="${empty orderList}">
                            			<tr>
                            				<td colspan="4" align="center"><h6>주문내역이 없습니다.</h6></td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
		                            	<c:forEach var="order" items="${orderList }">
		                            		 <tr>
                                    			<td class="member_order_item">
			                                        <div class="member_order_item__title">
			                                        <br>
		                                            	<h6>
		                                            		<a href="${contextPath }/myPage/myOrderDetail?orderCd=${order.orderCd}&memberId=${order.memberId}">
		                                            		상품명 : ${order.goodsNm }<br>
		                                            		상품가격 : <fmt:formatNumber value="${order.price }"/> 원 / 주문수량 : ${order.orderGoodsQty }달
		                                        			</a>
		                                        		</h6>
			                                        </div>
			                                    </td>
			                                    <td><h6><strong>${order.memberId }</strong></h6></td>
			                                    <td><h6><fmt:formatDate value="${order.payOrderTime }" pattern="yyyy-MM-dd"/></h6> </td>
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
</body>
</html>