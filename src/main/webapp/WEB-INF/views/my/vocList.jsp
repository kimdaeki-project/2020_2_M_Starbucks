<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <meta name="format-detection" content="telphone=no">   

   <title>고객의 소리 | Starbucks Coffee Korea</title>
  		
	
	<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/memberPage.css">

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/vocList.css" rel="stylesheet" type="text/css">
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.ms_nav ul li a span i { position: absolute; top: 50%; right: 0;}
	</style>
</head>
<body>
		
		
	 <!-- Header -->
   <c:import url="../common/header.jsp"></c:import>
   <!-- Header End -->

	<!--subtitle-->
      <div class="ms_sb_tit_bg">
        <div class="ms_sub_tit_inner">
            <h4><img alt="My 음료/매장" src="${pageContext.request.contextPath}/resources/images/myPage/ms_suggestion_ttl.png"></h4>
            <ul class="smap">
                <li><a href="/"><i class="xi-home-o"></i></a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My Starbucks</a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">참여 현황</a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">고객의 소리</a></li>
            </ul>
        </div>
    </div>
    <!--subtitle end -->
	
	<!-- 내용 -->
	<div class="voc_contents">
		<!-- side nav  -->
	 	<c:import url="./sideNav.jsp"></c:import>
	
		<div class="ms_voc_wrap">
			<form action="./vocList" id="vocVO" name="vocForm" class="voc_input_frm" method="post">
				<input type="hidden" id="store_cd" name="store_cd" value="0">
				
				<fieldset>
					<input type="hidden">
					<div class="voc_top_bg">
						<div class="voc_top_txt">
							<strong>귀한 말씀 들려 주십시오. 작은 소리도 듣겠습니다.</strong>
							<br>
							<p>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.<br>보다 나은 서비스로 보답하겠습니다.</p>
							<span>고객의 소리 운영시간 : 09:00 ~ 18:00 (연중 무휴) </span>
						</div>
							<a class="btn_ask_list" href="/my/vocList.do">나의 문의 내역 보기</a>
					</div>
					<!-- 테이블 -->
					<div class="voc_input_tbl">
									<p class="must_input">표시 항목은 필수 입력 사항입니다.</p>
									<table summary="분야, 답변 받으실 메일, 연락처, 장소, 제목, 내용, 파일첨부">
										<caption>분야, 답변 받으실 메일, 연락처, 장소, 제목, 내용, 파일첨부에 대한 테이블</caption>
										<colgroup>
											<col width="200">
											<col width="630">
										</colgroup>
										<tr>
											<th scope="row">분야<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<p class="cate_sel_wrap">
														
														<select name="category" id="category" >
															<option value>문의유형</option>
															<option value="문의">문의</option>
															<option value="칭찬">칭찬</option>
															<option value="제안">제안</option>
															<option value="불만">불만</option>
														</select>
													</p>
													
													
													
												</div>
											</td>
										</tr>
										
										
										<tr id="trEmail" >
											<th scope="row">답변 받으실 메일<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<input class="mail_input" id="mail1"  name="mail1" type="text" value='${mail1}'>
													<p class="mail_at">@</p>
													<input class="mail_input" id="mail2"  name="mail2" type="text" value='${mail2}'>
													<p class="mail_sel_wrap">
														<label for="mail">직접입력</label>
														<select id="mail"> 
															<option selected="selected" value>직접입력</option>
															<option value="hotmail.com">hotmail.com</option>
															<option value="yahoo.co.kr">yahoo.co.kr</option>
															<option value="gmail.com">gmail.com</option>
															<option value="naver.com">naver.com</option>
															<option value="nate.com">nate.com</option>
															<option value="hanmail.net">hanmail.net</option>
														</select>
													</p>
												</div>
											</td>
										</tr>
										 <tr>
											<th scope="row">연락처</th>
											<td>
												<div class="sel_wrap">
													<p class="phone_sel_wrap">
														<label for="phone1">010</label>
															<select id="phone1">
																<option> </option>
																
															</select>
													</p>
													<p class="cell_hyphen">-</p>
													<input class="cellphone_input" id="phone2" name="phone2" type="text" maxlength="4" ref="num">
													<p class="cell_hyphen">-</p>
													<input class="cellphone_input" id="phone3" name="phone3" type="text" maxlength="4" ref="num"> 
												</div>
											</td>
										</tr> 
										<tr>
											<th scope="row">장소<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="tbl_radio_wrap">
													<input id="HOW1" name="how" checked="checked" type="radio" value="Y">
													<label for="HOW1">매장 방문</label>
													<input id="HOW2" name="how" type="radio" value="N">
													<label for="HOW2">매장 방문 외</label>
												</div>
												<div class="sel_wrap mt10">
													<p class="visit_txt">방문매장</p>
													<button type="button" id="stosearch" class="btn_find_store" data-toggle="modal" data-target="#myModal">매장찾기</button>
													<input type="text" id="work-store-txt" name="storeName" title="" value="" readonly="readonly">
													<p class="input_store_txt" ></p><div id="#store-info-area"></div>
													
												</div>
												<div class="sel_wrap mt10">
													<p class="visit_txt">방문일</p>
													<div class="pick_date_each">
														<div class="pick_date_each_left"><input id="pickDate1" name="visitDate" title="원하는 날짜를 선택해 주세요." type="date" ></div>
														
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">제목<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<input class="voc_ttl_input1 empty" id="title" name="title" type="text" > <!--  style="width:514px"> -->
													<div id="title_check"></div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">내용<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												
												<textarea class="textArea empty" id="contents" name="contents" placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다."></textarea>
												<br><span id="realByte">0 / 2500byte</span>
												<div id="contents_check"></div>
											</td>
										</tr>
										
										
									</table>
								</div>
								<!-- 테이블 end -->
					
					<div class="voc_info_input_guide">
						<ul>
							<li>본 고객의 소리는 e-mail을 통한 상담으로만 진행됩니다. 전화 상담 요청은 불가하오니 양해 부탁 드립니다.</li>
							<li>고객이 동의한 개인정보처리방침에 따라 고객의 소리 민원 처리를 위해 작성자의 개인정보를 활용할 수 있습니다.</li>
							<li>답변은 직접 기재하여 주신 메일주소로 발송되며, 기재 오류 및 계정문제가 발생한 경우에는 답변이 불가할 수 있으므로 메일 주소를 꼭 확인해 주시기 바랍니다.</li>
							<li>관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다.</li>
							<li>공정거래위원회에서 고시한 소비자분쟁해결기준에 의거 소비자 피해에 대한 교환/환불 처리 해드립니다.</li>
						</ul>
					</div>
					<div class="voc_info_input_btns">
									
					<button type="submit" class="voc_info_input_btn1">등록 하기</button>
										
									
								</div>
					
					
				</fieldset>
				
			</form>	
		</div>
		
	
	</div>
	<!-- 내용 end -->
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <div id="store-info-area" style="display:none" role="dialog" class="modal">
   </div>
   
   <c:import url="../admin/template/javascript.jsp"></c:import>
   <script src="/sw4/resources/admin/js/jquery-ui.min.js"></script>
   
   <script type="text/javascript">
   
		   	var sidoTxt = "";
			var storeSearchTxt = "";
			
		/* 	var noWidth = window.screen.width;
			var noHeight = window.screen.height; */
			
			var beforeChk=0;
			var storeChk=0;
			var countChk=0;

			$("#stosearch").click(function(){
				getDialogStore(sidoTxt, storeSearchTxt);	
			});
			
			// 종료: get store list function 분리 -----------------------------------
			// function 으로 분리 -------------------------------
			function getDialogStore(sidoTxt, storeSearchTxt){
				
		/* 		x = noWidth/3.1; 
				y = noHeight/5; */
				
				getStoreList(sidoTxt,storeSearchTxt);
								
				beforeChk=0;
				storeChk=0;
				countChk=0;
												
				$("#store-info-area").dialog({
					modal:true,
					width:'50%',
					height:'500',
					resizable:false,
					open:function(){
						/* $(this).parent().offset ({top: y,left: x } ); */
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
							/* storeSearchTxt = $("#search-store-txt").val();
							getSidoList(sidoTxt, search) */
						})
						
						$("#search-store-txt").keydown(function(key){
							if(key.keyCode == 13){
								getStoreSearch(sidoTxt);
								/* storeSearchTxt = $("#search-store-txt").val();
								getSidoList(sidoTxt, search) */
							}
						});
						
						$(".store-choose").click(function(){
							$("#work-store-txt").val(staffStoreName);
							$("#work-store-txt").attr("title",staffStoreCode);
							$("#pop-update-btn").text("수정");
							$(".work-time").attr("readonly",false);
							$("#pop-update-btn").attr("title","수정");
							$("#store-info-area").dialog('close');
						});
						
						$(".store-cancle").click(function(){
							$("#store-info-area").dialog('close');
						});
						
					}
				});
				
			}

   
		
	//*****************************************************
   var emptyCheckResult = true;
   $("#title").blur(function(){
   	emptyCheck();
   	
   	if(!emptyCheckResult){
   		$("#title_check").html("필수입력 사항 입니다");
   		$("#title_check").addClass("valCheck");
   	}
   });
   
   $("#contents").blur(function(){
	   	emptyCheck();
	   	
	   	if(!emptyCheckResult){
	   		$("#contents_check").html("필수입력 사항 입니다");
	   		$("#contents_check").addClass("valCheck");
	   	}
	   });
   
  	 function emptyCheck() {
		emptyCheckResult = true; // 반복문을 위한 초기화
		$(".empty").each(function(){  //empty클래스명 하나꺼내서 function돌리고, 그 다음꺼 또 꺼내서 돌리는식..
		var data = $(this).val();
		if(data==''){
			emptyCheckResult = false;	
		}
		
		});
  	}
   	//*****************************************
   	
   	//****************** modal ********************
	//	$(".voc_info_input_btn1").click(function() {
	//		var storecode = $("#storeName").attr("title");
	//		$.ajax({
	//			url:"./vocList",
	//			type:"post",
	//			data:{storecode:storecode},
	//			success: function() {
	//				alert("성공");
			//		$("#result_list").append(result);
	//			}
	//		})
	//	})
		
		//*************************************************
		
		//*********************************************
	
		
   </script>
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>