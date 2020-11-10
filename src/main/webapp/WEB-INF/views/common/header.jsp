<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header id="header">
	<div id="mstopWrap">
		<div id="gnb">
			<!-- 서브 gnb -->
			<div class="sub_gnb_wrap">
				<div class="sub_gnb_wrap_inner">
					<h1 class="logo">
						<a href="./" title="스타벅스 메인페이지">스타벅스 코리아</a>
					</h1>
					<nav class="util_nav">
						<ul>
							<!-- <li class="util_nav01 sign_out" style="display:none;"><a href="#">Sign out</a></li> -->
							<li class="util_nav01 sign_in"><a href="#">Sign In</a></li>
							<li class="util_nav02"><a href="#">My Starbucks</a></li>
							<li class="util_nav03"><a href="#">Customer Service &
									Ideas</a></li>
							<li class="util_nav04"><a href="#">Find a Store</a></li>
						</ul>
					</nav>

					<p class="btn_search">
						<a href="javascript:void(0);"><img alt="통합검색"
							src="//image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png"></a>
					</p>

					<a href="javascript:void(0);" class="rCup3_wrap" role="button"
						title="마이 리워드 레이어 열기">
						<!-- 접근성_20171201 class, role, title 추가 -->
						<span class="rCup3"></span>
					</a>
					<!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
				</div>
				<nav class="sub_gnb_nav">
					<div class="sub_gnb_nav_inner"></div>
				</nav>
				-
			</div>
			<!-- 서브 gnb end -->
		</div>
	</div>
</header>