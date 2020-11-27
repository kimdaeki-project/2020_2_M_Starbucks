<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>Starbucks Korea :: 주문/결제</title>
				
		<link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
		
		<c:import url="../admin/template/bootstrap.jsp"></c:import>
		<c:import url="../admin/template/commonCSS.jsp"></c:import>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/jquery-ui.min.css">
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/memberPage.css">
		<link rel="stylesheet" type="text/css" href="/sw4/resources/css/order/orderPage.css">
		
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
					<input type="hidden" id="order-num" title="1">
					<!-- buyer info area -->
					<div class="order-contents-area">
						<div id="buyer-info-area">
							<h2>구매자 정보</h2>
							<div class="buyer-info">
								<table>
									<tr>
										<td id="buyer-column">이름</td>
										<td class="buyer-data" id="buyer-name" title="44">임시름</td>
									</tr>
									<tr>
										<td id="buyer-column">전화번호</td>
										<td class="buyer-data" id="buyer-tel">010-0000-0000</td>
									</tr>
									<tr>
										<td id="buyer-column">매장</td>
										<td class="buyer-data" id="order-store-td">
											<div>
												<input type="text" id="order-store" title="storeCode"
														value="" placeholder="매장을 선택해주세요." readonly="readonly">
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
									<span class="pick-up" id="pick-store">선택한</span>&nbsp;매장 음료 픽업은 <span class="pick-up" id="time">약 N분</span> 소요 예정입니다. 
								</span>
								<hr>
								<div>
									<p id="pick-up-info-txt">
										* 해당 시간은 예상 소요시간이며, 매장상황에 따라 약간의 오차가 있을 수 있습니다.
									</p>
								</div>
								<input type="hidden" title="테스트 주소" id="buyer-addr">
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
											<td class="product-name" id="drink-menu-code" title="D128401">토피넛 팝콘 트리 프라푸치노</td>
											<td id="product-quantity"><span id="quantity" title="quantity">1</span>잔 / 매장픽업</td>
											<td id="product-price"><span id="price">4000</span>원</td>
										</tr>
										<tr>
											<td class="product-name">토피넛 라떼</td>
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
											<td class="product-name">배고프다 빵 먹고 싶다</td>
											<td id="product-quantity"><span id="quantity">1</span>개 / 매장픽업</td>
											<td id="product-price"><span id="price">6000</span>원</td>
										</tr>
										<tr>
											<td class="product-name">졸리다 자고 싶다</td>
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
											<td class="product-name">스타벅스 텀블러 예쁘지만</td>
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
								<div id="total-price-area"><span id="total-price-info">50000</span>원</div>
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
									<button type="button" class="pay-btn" id="order-pay-btn">결제하기</button>
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
		
		<div id="store-info-area" style="display:none;" class="modal" role="dialog">
				
		</div>
		
		<!-- 결제 API -->
		<!-- jQuery -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<!-- iamport.payment.js -->
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
				
		<c:import url="../admin/template/javascript.jsp"></c:import>
		<script src="/sw4/resources/admin/js/jquery-ui.min.js"></script>
				
		<script type="text/javascript">
			
			var sidoTxt = "";
			var storeSearchTxt = "";
			
			var beforeChk=0;
			var storeChk=0;
			var countChk=0;
			
			var time = parseInt(Math.random() * (35 - 5) + 5);
			
			$("#order-store").click(function(){
				getDialogStore(sidoTxt, storeSearchTxt);				
			})
			
			$("#find-store-btn").click(function(){
				getDialogStore(sidoTxt, storeSearchTxt);	
			});
			
			// 종료: get store list function 분리 -----------------------------------
			// function 으로 분리 -------------------------------
			function getDialogStore(sidoTxt, storeSearchTxt){
				
				getStoreList(sidoTxt,storeSearchTxt);
								
				beforeChk=0;
				storeChk=0;
				countChk=0;
				
				$("#search-store-txt").focus();
				$("#store-info-area").dialog({
					modal:true,
					width:'50%',
					height:'500',
					resizable:false,
					open:function(){
	
					}
				});
			}
			// 종료: function 분리 --------------------------------------------------
			
			function getStoreSearch(sidoTxt){
				storeSearchTxt = $("#search-store-txt").val();
				getSidoList(sidoTxt, storeSearchTxt);
			}
			
			function getSidoList(sidoTxt, search){
				getStoreList(sidoTxt,search);
			}
			
			// function 분리하기 ---------------------------
			function getStoreList(sidoTxt, search){
				$.ajax({
					url:"../admin/store/storeList",
					type:"GET",
					data:{
						sidoName:sidoTxt,
						search:search
					},
					success: function(data){
						
						$("#store-info-area").empty();
						$("#store-info-area").append(data);
						$("#search-store-txt").val(search);
						
						$(".sido").click(function(){
							sidoTxt = $(this).attr("title");
							getSidoList(sidoTxt,search);
						})
						
						var showSido;
						if(sidoTxt == ''){
							showSido = '전체';
						} else {
							showSido = sidoTxt;
						}
						
						$(".sido-type").text(showSido);
						$(".select-store").click(function(){
							
							storeChk = $(this).index();
							
							if(countChk > 0){
								$(".select-store:eq("+beforeChk+")").css('background-color','white');
								$(".select-store:eq("+beforeChk+")").css('border','none');
								beforeChk = storeChk;
							} else {
								beforeChk = $(this).index();
							}
							
							$(this).attr("check", "Y");
							$(this).css("background-color","#F6F6F6");
							$(this).css("border","1px solid #006633");
							
							staffStoreCode = $(this).attr("title");
							staffStoreName = $(this).attr("name");
								
							countChk++;
			
						})
						
						$("#store-search-btn").click(function(){
							getStoreSearch(sidoTxt);
						})
						
						$("#search-store-txt").keydown(function(key){
							if(key.keyCode == 13){
								getStoreSearch(sidoTxt);
							}
						});
						
						$(".store-choose").click(function(){
							$("#order-store").val(staffStoreName);
							$("#order-store").attr("title",staffStoreCode);
							$("#pop-update-btn").text("수정");
							$("#pick-store").text(staffStoreName)
							$("#time").text(time);
							$("#store-info-area").dialog('close');
						});
						
						$(".store-cancle").click(function(){
							$("#store-info-area").dialog('close');
						});
						
					}
				});
				
			}
		
		  // 아임포트 -----------------------------------------------------------------------
		  var merchant_uid;
		  var order_num = $("#order-num").attr("title");
		  var product_code = $("#drink-menu-code").attr("title");
		  var amount = parseInt($("#total-price-info").text());
		  var name = $("#drink-menu-code").text();
		  var name_code = $("#drink-menu-code").attr("title");
		  var buyer_name = $("#buyer-name").attr("title");
		  var buyer_tel = $("#buyer-tel").text();
		  var buyer_addr = $("#buyer-addr").attr("title");
		  
		  var d = new Date();
		
		  // 결제 버튼 클릭 ------------------------------------
		  // https://docs.iamport.kr/tech/imp?lang=ko#param
		  $("#order-pay-btn").click(function(){
			// 주문번호 밀리초 기준 생성
			merchant_uid = "OP" + d.getTime();
			requestPay(merchant_uid,name,amount,buyer_name,buyer_tel,buyer_addr);
		  })
		  //-------------------------------------------------
		  
  		  var IMP = window.IMP; // 생략해도 괜찮습니다.
		  IMP.init("imp35382026"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		  
		  function requestPay(merchant_uid,name,amount,buyer_name,buyer_tel,buyer_addr) {
				alert(merchant_uid)
		      // IMP.request_pay(param, callback) 호출
			      IMP.request_pay({ // param
			    	  
						pg: "kakaopay",
				    	pay_method: "kakaopay",
			          	merchant_uid: merchant_uid,// "가맹점에서 이용하는 고유 주문번호",
					    amount: amount,//64900, // 결제금액
					    name: name, //"주문이름(16자 내 작성)"
					    buyer_tel: buyer_tel, //"주문자 연락처",
					    //buyer_name: buyer_name,//"주문자명",
				    	//buyer_addr: buyer_addr//"주문자 주소(우리는 픽업 매장주소)"
			      }, function (rsp) {
			    	  
			    	  // callback    	  
			    	  // 결제상태
			    	  // ready(미결제), paid(결제완료), cancelled(결제취소, 부분취소포함), failed(결제실패)
			    	  var status = rsp.status;
			    	  // 결제 완료시간
			    	  var paid_at = rsp.paid_at;
			    	  
			          if (rsp.success) {
			        	  
			        	  if(amount < 1000000){
			        	  
				        	  alert("결제 성공 로직")
				        	  
				              // 결제 성공 시 로직,
						      // jQuery로 HTTP 요청
						      // Rest API key : 8465520606036682
						      jQuery.ajax({
						    	  
						          url: "../pay/payProcess",//"https://www.myservice.com/payments/complete", // 가맹점 서버
						          method: "POST",
		 				          data: {
						        	  // imp_uid : 아이임포트 거래 고유번호 실패할 경우 null 값
						              // imp_uid: rsp.imp_uid,
						              merchant_uid: rsp.merchant_uid,
						              
						              // 기존 작성된 것에 추가함
						              orderNum:order_num,	// 1은 임시로 넣음
						              num:buyer_name,
						              pg:"kakaopay",
						              pay_method:rsp.pay_method,
						              amount:amount,
						              currency:'KRW',
						              m_redirect_url:"../pay/payResult",
						              buyer_tel:rsp.buyer_tel,
						              pay_amount:rsp.pay_amount,
						              pay_status:rsp.status,
						              name:name_code
						          },
						          success: function(){
						        	  alert("success")
						          }
						          
						      }).done(function (data) {
						    	  
						    	  	alert(status);
						    	  
							        // 가맹점 서버 결제 API 성공시 로직
						            switch(status) {
						            	case "vbankIssued":
						            	 console.log("가상계좌 발급을 성공하였습니다.");
					              		 break;
						            	case "success":
						                  console.log("결제를 성공하였습니다.");
							              break;
						            	case "paid":
						            		alert("결제되었습니다.");
						            		break;
		          					}
						      });
			        
			        	  } else {
			        		  alert("당사는 결제 금액이 1백만 원 초과할 경우 결제가 불가합니다.");
			        	  }
			          
			          } else {
			              // 결제 실패 시 로직
			        	  alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
			          }

			      });
		    	}
		  
		</script>
		
	</body>
	
</html>