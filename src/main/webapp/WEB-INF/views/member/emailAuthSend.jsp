<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
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
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	
	<style type="text/css">
		#container { width:100%; padding:100px 0; }
	</style>
</head>
<body>
	<div id="wrap">

	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->

	<div id="container">
		<h1>이메일 발송</h1>
		<form action="./emailAuthSend" method="post">
			<div>
				이메일 : <input type="email" name="email" id="email" placeholder="이메일주소를 입력하세요.">
			</div> 
			<input type="hidden" name="authState" id="authState" value="0" />
			<button type="submit" name="submit">이메일 인증받기</button>
		</form>
	</div>
	

	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
	</div>

	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
	
</body>
</html>