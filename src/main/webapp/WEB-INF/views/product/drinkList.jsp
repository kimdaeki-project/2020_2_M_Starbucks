<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telphone=no">

<title>Starbucks Coffee Korea</title>

<link
	href="${pageContext.request.contextPath}/resources/images/common/favicon.ico"
	rel="shortcut icon" type="image/ico">
<link
	href="${pageContext.request.contextPath}/resources/css/common/reset.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/main.css?v=1"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->


	<div class="product_list">
		<dl>
			<!-- 콜드 브루 커피 -->
			<dt>
				<a href="javascript:void(0);">콜드 브루 커피</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_cold_brew">
				</ul>
			</dd>

			<!-- 브루드 커피 -->
			<dt>
				<a href="javascript:void(0);">브루드 커피</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_brood">
				</ul>
			</dd>

			<!-- 에스프레소 -->
			<dt>
				<a href="javascript:void(0)">에스프레소</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 선택 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_espresso">
				</ul>
			</dd>

			<!-- 프라푸치노 -->
			<dt>
				<a href="javascript:void(0)">프라푸치노</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_frappuccino">
				</ul>
			</dd>

			<!-- 블렌디드 -->
			<dt>
				<a href="javascript:void(0)">블렌디드</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_blended">
				</ul>
			</dd>

			<!-- 스타벅스 피지오 -->
			<dt>
				<a href="javascript:void(0)">스타벅스 피지오</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_fizzo">
				</ul>
			</dd>

			<!-- 티 -->
			<dt>
				<a href="javascript:void(0)">티(티바나)</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_tea">
				</ul>
			</dd>

			<!-- 기타 제조 음료 -->
			<dt>
				<a href="javascript:void(0)">기타 제조 음료</a> <i class="summaryIcon"><img
					src="//image.istarbucks.co.kr/common/img/menu/logo_decaf.png"
					alt="" /></i><span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료
					제외)</span>
			</dt>
			<dd>
				<ul class="product_etc">
				</ul>
			</dd>

			<!-- 스타벅스 주스(병음료) -->
			<dt>
				<a href="javascript:void(0)">스타벅스 주스(병음료)</a>
			</dt>
			<dd>
				<ul class="product_juice">
				</ul>
			</dd>
		</dl>
	</div>

	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->

	<script
		src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>