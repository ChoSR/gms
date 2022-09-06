<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script>
	function gerateMemberExcelExport() {
		location.href = "${contextPath}/admin/member/memberExcelExport";
	}
</script>
</head>
<body>
	
	<section class="page-top-section set-bg" data-setbg="${contextPath }/resources/bootstrap/img/header-bg/3.jpg">
		<div class="container">
			<h2>회원관리 페이지</h2>
		</div>
	</section>
	
    <section class="memberList spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                	<div class="member_btn update_btn" align="right">
						<a href="javascript:gerateMemberExcelExport();">Excel로 추출</a>
					</div>
                    <div class="member_list_table">
                        <table align="center">
                            <thead>
                                <tr>
                                    <th width="10%">번호</th>
                                    <th width="30%">회원아이디</th>
                                    <th width="25%">회원이름</th>
                                    <th width="10%">성별</th>
                                    <th width="25%">가입일자</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:choose>
                            		<c:when test="${empty memberList}">
                            			<tr>
                            				<td colspan="6"><h3>가입된 회원이 없습니다.</h3></td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
		                            	<c:forEach var="memberDto" items="${memberList }" varStatus="i">
		                            		 <tr>
		                            		 	<td>
		                            		 		<h6>${i.count }</h6>
			                                    </td>
                                    			<td class="member_list_item">
			                                        <h6><a href="${contextPath }/myPage/myInfo?memberId=${memberDto.memberId}">${memberDto.memberId} </a></h6>
			                                    </td>
			                                	<td class="member_list_item_title"><strong>${memberDto.memberNm }</strong></td>
			                                    <td>${memberDto.sex }</td>
			                                    <td><fmt:formatDate value="${memberDto.joinDt }" pattern="yyyy-MM-dd"/> </td>
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