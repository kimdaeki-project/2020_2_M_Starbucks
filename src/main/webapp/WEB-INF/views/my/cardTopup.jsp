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
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/cardTopup.css" rel="stylesheet" type="text/css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
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
    
    <!--main 내용-->
    <div class="card_charge_wrap">
    	<!-- side nav  -->
	 	<c:import url="./sideNav.jsp"></c:import>
    
    	<!--main sections 카드 충전-->
        <div class="main_container">
            <section class="card_topup">
                <fieldset>
                    <legend class="hid"> </legend>
                    <section class="select_topup">
                        <h5 class="select_topup_regular"><a>일반 충전</a></h5>

                        <form>
                            <table class="regular_charge">
                                <tbody>
                                    <tr>
                                        <th>충전 카드 선택</th>
                                        <td>
                                            <div class="sel_wrap">
                                                1.select 카드리스트
                                                <select>
                                                    <option>마이스벅카드</option>
                                                    <option>db에서 가져오기</option>
                                                </select>
                                            </div>
                                            <div class="user_card_wrap">
                                                2. 카드 이미지
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>충전 금액 선택</th>
                                        <td> 
                                            <div class="sel_wrap price">
                                                충전 후 총 카드 잔액
                                                <ul>
                                                    <li>
                                                        <label><input type="radio" value="100000" name="totPrice">10만원</label>
                                                    </li>
                                                    <li>
                                                        <label><input type="radio" value="50000" name="totPrice">5만원</label>
                                                    </li>
                                                    <li>
                                                        <label><input type="radio" value="30000" name="totPrice">3만원</label>
                                                    </li>
                                                    <li>
                                                        <label><input type="radio" value="10000" name="totPrice">1만원</label>
                                                    </li>
                                                    <p class="charge_guide txt_red">스타벅스 카드 온라인 충전은 1만원 단위로 최대 55만원까지 가능하며, 충전 후 합계 잔액이 55만원을 초과할 수 없습니다. </p>  
                                                </ul>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>결제 수단 선택</th>
                                        <td>
                                            <div class="sel_wrap">
                                                <select>
                                                    <option>신용카드</option>
                                                    <option>휴대폰</option>
                                                    <option>계좌이체</option>
                                                </select>
                                                </div> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>온라인 충전 시</th>
                                        <td>
                                            <ol class="charge_warn">
                                                <li>
                                                    1. 이용안내
                                                    <ul>
                                                        <li>
                                                            스타벅스 리워드 프로그램에 등록된 스타벅스 카드의 충전은 매장 충전 외에도 다음의 온라인 서비스를 통해<br>이용하실 수 있습니다. <!-- 스타벅스 리워드 수정  -->
                                                            <ul>
                                                                <li>PC 홈페이지 (www.starbucks.co.kr)</li>
                                                                <li>스타벅스 리워드 App (iOS 및 Android 버전 제공)</li> <!-- 스타벅스 리워드 수정  -->
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            온라인 충전은 회원님의 편의를 위해 다음의 2가지 방법으로 제공됩니다.
                                                            <ul>
                                                                <li>일반 충전 : 필요시 마다 충전금액과 결제수단 등의 정보를 입력하여 즉시 충전</li>
                                                                <li>자동 충전 : 카드별로 자동충전방법, 충전금액, 결제수단 등을 미리 설정해두고 설정값에 따라 자동 충전(카드번호 등<br>결제수단 정보는 거래승인을 위해서 최초 신청시에만 입력을 받게되며 신청이 완료된 후 저장되지 않습니다.)</li>
                                                                <li>스타벅스 리워드 App (iOS 및 Android 버전 제공)</li> <!-- 스타벅스 리워드 수정  -->
                                                            </ul>
                                                        </li>
                                                        <li>온라인 접속 환경 및 충전 방법에 따라 충전시 결제 수단에 차이가 있을 수 있습니다.</li>
                                                        <li>스타벅스 카드 충전 금액에 대한 현금 영수증은 충전 시에는 발행되지 않으며, 매장에서 실제로 구매결제 시 발행됩니다.</li>
                                                        <li>카드 충전금액의 유효기간은 스타벅스 카드의 마지막 거래발생일로부터 5년 입니다.</li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    2. 온라인 충전 취소
                                                    <ul>
                                                        <li>재충전 이후 거래 이력이 없는 경우, 충전일로부터 최대 7일 내 온라인에서 충전 취소가 가능합니다.</li><!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
                                                        <li>휴대폰 충전 시, 충전취소 요청 일이 당월이 아닌 익월인 경우 익월 취소가 불가한 통신사의 정책에 따라 지정하신 계좌로 <br>환불됩니다. (ex 3/30 충전, 4/2 충전 취소요청 → 계좌환불)</li><!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
                                                        <li>매장에서 충전한 거래는 온라인에서 취소하실 수 없습니다.</li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    3. 온라인 충전 제한
                                                    <ul>
                                                        <li>미성년자(만 14세 미만)는 온라인 충전을 하실 수 없습니다.</li>
                                                        <li>충전 후 카드 1장당 잔액은 최대 55만원을 넘을 수 없습니다.</li>
                                                        <li>1회 최대 55만원까지 충전 가능합니다.</li>
                                                    </ul>
                                                </li>
                                            </ol>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </form>

                        <div class="ez-checkbox cahrge_page_ck">
                            <div class="ez-checkbox ez-checked"><input type="checkbox" name="sui_index" id="notice_ck02" t="COMMON" title="선택" value="26" class="ez-hide delegatecardynChk" data-cardregnumber="13299743" data-regtype="C"></div> 
                            <span class="charge_change">충전 후 대표카드 설정</span>
                        </div>

                        <ul class="charge_tbl_btns">
                        <button id="pay">카드충전</button>
                            <li class="charge_tbl_btn1"><a  href="./cardTopup" class="charge_normal">카드 충전</a></li>
                            <li class="charge_tbl_btn2"><a href="javascript:void(0);" class="charge_cancle">취소</a></li>
                        </ul>
                    </section>



                </fieldset>
            </section>
        </div>
    
    
    
    
    
    
    
    </div>
    
    
    
    
    
    
    <script type="text/javascript">
    var IMP = window.IMP; // 생략가능
    IMP.init('imp85640668'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
    
    $("#pay").click(function(){
    	IMP.request_pay({
    	    pg : 'kakao', // version 1.1.0부터 지원.
    	    pay_method : 'card',
    	    merchant_uid : 'merchant_' + new Date().getTime(),
    	    name : '주문명:결제테스트',
    	    amount : 14000,
    	    buyer_email : 'iamport@siot.do',
    	    buyer_name : '구매자이름',
    	    buyer_tel : '010-1234-5678',
    	    buyer_addr: '서울시 강남구 신사동 661-16',
    	    buyer_postcode: '06018',
    	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
    	}, function(rsp) {
    	    if ( rsp.success ) {
    	        var msg = '결제가 완료되었습니다.';
    	        msg += '고유ID : ' + rsp.imp_uid;
    	        msg += '상점 거래ID : ' + rsp.merchant_uid;
    	        msg += '결제 금액 : ' + rsp.paid_amount;
    	        msg += '카드 승인번호 : ' + rsp.apply_num;
    	    } else {
    	        var msg = '결제에 실패하였습니다.';
    	        msg += '에러내용 : ' + rsp.error_msg;
    	    }
    	    alert(msg);
    	});
    	
    	
    })
    
    </script>
    
    
    
</body>
</html>