<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>Insert title here</title>
				
		<link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<style type="text/css">
		
			#header{
				width: 100%;
				height: 9.2rem;
				background-color: #F6F6F6;
				overflow: hidden;
				border-bottom: 2px solid #D2D2D2;
			}

			#header-area{
				height: 100%;
			}
			
			.page-info-area{
				height: 100%;
			}
			
			#page-info{
				width: 20rem;
				color: #004D26;
				font-size: 4.5rem;
				margin-top: 3.8rem; 
			}
			
			#contents-header{
				border-bottom: 1px solid #EAEAEA;
				justify-content: space-between;
			}
			
			#contents-header > div{
				display: inline-block;
			}
			
			#menu-table{
				float: right;
			}
			
			#menu-table-tr > td{
				font-size: 1.3rem;
				padding: 0.2rem 0.5rem;
			}
			
			.order-contents-area{
				margin-top: 1.5rem;
			}
			
			#contents{
				padding: 3rem 0rem 0.8rem;
				background-color: white;
			}
			
			#buyer-info-area{
				border: 1px solid white;
			}
			.buyer-info{
				margin-top: 1.5rem;
				background-color: white;
			}

			.buyer-info td{
				border: 1px solid #E4E4E4;
			}
			
			.buyer-info > table{
				width: 100%; font-size: 1.3rem;
				border-top: 2px solid #D2D2D2;
			}
			
			#buyer-column{
				width: 15rem;
				line-height: 4rem;
				text-align: right;
				padding-right: 1.5rem;
				font-weight: bold;
				background-color: #F6F6F6;
			}
			.buyer-data{
				padding-left: 1.5rem;
			}
			.buyer-data input{
				width: 18rem;
				margin-right: 1rem;
			}
			#order-store-td{
				height: 8rem;
			}
			#order-store-td > div{
				margin-top: 1.2rem;
			}
			#pick-up-info-txt{
				font-size: 1.2rem;
				margin-top: 1rem;
				color: #666666;
			}
			#find-store-btn{
				cursor: pointer;
				border-radius: 3px;
				padding: 0.5rem 0.8rem;
				border: 1px solid #E4E4E4;
				background-color: white;
			}
			.order-list{
				border: 2px solid #D2D2D2;
				border-radius: 3px;
				background-color: #F2F2F2;
				margin-bottom: 0.8rem;
			}
			#pick-up-info{
				padding: 2rem 2rem 1.5rem;
				font-size: 1.5rem;
				background-color: white;
			}
			.pick-up{
				color: #006633;
				font-weight: bold;
			}
			.container{
				width: 65%;
			}
			.category{
				margin-left: 2rem;
				font-size: 1.8rem;
				font-weight: bold;
			}
			#order-list-area{
				background-color: white;
				padding: 0px 2rem;
			}
			#order-table{
				width: 100%;
			}
			#order-table tr{
				font-size: 1.5rem;
			}
			#order-table td{
				padding: 1.5rem 0px;
				padding-right: 1rem;
			}
			#product-quantity{
				color: #5D5D5D;
				font-size: 1.3rem;
				text-align: center;
			}
			#product-name{
				width: 50rem;
			}
			#product-price{
				text-align: right;
			}
			.c-margin{
				padding: 0.8rem 0px;
			}
			#total-price{
				font-size: 2.5rem;
				padding: 1rem 2.2rem;
			}
			#total-price div{
				display: inline-block;
			}
			#total-price-area{
				float: right;
			}
			#total-price-info{
				color:  #006633;
				font-weight: bold;
			}
			#pay-area{
				height: 20rem;
			}
			#btn-area div{
				display: inline-block;
			}
			#btn-area{
				padding: 0rem 28rem;
			}
			#order-pay-btn{
				float: right;
				color: white;
				background-color: #006633;
			}
			#order-cancle-btn{
				background-color: white;
			}
			.pay-btn{
				width: 15rem; height: 6rem;
				font-size: 2.2rem;
				border: 1px solid #006633;
				border-radius: 3px;
			}
			#pay-info{
				margin: 3.5rem 0px 2.5rem;
				color:#5D5D5D;
				font-size: 1.3rem;
				text-align: center;
			}
		</style>
		
	</head>
	
	<body>
	
		<header>
		
			<div id="header">
				<div class="container" id="header-area">
					<div class="page-info-area">
						<h1 id="page-info">Starbucks</h1>
					</div>
				</div>
			</div>
			
		</header>
	
		<main>
		
			<div class = "container">
				<div id="contents">
					<div id="contents-header">
						<div>주문/결제</div>
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
					
					<!-- buyer info area -->
					<div class="order-contents-area">
						<div id="buyer-info-area">
							<h2>구매자 정보</h2>
							<div class="buyer-info">
								<table>
									<tr>
										<td id="buyer-column">이름</td>
										<td class="buyer-data">임시름</td>
									</tr>
									<tr>
										<td id="buyer-column">전화번호</td>
										<td class="buyer-data">010-0000-0000</td>
									</tr>
									<tr>
										<td id="buyer-column">매장</td>
										<td class="buyer-data" id="order-store-td">
											<div>
												<input type="text" id="order-store" value="임시 매장">
												<span id="find-store-btn">매장찾기</span>
												<p id="pick-up-info-txt">
												* 음료를 픽업하실 매장을 선택해주세요.
												</p>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<!-- finish line: buyer info area -->
					
					<!-- pickup info area -->
					<div class="order-contents-area">
						<div id="buyer-info-area">
							<h2>픽업 정보</h2>
							<div id="pick-up-info" class="order-list">
								<span>
									<span class="pick-up">OOO</span>&nbsp;매장 음료 픽업은 <span class="pick-up">약 N분</span> 소요 예정입니다. 
								</span>
								<hr>
								<div>
									<p id="pick-up-info-txt">
										* 해당 시간은 예상 소요시간이며, 매장상황에 따라 약간의 오차가 있을 수 있습니다.
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- finish line: pickup info area -->
					
					<!-- order list area -->
					<div class="order-contents-area">
						<div id="buyer-info-area">
							<h2>주문 정보</h2>
							<div class="order-list">
								<div class="category c-margin">음료</div>
								<div id="order-list-area">
									<table class="c-margin" id="order-table">
										<tr>
											<td id="product-name">토피넛 팝콘 트리 프라푸치노</td>
											<td id="product-quantity"><span id="quantity">1</span>잔 / 매장픽업</td>
											<td id="product-price"><span id="price">4000</span>원</td>
										</tr>
										<tr>
											<td id="product-name">토피넛 라떼</td>
											<td id="product-quantity"><span id="quantity">2</span>잔 / 매장픽업</td>
											<td id="product-price"><span id="price">8000</span>원</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="order-list">
								<div class="category c-margin">음식</div>
								<div id="order-list-area">
									<table class="c-margin" id="order-table">
										<tr>
											<td id="product-name">배고프다 빵 먹고 싶다</td>
											<td id="product-quantity"><span id="quantity">1</span>개 / 매장픽업</td>
											<td id="product-price"><span id="price">6000</span>원</td>
										</tr>
										<tr>
											<td id="product-name">졸리다 자고 싶다</td>
											<td id="product-quantity"><span id="quantity">1</span>잔 / 매장픽업</td>
											<td id="product-price"><span id="price">8000</span>원</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="order-list">
								<div class="category c-margin">상품</div>
								<div id="order-list-area">
									<table class="c-margin" id="order-table">
										<tr>
											<td id="product-name">스타벅스 텀블러 예쁘지만</td>
											<td id="product-quantity"><span id="quantity">1</span>개 / 매장픽업</td>
											<td id="product-price"><span id="price">30000</span>원</td>
										</tr>
										<tr>
											<td id="product-name">근데 비싸서 싫다</td>
											<td id="product-quantity"><span id="quantity">2</span>개 / 매장픽업</td>
											<td id="product-price"><span id="price">50000</span>원</td>
										</tr>
									</table>
								</div>
							</div>
							<div id="total-price">
								<div>총 금액</div>
								<div id="total-price-area"><span id="total-price-info">100000</span>원</div>
							</div>
						</div>
					</div>
					<!-- finish line: order list area -->
					
					<!-- pay btn area -->
					<div class="order-contents-area">
						<div id="pay-area">
							<div id="pay-info">위 주문 내용을 확인 하였으며, 회원 본인은 결제에 동의합니다.</div>
							<form action="" method="POST">
								<div id="btn-area">
									<button type="button" class="pay-btn" id="order-cancle-btn">취소하기</button>
									<button type="submit" class="pay-btn" id="order-pay-btn">결제하기</button>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
			
		</main>
		
		<footer>
			<c:import url="../common/footer.jsp"></c:import>
			<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
		</footer>
		
	</body>
	
</html>