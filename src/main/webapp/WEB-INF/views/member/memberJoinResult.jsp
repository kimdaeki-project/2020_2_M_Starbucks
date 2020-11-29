<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
	<link href="${pageContext.request.contextPath}/resources/css/member/memberJoin.css?v=221" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
<div id="wrap">
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->



	<!-- Container -->
	<div id="container">
		<!-- 내용 -->
		<div class="find_mem_wrap">
			<div class="find_mem_inner">
				<div class="joinfrm">
					<fieldset>
						<legend class="hid">회원가입 이용약관 동의, 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간 및 파기절차, 파기 방법에 관한 폼</legend>
						<strong class="find_mem_ttl">회원가입 완료</strong>
	
						<section class="joinform">
						<div class="find_mem_sally"></div>
							<p class="find_form_txt">회원가입이 완료되었습니다.</p>
							<%-- <div class="form_input_box id_chk">
								<label for="id" class="hid">아이디</label>
								<p>${joinInfo.nickName} 님 환영합니다! </p>
							</div> --%>
						</section>
						<p class="modify_txt2">
							<b> * 회원가입한 정보로 로그인이 가능합니다. 로그인 후 이용해보세요. </b>
						</p>
						<p class="btn_mem_login">
							<a class="login_left" href="${pageContext.request.contextPath}/member/memberLogin">로그인하기</a>
							<a class="login_right" href="${pageContext.request.contextPath}/">메인으로 가기</a>
						</p>
					</fieldset>
				</div>
			</div>
		</div>
		<!-- 내용 end -->
	</div>
	<!-- Container End -->



	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
</div>

	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/member/memberJoin.js?v=1"></script>
	
</body>
</html>