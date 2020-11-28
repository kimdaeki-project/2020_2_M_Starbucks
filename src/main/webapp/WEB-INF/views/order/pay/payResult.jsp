<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telphone=no">	
	
		<title>Starbucks Korea :: 결제결과</title>
	
		<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/myPage/faqList.css" rel="stylesheet" type="text/css">		
		<link href="${pageContext.request.contextPath}/resources/css/menu/menuList.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/pay/payResult.css" rel="stylesheet" type="text/css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		
		<style type="text/css">
			h1, .h1, h2, .h2, h3, .h3 {
			    margin-top: 0px;
			}
		</style>
			
	</head>
	
	<body>
	
		<c:import url="../../common/header.jsp"></c:import>
   		
   		<main>
   		
   			<div class="container" id="pay-result-contetns-area">
   			
   				<div>
 					<div id="contents-header">
 						<div>
							<span>주문완료</span>	
						</div>					
						<div id="menu-table">
							<table>
								<tr id="menu-table-tr">
									<td id="order-and-pay">주문결제</td>
									<td> ▷ </td>
									<td id="order-success">주문완료</td>
								</tr>
							</table>
						</div>
					</div>
					
	   				<div id="result-contents">
	   					
	   					<div id="order-summary-head">
	   						<div id="order-result"><span id="result">주문이 완료</span>되었습니다. 감사합니다!</div>
	   						<div id="order-result-2">
	   							<div>주문일:<span id="order-date">2020-11-28</span></div>
	   							<div>주문번호:<span id="order-number">OP0329432837</span></div>
	   						</div>
	   						<div id="order-more-btn-area">
	   							<span id="order-more-btn">추가 주문하기 ►</span>
	   						</div>
	   					</div>
	   					
	   					<div id="order-summary-body">
	   					
	   						<div class="summary-area">
	   							<div id="summary-title">픽업 정보</div>
	   							<div class="table-area">
	   								<table class="summary-area-table">
	   									<tr>
	   										<td id="column-title">이름</td>
	   										<td>[주문자 이름]</td>
	   									</tr>
	   									
	   									<tr>
	   										<td>휴대폰</td>
	   										<td>[주문자 번호]</td>
	   									</tr>
	   									
										<tr>
	   										<td>픽업 매장</td>
	   										<td>[픽업 매장명]</td>
	   									</tr>
	   									
	   									<tr>
	   										<td>매장 주소</td>
	   										<td>[픽업 매장 주소]</td>
	   									</tr>
	   										   									
	   								</table>
	   								
	   							</div>
	   						</div>
	   						
	   						<div class="summary-area" id="pay-info-area">
	   							<div id="summary-title">결제 정보</div>
	   							<div class="table-area" id="pay-table-area">
	   								<table class="summary-area-table" id="pay-info-table">
	   									<tr>
	   										<td id="column-title-2">주문금액</td>
	   										<td class="order-price">[주문 금액]</td>
	   									</tr>
	   									
	   									<tr>
	   										<td>쿠폰할인</td>
	   										<td class="order-price">0</td>
	   									</tr>
	   									
										<tr>
	   										<td>포인트</td>
	   										<td class="order-price">0</td>
	   									</tr>
	   									
	   									<tr id="pay-info-table-tr">
	   										<td>추가 옵션</td>
	   										<td class="order-price">[옵션 추가 비용]</td>
	   									</tr>
	   									
	   									<tr id="total">
	   										<td id="total-column">총 결제금액</td>
	   										<td class="order-price">[총 결제금액]</td>
	   									</tr>
	   										   									
	   								</table>
	   							</div>
	   						</div>
	   					
	   					</div>
	   					
	   				</div>
	   				
   				</div>
   				
   			</div>
   		
   		</main>
		
		<!-- Footer -->
		<c:import url="../../common/footer.jsp"></c:import>
		<!-- Footer End -->
		
		<script type="text/javascript">

			$("#order-more-btn").click(function(){
				location.href ="../menu/menuDrink";
			})

		</script>
		
		<script src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
		<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
		
	</body>
	
</html>