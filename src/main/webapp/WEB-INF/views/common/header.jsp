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
						<a href="#" title="스타벅스 메인페이지">스타벅스 코리아</a>
					</h1>
					<nav class="util_nav">
						<ul>
							<!-- 로그인하면 활성화
							<li class="util_nav01 sign_out" style="display:none;"><a href="#">Sign out</a></li> -->
							<li class="util_nav01 sign_in"><a href="#">Sign In</a></li>
							<li class="util_nav02"><a href="#">My Starbucks</a></li>
							<li class="util_nav03"><a href="#">Customer Service & Ideas</a></li>
							<li class="util_nav04"><a href="#">Find a Store</a></li>
						</ul>
					</nav>

					<p class="btn_search">
						<a href="#"><img alt="통합검색" src="${pageContext.request.contextPath}/resources/images/common/icon_magnifier_black.png"></a>
						<!-- 이미지 클릭하면 활성화
						<label for=totalSearch" class="ally">통합 검색</label>
						<input type="text" id="totalSearch" placeholder="통합검색"> -->
					</p>
					<!-- 
					<a href="#" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기">
						<span class="rCup3"></span>
					</a>
					 -->
					 <!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
				</div>
				<nav class="sub_gnb_nav">
					<div class="sub_gnb_nav_inner">
						<ul>
							<!-- COFFEE -->
							<li class="gnb_nav01">
								<h2><a href="#">COFFEE</a></h2>		
									<div class="gnb_sub_wrap">
										<div class="gnb_sub">
											<div class="gnb_sub_inner">
												<ul>
													<li class="gnb_sub_ttl"><a href="#">커피이야기</a></li>
													<li><a href="#">스타벅스 로스트 스팩트럼</a></li>
													<li><a href="#">최상의 아라비카 원두</a></li>
													<li><a href="#">한잔의 커피가 완성되기까지</a></li>
													<li><a href="#">클로버® 커피 추출 시스템</a></li>
													<li><a href="#">스타벅스 디카페인</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">나와 어울리는 커피</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">스타벅스 리저브</a></li>
													<li><a href="#">REWERVE MAGAZINE</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">에스프레소 음료</a></li>
													<li><a href="#">도피오</a></li>
													<li><a href="#">에스프레소 마키아또</a></li>
													<li><a href="#">아메리카노</a></li>
													<li><a href="#">마키아또</a></li>
													<li><a href="#">카푸치노</a></li>
													<li><a href="#">라뗴</a></li>
													<li><a href="#">모카</a></li>
													<li><a href="#">리스트레또 비안코</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">최상의 커피를 즐기는 법</a></li>
													<li><a href="#">커피 프레스</a></li>
													<li><a href="#">푸어 오버</a></li>
													<li><a href="#">아이스 푸어 오버</a></li>
													<li><a href="#">커피 메이커</a></li>
													<li><a href="#">리저브를 매장에서 다양하게 즐기는 법</a></li>
												</ul>
											</div>
										</div>
										<!-- 텍스쳐 bg -->
										<div class="gnb_sub_txbg">
											<div class="gnb_sub_tx_inner">
												<div class="gnb_sub_tx_left">
													<h3><a href="#">나와 어울리는 커피 찾기</a></h3>
													<p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
													<h3><a href="#">최상의 커피를 즐기는 법</a></h3>
													<p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
												</div>
												<div class="gnb_sub_tx_right"></div>
											</div>
										</div>
										<!-- 텍스쳐 bg end -->
									</div>
								</li>
								<!-- COFFEE end-->
					
								<!-- MENU -->
								<li class="gnb_nav02">
									<h2><a href="#" class="">MENU</a></h2>
									<div class="gnb_sub_wrap">
										<div class="gnb_sub">
											<div class="gnb_sub_inner">
												<ul>
													<li class="gnb_sub_ttl"><a href="#">음료</a></li>
													<li><a href="#">콜드 브루</a></li>
													<li><a href="#">브루드 커피</a></li>
													<li><a href="#">에스프레소</a></li>
													<li><a href="#">프라푸치노</a></li>
													<li><a href="#">블렌디드</a></li>
													<li><a href="#">스타벅스 피지오</a></li>
													<li><a href="#">티(티바나)</a></li>
													<li><a href="#">기타 제조 음료</a></li>
													<li><a href="#">스타벅스 주스(병음료)</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">푸드</a></li>	
													<li><a href="#">브레드</a></li>
													<li><a href="#">케이크</a></li>
													<li><a href="#">샌드위치 & 샐러드</a></li>
													<li><a href="#">따뜻한 푸드</a></li>
													<li><a href="#">과일 & 요거트</a></li>
													<li><a href="#">스낵 & 미니디저트</a></li>
													<li><a href="#">아이스크림</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">상품</a></li>
													<li><a href="#">머그</a></li>
													<li><a href="#">글라스</a></li>
													<li><a href="#">플라스틱텀블러</a></li>
													<li><a href="#">스테인리스 텀블러</a></li>
													<li><a href="#">보온병</a></li>
													<li><a href="#">액세서리</a></li>
													<li><a href="#">커피용품</a></li>
													<li><a href="#">패키지 티(티바나)</a></li>
													<li><a href="#">스타벅스 플래너</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">커피</a></li>
													<li><a href="#">스타벅스 원두</a></li>
													<li><a href="#">스타벅스 비아</a></li>
													<li><a href="#">스타벅스 오리가미</a></li>
												</ul>
												<ul>
													<li class="gnb_sub_ttl"><a href="#">카드</a></li>
													<li><a href="#">실물카드</a></li>
													<li><a href="#">e-Gift카드</a></li>
												</ul>
											</div>
										</div>
										<!-- 텍스쳐 bg -->
										<div class="gnb_sub_txbg">
											<div class="gnb_sub_tx_inner">
												<div class="gnb_sub_tx_left">
													<h3>
														<a href="#">나이트로 콜드 브루</a>
														<img src="">
													</h3>
													<p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
													<h3><a href="#">최상의 커피를 즐기는 법</a></h3>
													<p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
												</div>
												<div class="gnb_sub_tx_right">
												</div>
											</div>
										</div>
										<!-- 텍스쳐 bg end -->
									</div>
								</li>
								<!-- MENU end -->
							</ul>
						</div>
					</nav>
				-
			</div>
			<!-- 서브 gnb end -->
		</div>
	</div>
	
	
	
</header>