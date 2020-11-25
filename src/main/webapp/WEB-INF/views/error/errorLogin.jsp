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
	<link href="${pageContext.request.contextPath}/resources/css/error/errorPage.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->


	<!-- container -->
	<div id="container">
		<div class="need_login_wrap">
			<figure class="icon_com_lock"></figure>
			<div class="need_login_txt">
				<strong class="need_login_emphasis"><span class="t_006633">로그인</span> 시 이용 가능합니다.</strong>
				<p>해당 서비스를 이용하시려면 <strong>스타벅스 회원으로 가입</strong>하시기 바랍니다.</p>
				<ul class="need_login_btns">
					<li class="need_login_btn1"><a href="${pageContext.request.contextPath}/member/memberLogin">로그인</a></li>
					<li class="need_login_btn2"><a href="${pageContext.request.contextPath}/member/memberJoin1">회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- container end -->
	

	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
	
	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>