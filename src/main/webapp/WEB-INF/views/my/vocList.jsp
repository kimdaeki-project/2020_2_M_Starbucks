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

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/vocList.css" rel="stylesheet" type="text/css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
			<form action="" id="vocVO" name="vocForm" class="voc_input_frm" method="post">
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
														
														<select name="TP_VOC_DEMAND" id="TP_VOC_DEMAND" >
															<option value>문의유형</option>
															<option value="01">문의</option>
															<option value="02">칭찬</option>
															<option value="03">제안</option>
															<option value="04">불만</option>
														</select>
													</p>
													
													
													<p  id="REL_FAQ_CNT" style="display:none;padding:7px">
														관련 FAQ 13 건
													</p>
												</div>
											</td>
										</tr>
										<tr id="trProd" style="display:none;">
											<th scope="row">제품/상품</th>
											<td>
											
												<div class="prod_section">

													<div class="prod_wrap" id="prod_wrap1">
														<input class="voc_prod_input"  readonly type="text" id="NM_GOODS1">
														<div class="voc_prod_btn">
															<input class="voc_prod_input_btn" type="button" value="상품찾기" idx="1">
															<input class="voc_prod_input_hidden"  type=hidden name="CD_GOODS" id="CD_GOODS1">
														</div>
														<a class="prod_add" href="javascript:void(0);" onClick="$voc.prodInsert(); return false;">더하기 </a>
													</div> 
												</div>
												
											</td>
										</tr>
										<tr>
											<th scope="row">답변 알림 서비스<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="tbl_radio_wrap">
													<input id="TP_CSTMR_RPLY1" name="TP_CSTMR_RPLY" checked="checked" type="radio" value="N">
													<label for="TP_CSTMR_RPLY1">받지 않음</label>
													<input id="TP_CSTMR_RPLY2" name="TP_CSTMR_RPLY" type="radio" value="Y">
													<label for="TP_CSTMR_RPLY2">받음 (APP Push)</label>													
												</div>
												
											</td>
										</tr>
										<tr id="trEmail" >
											<th scope="row">답변 받으실 메일<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<input class="mail_input" id="DS_CSTMR_EMAIL1"  name="DS_CSTMR_EMAIL1" type="text" value='${mail1}'>
													<p class="mail_at">@</p>
													<input class="mail_input" id="DS_CSTMR_EMAIL2"  name="DS_CSTMR_EMAIL2" type="text" value='${mail2}'>
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
													<button type="button" class="btn_find_store" data-toggle="modal" data-target="#myModal">매장찾기</button>
													<a class="btn_find_store" href="javascript:void(0);">매장찾기</a>
													<p class="input_store_txt"></p>
													
												</div>
												<div class="sel_wrap mt10">
													<p class="visit_txt">방문일</p>
													<div class="pick_date_each">
														<div class="pick_date_each_left"><input id="pickDate1" name="DT_VISIT_STR" title="원하는 날짜를 선택해 주세요." type="text" readonly="readonly" ></div>
														<div class="pick_date_each_right"><label for="pickDate1">날짜 선택</label></div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">제목<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<input class="voc_ttl_input1 empty" id="DS_VOC_TITLE" name="DS_VOC_TITLE" type="text" onpaste="fnPaste(); return false;" oncopy="fnCopy(); return false;"> <!--  style="width:514px"> -->
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">내용<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<!-- <textarea id="DS_VOC_CN" name="DS_VOC_CN"  style="height:200px"></textarea> -->
												<textarea class="textArea empty" id="DS_VOC_CN" name="DS_VOC_CN" onpaste="fnPaste(); return false;" oncopy="fnCopy(); return false;" 
											        placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다."></textarea>
												<br><span id="realByte">0 / 2500byte</span>
											</td>
										</tr>
										
										<tr>
											<th scope="row">파일첨부</th>
											<td>
											
											
												<div class="file_section">

													<div class="file_wrap" id="file_wrap1">
														<input class="voc_file_input" id="fileName1"  readonly type="text">
														<div class="voc_file_btn">
															<input class="voc_file_input_btn" type="button" value="찾아보기">
															<input class="voc_file_input_hidden" onchange="document.getElementById('fileName1').value = this.value;" type="file" name="file_nm1" id="file_nm1">
														</div>
															<a class="file_add" href="javascript:void(0);" onClick="$voc.fileInsert(); return false;">더하기 </a>
													</div> 
													
												</div>
												
												<div class="voc_file_guide">파일첨부는 아래의 파일만 등록이 가능하며 최대 2개(1개당 최대5MB), 총 10MB까지 등록이 가능합니다. <br> <span>(등록 가능 확장자 : jpg, jpeg, png, gif)</span></div>
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
									<ul>
										<li class="voc_info_input_btn1"><a href="#none" onclick="$voc.goSubmit(); return false;">고객의 소리 등록 하기</a></li>
										<!-- <li class="voc_info_input_btn2"><a href="#n" onclick="$voc.cancel(); return false;">취소</a></li> -->
									</ul>
								</div>
					
					
				</fieldset>
				<!--매장 찾기 팝업 -->
				 <div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <h4 class="modal-title">매장 찾기</h4>
				        </div>
				        <div class="modal-body">
				        
				          <p>Some text in the modal.</p>
				          <dl class="store_find">
				          	<dt class="dt1"></dt>
				          	<dd style="display: block;">
				          		<div class="search_wrap">
				          			<ul>
				          				<li>
				          					<label>매장명</label>
											<input id="bar2" name="stosearch" class="storeName" type="text">
											<p ><a id="stosearch" href="#">검색</a></p>      					
				          				</li>
				          			</ul>
				          		</div>
				          		<div id="result_list">
				          			<table>
				          			
				          			
				          			</table>
				          		
				          		</div>
				          	</dd>
				          </dl>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        </div>
				      </div>
				      
				    </div>
				  </div>
			</form>	
		</div>
	
	</div>
	<!-- 내용 end -->
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script type="text/javascript">
   var emptyCheckResult = true;
   $("#DS_VOC_TITLE").blur(function(){
   	emptyCheck();
   	
   	if(emptyCheckResult){
   		$("#phone_Check").html("사용가능 합니다");
   		$("#phone_Check").addClass("valCheck");
   	}else {
   		$("#phone_Check").html("필수입력 사항 입니다");
   		$("#phone_Check").addClass("valCheck");
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
		$("#stosearch").click(function() {
			var stosearch = $("#bar2").val();
			$.ajax({
				url:"./findStore",
				type:"get",
				data:{stosearch:stosearch},
				success: function(result) {
					alert(result);
					$("#result_list").append(result);
				}
			})
			
			
			
		})
		
		//*************************************************
		
		//*********************************************
	
   </script>
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>