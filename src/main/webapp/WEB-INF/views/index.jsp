<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">	
<title id="titleJoin">Starbucks Coffee Korea</title>
	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=201113" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=201113" rel="stylesheet" type="text/css">
	<link href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div id="wrap">
	<c:import url="./common/header.jsp"></c:import>

	<section>
		<div id="container" style="height:500px">
			<a href="#">Container</a>
		</div>
		<div id="container" style="height:500px">
			<a href="#">Container</a>
		</div>
		<div id="container" style="height:500px">
			<a href="#">Container</a>
		</div>
	</section>
	
	<c:import url="./common/footer.jsp"></c:import>
</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=201113"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=201113"></script>
</body>
</html>

