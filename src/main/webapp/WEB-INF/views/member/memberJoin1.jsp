<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">	

	<title id="titleJoin">Starbucks Coffee Korea</title>

	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberJoin.css?v=165" rel="stylesheet" type="text/css">
	<!-- bxSlider CSS file -->
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
<div id="wrap">
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->

		<!-- 내용 -->
		<div id="container">
			<div class="find_mem_wrap asdasdadas">
				<div class="find_mem_inner">
					<form action="" method="post">
						<fieldset>
							<legend class="hid">회원가입 이용약관 동의, 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간 및 파기절차, 파기 방법에 관한 폼</legend>

							<strong class="find_mem_ttl">회원가입</strong>
							<section class="joinform">
								<div class="find_mem_sally"></div>
								<p class="find_form_txt">회원가입 약관동의 및 본인인증단계입니다.</p>
								
								<!-- 이용약관 동의 -->
								<section class="mem_agreement_wrap">
									<h5>
										홈페이지 이용약관 동의 <span class="type_green">(필수)</span>
									</h5>
									<span class="agree-check"> <input type="checkbox"
										name="mem_agreeMent" id="mem_agreeMent_yes" class="mem" /> <label
										for="mem_agreeMent_yes">동의</label>
									</span>
									<div class="mem_agreement_area">
										<div class="privacy_cont">
											<p class="title_text" id="title_text"></p>
										</div>
									</div>
								</section>

								<section class="mem_purpose_wrap">
									<h5>
										개인정보 수집 및 이용동의 <span class="type_green">(필수)</span>
									</h5>
									<span class="agree-check"> <input type="checkbox"
										name="mem_purpose" id="mem_purpose_yes" class="mem" /> <label
										for="mem_purpose_yes">동의</label>
									</span>
									<div class="mem_purpose_area mem_purpose_area_v2">
										<!-- 개인정보의 수집 및 이용목적 내용 -->
										<div class="privacy_cont">
											<p class="privacy_text" id="privacy_text"></p>
										</div>
										<!-- 개인정보의 수집 및 이용목적 내용 end -->
									</div>
								</section>

								<section class="mem_agreement_wrap mem_advertise_wrap">
									<h5>
										E-mail 및 SMS 광고성 정보 수신동의 <span class="type_green">(선택)</span>
									</h5>
									<span class="agree-check"> <input type="checkbox"
										name="mem_advertise" id="mem_advertise_yes" class="mem" /> <label
										for="mem_advertise_yes">동의</label>
									</span>
									<dd id="mem_advertise_desc">다양한 프로모션 소식 및 신규 매장 정보를 보내 드립니다.</dd>
								</section>
								<!-- 이용약관 동의 End -->
								
								<!-- 유의사항 -->
								<section class="mem_join_note">
									<h5>회원가입 유의사항</h5>
									<ul>
										<li>반드시 회원님 명의로 된 휴대폰, 아이핀을 이용해주세요.</li>
										<li>타인의 개인정보를 도용하여 가입할 경우 향후 적발 시 서비스 이용제한 및 법적 제재를 받으실 수
											있습니다.</li>
										<li>스타벅스커피 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상,
											Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</li>
									</ul>
								</section>
								<!-- 유의사항 End -->
								
								<!-- 본인인증 -->
								<section class="mem_accreditation_wrap mb10">
									<h5>인증방식 선택</h5>
									<ul class="mem_accreditation_info">
										<li class="li1">
											<figure>
												<img src="${pageContext.request.contextPath}/resources/images/member/icon_find1_type2.png" alt="휴대폰 아이콘">
											</figure>
											<p class="mem_k_titl">이메일 인증</p>
											<p class="mem_k_txt">가입한 이메일을 통해 인증합니다.</p>
											<p class="mem_k_btn">
												<a href="${pageContext.request.contextPath}/member/emailAuthSend">인증하기</a>
												<a href="${pageContext.request.contextPath}/member/memberJoin2" title="email">Join</a>
											</p>
										</li>
										<%-- 
										<li class="li2">
											<figure>
												<img src="${pageContext.request.contextPath}/resources/images/member/icon_find1_email.png" alt="아이핀 아이콘">
											</figure>
											<p class="mem_f_titl">이메일 <span class="en">(E-mail)</span>인증
											</p>
											<p class="mem_f_txt">가입한 이메일을 통해 인증합니다.</p>
											<p class="mem_f_btn">
												<a href="javascript:void(0)" title="아이핀 본인 인증 새창열기">인증하기</a>
											</p>
										</li>
										--%>
									</ul>
								</section>
								<!-- 본인인증 end -->
							</section>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- 내용 end -->
		</div>
	
	
	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
</div>


	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
	
</body>
</html>