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
		<div class="unusual_contact_wrap">
			<figure class="icon_unusual"></figure>
			<div class="unusual_contact_txt">
				<strong class="unusual_contact_emphasis"> 서비스 <span class="t_006633">이용에 불편</span>을 드려 죄송합니다.</strong>
				<p>
					요청한 웹페이지의 이름이 바뀌었거나 현재 <strong>사용할 수 없거나 삭제</strong>되었습니다.<br>
					입력하신 주소가 정확한지 <strong>다시 한번 확인해보시기 바랍니다.</strong>
				</p>
				<ul class="unusual_contact_btns">
					<li class="unusual_contact_btn1"><a href="${pageContext.request.contextPath}/">메인 페이지로 이동</a></li>
					<li class="unusual_contact_btn2"><a href="javascript:void(0);" onclick="history.back()">뒤로가기</a></li>
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



