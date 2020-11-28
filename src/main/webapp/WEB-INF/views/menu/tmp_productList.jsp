<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/common/reset.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/header.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/myPage/faqList.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/menu/menuList.css"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style type="text/css">

	/* 하늘 추가 */
	#modal_img{
		margin: 0px auto 4.5rem;
		width: 50%;
	}
	#modal_product-intro{
		margin: 2rem 0px;
	}
	#modal_product-intro > div{
		font-weight: bold;
	}
	#option-area{
		padding-top: 1rem;
		padding-left: 2rem;
	}
	#option-area > div{
		display: inline-block;
		margin-right: 6rem;
	}
	#opt1-area{
		margin-bottom: 1rem;
	}
	.qtt-area{
		width: 10rem;
		text-align: center;
	}
	.opt-column{
		width: 10rem;
	}
	.span-css{
		width: 100%;
		padding-right: 1rem;
		border-right: 1px solid silver;
	}
	#option-table td{
		padding: 0.1rem 0.5rem;
	}
	#opt-contents{
		width: 40rem;
		text-align: center;
	}
	.hotYN{
		margin-right: 1rem;
	}
	#modal_price, #quantity-cnt{
		margin-left: 1rem;
	}
	#btn_css{
		margin: 0px 1rem 0px 0.8rem;
	}
	.modal-footer{
		text-align: justify;
	}
	.btn{
		border: none;
	}
	#login-btn,#order{
		float: right;
	}

</style>
</head>
<body>
	<c:import url="../common/header.jsp"></c:import>

	<!--subtitle-->
	<div class="ms_sb_tit_bg">
		<div class="ms_sub_tit_inner">
			<h3>${menu}</h3>
		</div>
	</div>
	<!-- subtitle end -->
	<input type="hidden" id="login-member" title="${member.num}">
	<input type="hidden" id="isAuth" value="<% out.print(session.getAttribute("member"));%>">
	<div class="content">
		<div class="product_list">
			<dl>
				<dd>
					<!-- 포스트로 넘겨주는데에다가 같이 넘겨줘야함 -->
					<%-- <input type="hidden" title="${type}" id="menuType" /> --%>
					<ul>
						<c:forEach items="${list}" var="list">
							<li title="${list.menuCode}">
								<dl>
									<dt>
										<a data-toggle="modal" onclick="goModal(this);"><img
											src="${list.menuImage }" alt="${list.korName }"></a>
									</dt>
									<dd style="display: none;" class="price">${list.price}</dd>
									<dd style="display: none;" class="limited">${list.limited}</dd>
									<dd style="display: none;" class="limitedStore">${list.limitedStore}</dd>
									<dd style="display: none;" class="descr">${list.descr}</dd>
									<dd class="korname">${list.korName }</dd>
									<dd style="display: none;" class="optIndex" >${list.optionDTO.optIndex}</dd>
									<dd style="display: none;" class="opt1" >${list.optionDTO.opt1}</dd>
									<dd style="display: none;" class="opt2" >${list.optionDTO.opt2}</dd>
									<dd style="display: none;" class="hotYN" >${list.optionDTO.hotYn}</dd>
									<dd style="display: none;" class="category" >${list.category}</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>

				</dd>
			</dl>
		</div>
	</div>
	<div class="modal fade" id="layerpop">
		<div class="modal-dialog">
			<!-- <form action="../order/orderPage" method="post" id="order_frm">  -->
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title" id="pop_header"></h4>
				</div>
				<!-- body -->
				<div class="modal-body">
					<input type="hidden" name="menu_code" value="" id="menu_code">
					<br>
					<div id="modal_img"></div>
					<div id="modal_product-intro">
						<div>제품 설명</div>
						<span></span> <span id="modal_descr">설명</span>
					</div>
					<div>
						<span>가격</span> | <span id="modal_price"></span>
					</div>
					<c:choose>
						<c:when test="${type eq 'D' or type eq 'F'}">
							<br>
							<div>
								<span>온도</span> | <span id="modal_hotYN"></span>
							</div>
							<br>
						</c:when>
					</c:choose>
					<!-- 하늘 추가 -->
						<div id="option-total-area">
							<input type="hidden" title="${type}" id="menu-type">
							<input type="hidden" title="" id="modal-optIndex">
							<c:choose>
								<c:when test="${type eq 'F'}">
									<div>옵션</div>
									<div id="option-area">
										<table id="option-table">
											<tr>
												<td class="opt-column"><span id="opt1" class="span-css">버터</span></td>
												<td id="opt-contents">
													<button class="down-btn" id="down-btn1" title="1">◁</button>
														<input class="qtt-area" id="opt1-quantity" type="text" readonly="readonly" value="1">
													<button class="up-btn" title="1">▷</button>
												</td>
											</tr>
											<tr>
												<td class="opt-column"><span id="opt2" class="span-css">소스</span></td>
												<td id="opt-contents">
													<button class="down-btn" id="down-btn2" title="2">◁</button>
														<input class="qtt-area" id="opt2-quantity" type="text" readonly="readonly" value="1">
													<button class="up-btn" title="2">▷</button>
												</td>
											</tr>
										</table>
									</div>
								</c:when>
								<c:when test="${type eq 'D'}">
									<div>옵션</div>
									<div id="option-area">
										<table id="option-table">
											<tr>
												<td class="opt-column"><span id="opt1-drink" class="span-css"></span></td>
												<td id="opt-contents">
													<button class="down-btn" id="down-btn1" title="1">◁</button>
														<input class="qtt-area" id="opt1-quantity" type="text" readonly="readonly" value="1">
													<button class="up-btn" title="1">▷</button>
												</td>
											</tr>
											<tr>
												<td class="opt-column"><span id="opt2-drink" class="span-css"></span></td>
												<td id="opt-contents">
													<button class="down-btn" id="down-btn2" title="2">◁</button>
														<input class="qtt-area" id="opt2-quantity" type="text" readonly="readonly" value="1">
													<button class="up-btn" title="2">▷</button>
												</td>
											</tr>
										</table>
									</div>
								</c:when>
								<c:otherwise>
								
								</c:otherwise>
							
							</c:choose>
						</div>
					<br>
					
					<div>
						<span>수량</span> | 
						<span>
							<select id="quantity-cnt" name="cnt">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</span>
					</div>
					<br>
					<!-- 하늘 추가 -->
					<div id="limited">
						<span>한정</span> | <span id="modal_limited"></span>
					</div>
					<br>
					
					<br>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-default" id="order">주문하기</button>
				</div>
			</div>
			<!-- </form>  -->
		</div>
	</div>
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
					<div class="modal-header">주문하기</div>
					<div class="modal-body">
						<div>주문하려면 로그인이 필요합니다. 로그인을 하시겠습니까?</div>
					</div>
				<div class="modal-footer" id="login-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-success" id="login-btn">로그인</button>
				</div>
	    	</div>
		</div>
	</div>

	<script type="text/javascript">

		function orderChk(){
			$('#myModal').modal("show");
		}
		
		$("#login-btn").click(function(){
			location.href = '/sw4/member/memberLogin';
		})
	
		// 하늘 추가 [2020.11.28] order ------------------------------------
		var select_productCode = "";
		var select_quantity = 0;
		var select_price = 0;
		var select_quantity_opt1 = 0;
		var select_quantity_opt2 = 0;
		var select_hotYN = "";
		var select_addPrice = 0;
		var totalPrice = 0;
		var select_optIndex;
		var login_member = $("#login-member").attr("title");
		
		function getQuantity(quantity){
			select_quantity = quantity;
		}
		
		function getVariable(productCode, price, optIndex){
			select_productCode = productCode;
			select_price = parseInt(price);
			select_optIndex = optIndex;
		}
		
		$('#order').click(function(){
			
			// 하늘 추가 코드: 선택한 데이터 정보 할당받기 위함
			var quantity = $('select[name="cnt"]').val();
			getQuantity(quantity);
			
			select_quantity_opt1 = parseInt($("#opt1-quantity").val());
			select_quantity_opt2 = parseInt($("#opt2-quantity").val());
			
			if(select_quantity_opt1 > 0 & select_quantity_opt2 > 0){
				select_addPrice = ((select_quantity_opt1 - 1) + (select_quantity_opt2 - 1)) *500;
			} else {
				select_addPrice = 0;
			}
				
			totalPrice = (select_price * select_quantity)+ select_addPrice;
			orderStart();
			
		});
		
		function orderStart(){

			// 400 error 발생
			// 원인: DB로 보내주는 값이 부족하거나 null이어서 발생함
			if(select_productCode.includes('P')){
				select_quantity_opt1 = 0;
				select_quantity_opt2 = 0;
				select_addPrice = 0;
			}
		
			$.ajax({
				url:"../order/orderPage",
				method:"post",
				data:{
					menuCount:select_quantity,
					optIndex:select_optIndex,
					opt1Count:select_quantity_opt1,
					opt2Count:select_quantity_opt2,		
					menuCode:select_productCode,
					menuPrice:select_price,
					hotYN:select_hotYN,
					addPrice:select_addPrice,
					totalPrice:totalPrice
				},
				success: function(data){
					console.log(data.trim())
					location.href = "../order/orderPage?orderNum="+data.trim()
				}
			})
			
		}
		
		// (종료)하늘 추가 --------------------------------------------
		function goModal(e) {

			var isAuth = $('#isAuth').val();
			
			if(isAuth == '' || isAuth=='null'){
				orderChk();
				//location.href = '/sw4/member/memberLogin';
			} else { 
				
				console.log('clicked');
	
				var productCode = $(e).parent().parent().parent().attr('title');
				console.log(productCode);
				$('#menu_code').val(productCode);
	
				var price = $(e).parent().parent().children('.price').text();
				
				var optIndex = $(e).parent().parent().children('.optIndex').text();
				var opt1 = $(e).parent().parent().children('.opt1').text();
				var opt2 = $(e).parent().parent().children('.opt2').text();
				var hotYN = $(e).parent().parent().children('.hotYN').text();
				var category = $(e).parent().parent().children('.category').text();
				
				var price_html = '<input type = "text" disabled value = '+price+'>';
				var limited = $(e).parent().parent().children('.limited').text();
				var limitedStore = $(e).parent().parent().children('.limitedStore').text();
						
				var descr = $(e).parent().parent().children('.descr').text();
				var korname = $(e).parent().parent().children('.korname').text();
				var img_src = $(e).children().attr('src');
				var img = '<img src = "'+img_src+'"/>';
				console.log(limitedStore);
				
				// 하늘 추가코드 ---------------------
				getVariable(productCode, price, optIndex);
					
				var opt1_txt = parseInt($("#opt1-quantity").val());
				var opt2_txt = parseInt($("#opt2-quantity").val());
				
				var up_index = 0;
				var down_index = 0;
				
				$(".up-btn").click(function(){
					
					up_index = $(this).attr("title");
					
					if (up_index == 1){
						opt1_txt = opt1_txt + 1;
						$("#opt1-quantity").val(opt1_txt);
					} else {
						opt2_txt = opt2_txt + 1;
						$("#opt2-quantity").val(opt2_txt);
					}
				
				});
				
				$(".down-btn").click(function(){
					
					down_index = $(this).attr("title");
					
					if (down_index == 1){
						if(opt1_txt == 1){
							alert("최소 수량은 1개입니다.")
						} else {
							opt1_txt = opt1_txt - 1;
							$("#opt1-quantity").val(opt1_txt);
						}
					} else {
						if(opt2_txt == 1){
							alert("최소 수량은 1개입니다.")
						} else {
							opt2_txt = opt2_txt - 1;
							$("#opt2-quantity").val(opt2_txt);
						}
					}
				
				});
	
	
				$('#pop_header').html(korname);
				$('#modal_price').html(price_html);
				
				var menuType = $("#menu-type").attr("title");
				
				if (menuType == 'D'){
					var modal_hotYN = "";
					if(hotYN == 'Iced' || hotYN == 'hot'){
						modal_hotYN =
							'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" name="hotYN" class="hotYN" id="btn_css" value="'+hotYN+'">'+hotYN;
						select_hotYN = modal_hotYN;
					} else if(hotYN == 'HotIced'){
						modal_hotYN =
							'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" name="hotYN" class="hotYN" id="btn_css" value="hot">Hot</span><input id="btn_css" type="radio" name="chk_hotYN" name="hotYN" class="hotYN" value="Iced">Iced';
					} else {
						
						modal_hotYN =
							'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" name="hotYN" id="btn_css" class="hotYN" value="hot">Hot</span><input id="btn_css" type="radio" name="chk_hotYN" name="hotYN" class="hotYN" value="Iced">Iced';
					
						if(korname.includes('아이스') || korname.includes('프라푸치노') || korname.includes('블렌디드') || korname.includes('피지오')){
							select_hotYN = 'Iced';
							modal_hotYN = 
								'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" id="btn_css" name="hotYN" class="hotYN" value="Iced">Iced';
						} else if (korname.includes('핫') || korname.includes('스팀')) {
							select_hotYN = 'Hot';
							modal_hotYN =
								'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" id="btn_css" name="hotYN" class="hotYN" value="Hot">Hot';
						} else if (category == '스타벅스 주스(병음료)'){
							select_hotYN = 'Iced';
							modal_hotYN = 
								'<span id="hotYNChk"><input checked="checked" type="radio" name="chk_hotYN" id="btn_css" name="hotYN" class="hotYN" value="Iced">Iced';
						}
						
					}
					$("#modal_hotYN").html(modal_hotYN);
				}
					
				if (limitedStore == '' || limited == ''){
					$('#limited').css('display','none');
				} else {
					$('#modal_limited').text('특정 매장에서 판매되어 온라인 주문이 불가합니다.');
				}
				
				$('#modal_descr').html(descr);
				$('#modal_img').html(img);
				$('#modal-optIndex').attr("title", optIndex);
				
				if (menuType == 'D'){
					if(opt1 == '' & opt2 == ''){
						$("#option-total-area").css('display','none');
					}
					
					if(opt1 != ''){
						$("#opt1-drink").html(opt1);
					} 
					
					if(opt2 != ''){
						$("#opt2-drink").html(opt2);				
					}
					
				}
	
				$('#layerpop').modal("show");
	
				$(".hotYN").click(function(){
					select_hotYN = $(this).attr("value");
				})
				
				console.log(price);
				console.log(korname);
			}
		}

	</script>

	<script
		src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
</body>
</html>