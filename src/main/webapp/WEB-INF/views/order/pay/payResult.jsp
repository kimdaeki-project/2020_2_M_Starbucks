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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		
		<style type="text/css">
			.container{
				width: 78%;
				border: 1px solid blue;
			}
			#pay-result-contetns-area{
				margin-top: 2rem;
				padding: 1rem;
			}
			#contents-header{
				padding: 0px 0.5rem;
				border-bottom: 2px solid #EAEAEA;
				justify-content: space-between;
			}
			
			#contents-header > div{
				display: inline-block;
			}
			
			#contents-header span{
				font-size: 3rem;
				font-weight: bold;
			}
			
			#menu-table{
				float: right;
				margin-top: 2rem;
				display: inline-block;
			}
			
			#menu-table-tr > td{
				font-size: 1.3rem;
				padding: 0.2rem 0.5rem;
			}
			#order-success{
				color: #006633;
				font-weight: bold;
			}
			#order-summary-head{
				padding: 14rem 0px;
				text-align:center;
				border: 1px solid green;
			}
			#order-result{
				font-size: 3rem;
				padding: 0.5rem 0px;
			}
			#order-result-2{
				border: 1px solid black;
			}
			#order-result-2 > div{
				border: 1px solid silver;
				display: inline-block;
				margin: 0px 4rem;
			}
			#result{
				color: #420100;
				font-weight: bold;
			}
			#order-more-btn-area{
				margin-top: 4.5rem;
			}
			#order-more-btn{
				background-color: #006633;
				color: white;
				font-size: 1.5rem;
				padding: 1.8rem 1.8rem;
				cursor: pointer;
			}
			
			.summary-area{
				display: inline-block;
				border: 1px solid red;
				width: 49%;
			}
			
			#pay-info-area{
				float: right;
			}
			
			#order-summary-body{
				margin-top: 2rem;
			}
			
			.summary-area-table{
				width: 100%;
				background-color: silver;
				padding: 2rem;
			}
			
			.summary-area-table tr {
				border: 1px solid red;
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
	   							<div>픽업 정보</div>
	   							<div>
	   								<table class="summary-area-table">
	   									<tr>
	   										<td>이름</td>
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
	   							<div>결제 정보</div>
	   							<div>
	   								<table class="summary-area-table">
	   									<tr>
	   										<td>이름</td>
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
	   					
	   					</div>
	   					
	   				</div>
	   				
   				</div>
   				
   			</div>
   		
   		</main>
		
		<script type="text/javascript">


		</script>
		
		<script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
		
	</body>
	
</html>