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

	<title>Starbucks Coffee Korea</title>

	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/main.css?v=1" rel="stylesheet" type="text/css">
	<!-- bxSlider CSS file -->
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->

	<!-- Container -->
	<div id="container">
		<div class="login_bg_wrap">
			<!-- 내용 -->
			<div class="find_mem_wrap mem_wrap2">
				<div class="find_mem_inner">
					<form id="frmLogin" action="#" method="post">
						<fieldset>
							<legend class="hid">회원가입 이용약관 동의, 수집하는 개인정보의 항목, 개인정보의
								수집 및 이용목적, 개인정보의 보유 및 이용기간 및 파기절차, 파기 방법에 관한 폼</legend>
							<strong class="login_ttl">로그인</strong>
							<section class="joinform_v2">
								<!-- <figure class="find_mem_sally">
										<img src="//image.istarbucks.co.kr/common/img/util/mem/icon_find_sally.png" alt="" />
									</figure> -->
								<p class="find_form_txt">
									<span class="t_006633">Welcome!</span><br class="for_mob" />
									스타벅스커피 코리아에 오신 것을 환영합니다.
								</p>

								<div class="input_box bd_none">
									<label for="txt_user_id" class="hid">아이디</label>
									<input class="login_id mb10" id="id" name="id" type="text" maxlength="20" placeholder="아이디를 입력해 주세요." required="required" />
									<p class="limit_txt user_id_txt"></p>
									
									<label for="txt_user_pwd" class="hid">비밀번호</label>
									<input class="login_pw mb10" id="pw" name="pw" type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요." required="required" autocomplete="off" />
									<p class="limit_txt user_pwd_txt"></p>
									<span class="checkWrap">
										<input type="checkbox" name="idRemb" id="idRemb" class="mem2" />
										<label for="idRemb">아이디 저장</label>
									</span>
									<p class="btn_mem_login">
										<a class="btn_login" href="javascript:void(0);" role="submit">로그인</a>
									</p>
									<p class="input_warn_text t_006633">
										* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.<br /> 
										* 스타벅스 커피 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.
									</p>
								</div>
								<div class="login_btn_wrap">
									<ul>
										<li><a href="/member/memberJoin">회원가입</a></li>
										<li><a href="#">아이디 찾기</a></li>
										<li class="last"><a href="#">비밀번호 찾기</a></li>
									</ul>
								</div>
							</section>
							<section class="joinform_v2 mem_captcha"
								style="display: none;">
								<div class="captcha_infoInput_text">
									<p class="captcha_guidet">
										비밀번호를 5회 이상 잘못 입력하면, 보안문자를 함께 입력하셔야 합니다. 
										<span>아래 이미지의 보안문자를 보이는 대로 입력해주세요.</span>
									</p>
								</div>
								<div class="mem_captcha_frm">
									<fieldset class="mem_captcha_field">
										<legend class="hid">보안문자 입력폼</legend>
										<div class="mem_captcha_input_wrap">
											<dl>
												<dt>
													<label for="captcha">보안문자</label>
												</dt>
												<dd>
													<p class="mem_captcha_img">
														<img alt="">
													</p>
													<a class="btn_login btn_new_captcha"
														href="javascript:void(0);" role="button">새로<br />고침
													</a>
													<input id="captcha" name="captcha" type="text" maxlength="10" />
												</dd>
											</dl>
										</div>
									</fieldset>
								</div>
							</section>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- 내용 end -->
		</div>
	</div>

	<!-- Container End -->
	
	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>