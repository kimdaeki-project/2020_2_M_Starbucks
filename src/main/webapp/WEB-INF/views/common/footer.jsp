<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- footer -->
<footer id="footer">
	<div class="footer_wrap">
		<div class="footer_menus">
			<!-- MOBILE GNB 영역 -->
			<ul class="footer_first_menu">
				<li class="footer_menu_ttl">
					<a class="en" href="#">CUSTOMER SERVICE &amp; IDEAS<span class="footer_arrow_down"></span></a>
				</li>
				<li><a href="/util/faq.do">자주하는 질문</a></li>
				<li><a href="/customer/suggestionWrite.do">고객의 소리</a></li>
				<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스
						이용 팁<span class="footer_arrow_down"></span>
				</a>
					<ul>
						<li><a href="/util/web_tip.do">홈페이지 이용 팁</a></li>
						<li><a href="/util/app_tip.do">애플리케이션 이용 팁</a></li>
						<li><a href="/util/partnership_card.do">제휴카드 안내</a></li>
					</ul></li>
				<li><a href="/util/online_survey.do">고객경험 설문조사</a></li>
				<li><a href="/util/guest_eReceipt.do">비회원 전자영수증 조회</a></li>
			</ul>
			<!-- MOBILE GNB 영역 end -->
			<ul>
				<li class="footer_menu_ttl">
					<a class="en" href="#">COMPANY<span class="footer_arrow_down"></span></a>
				</li>
				<li><a href="#">한눈에 보기</a></li>
				<li><a href="#">스타벅스 사명</a></li>
				<li class="footer_2depth_ttl"><a href="#">스타벅스 소개<span class="footer_arrow_down"></span></a>
					<ul>
						<li><a href="#">스타벅스커피코리아</a></li>
						<li><a href="#">연혁 및 외부 수상 내역</a></li>
						<li><a href="#">스타벅스 이야기</a></li>
					</ul>
				</li>
				<li><a href="#">국내 뉴스룸</a></li>
				<li><a href="#">세계의 스타벅스</a></li>
				<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
			</ul>
			<ul>
				<li class="footer_menu_ttl">
					<a class="en" id="goPage" href="#">CORPORATE SALES<span class="footer_arrow_down"></span></a>
				</li>
				<li><a href="/footer/co_sales/index.do">단체 및 기업 구매 안내</a></li>
			</ul>
			<ul>
				<li class="footer_menu_ttl">
					<a class="en" href="#">PARTNERSHIP<span class="footer_arrow_down"></span></a>
				</li>
				<li><a href="#">신규 입점 제의</a></li>
				<li><a href="#">협력 고객사 등록신청</a></li>
			</ul>
			<ul>
				<li class="footer_menu_ttl"><a class="en"
					href="javascript:void(0);">ONLINE COMMUNITY<span
						class="footer_arrow_down"></span></a></li>
				<li><a href="https://www.facebook.com/starbuckskorea"
					target="_blank">페이스북</a></li>
				<li><a href="https://twitter.com/StarbucksKorea"
					target="_blank">트위터</a></li>
				<li><a href="https://www.youtube.com/user/starbuckskorea"
					target="_blank">유튜브</a></li>
				<li><a href="http://www.istarbucksblog.co.kr/" target="_blank">블로그</a></li>
				<li><a href="https://instagram.com/starbuckskorea/"
					target="_blank">인스타그램</a></li>
			</ul>
			<ul>
				<li class="footer_menu_ttl"><a class="en"
					href="javascript:void(0);">RECRUIT<span
						class="footer_arrow_down"></span></a></li>
				<li><a href="/footer/recruit/index.do">채용 소개</a></li>
				<li><a
					href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=2895"
					target="_blank">채용 지원하기</a></li>
			</ul>
		</div>
	</div>
	<div class="footer_util_btn">
		<ul>
			<li><a href="/">HOME</a></li>
			<li><a href="javascript:$.loginLib.showLayerLogin();"
				class="sign_in">Sign In</a> <a
				href="javascript:$.loginLib.logout();" class="sign_out"
				style="display: none;">Sign Out</a></li>
			<li class="last"><a href="/mem/join1.do">Join Us</a></li>
		</ul>
	</div>
	<!-- 수상내역 -->
	<div class="footer_awards_wrap">
		<div class="footer_awards_wrap_inner">
			<div class="footer_slider_controller">
				<div class="footer_slider_controls"></div>
				<div class="footer_slider_pagers"></div>
			</div>
		</div>
	</div>
	<!-- 수상내역 end -->

	<!-- Express DT MSR 회원 확인 Popup -->
	<div class="dtPop ecoPop" id="msrCheckPop" style="display: none">
		<div class="head">
			<p class="tt"></p>
			<p id="dtPopCommonCloseBtn" class="close dtPopClose">
				<a href="javascript:void(0)"></a>
			</p>
			<!-- 팝업 닫힘 클래스 : dtPopClose -->
		</div>
		<div id="Msr" class="dtPopInner left" style="display: none">
			<p>
				[My DT Pass]는 스타벅스 카드를<br> 등록한 회원만 이용 가능한 서비스입니다.<br> 카드를
				등록하시겠어요?
			</p>
			<br> <input type="hidden" id="dtsPwdchk2" /> <input
				type="hidden" id="dtsPwdchk" />
		</div>
		<div class="dtPopBtn">
			<a id="dtPopPwdCheckBtnMsr" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
			<a id="dtPopCancelBtnMsr" class="dtPopBtn2 cancel">취소</a> <a
				id="dtPopCommonBtnMsr" class="dtPopBtn2 commonBtnMsr"
				style="display: none">확인</a>
		</div>
		<!--// 버튼 -->
	</div>
	<!-- 개인컵 리워드  MSR 회원 확인 Popup s-->
	<div class="dtPop ecoPop" id="msrCheckPop_rewardTumbler"
		style="display: none">
		<div class="head">
			<p class="tt">스타벅스 리워드 등록 안내</p>
			<!-- 스타벅스 리워드 수정  -->
			<p id="tumblerPopCommonCloseBtn" class="close ecoPopClose">
				<a href="javascript:void(0)"></a>
			</p>
			<!-- 팝업 닫힘 클래스 : dtPopClose -->
		</div>
		<div id="msrCheckPop_rewardTumblerContents"
			class="dtPopInner ecoPopDs left" style="display: none">
			<p>
				[개인컵 리워드 설정]은 스타벅스 카드를<br> 등록한 회원만 이용 가능한 서비스입니다.<br> 카드를
				등록하시겠어요?
			</p>
			<br>
		</div>
		<div class="dtPopBtn">
			<a id="tumblerPopConfirmBtn" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
			<a id="tumblerPopCancelBtn" class="dtPopBtn2 cancel">취소</a>
		</div>
		<!--// 버튼 -->
	</div>
	<!-- 개인컵 리워드  MSR 회원 확인 Popup e-->
	<div class="dt_pop_up_dimm" style="display: none"></div>

	<!-- 150517 추가 - 문진욱 -->
	<aside class="copyright">
		<a class="c_00b050" href="/footer/etc/privacy.do">개인정보처리방침</a> <a
			href="/footer/etc/rules_vod.do" class="mbn">영상정보처리기기 운영관리 방침</a> <a
			href="/footer/etc/rules.do">홈페이지 이용약관</a> <a
			href="/footer/etc/rules_loc.do" class="mbn">위치정보 이용약관</a> <a
			href="/footer/etc/rules_msr.do" class="mbn">스타벅스 카드 이용약관</a> <a
			href="/footer/etc/rules_non.do" class="mbn">비회원 이용약관</a> <span
			class="br">
			<!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
			<a href="/footer/etc/rules_mdp.do">My DT Pass 서비스 이용약관</a>
		</span>
		<!-- 20200914 mdp 추가 -->
		<a href="/footer/etc/hotline.do" class="last">윤리경영 핫라인</a></span> <br> <a
			class="btned_link" href="/footer/etc/coming_route.do">찾아오시는 길</a> <a
			class="btned_link" href="/footer/partnership/new_partner.do">신규입점제의</a>
		<a class="btned_link" href="/footer/etc/sitemap.do">사이트 맵</a><br>
		<ul class="copy_menu">
			<li>사업자등록번호 : 201-81-21515</li>
			<li>(주)스타벅스커피 코리아 대표이사 : 송 데이비드 호섭</li>
			<li>TEL : 1522-3232</li>
			<li>개인정보 책임자 : 장석현</li>
			<!-- 20200220 수정 -->
		</ul>
		<span class="en">ⓒ 2020 Starbucks Coffee Company. All Rights
			Reserved.</span>
	</aside>
	<!-- 150517 추가 - 문진욱 end -->
</footer>
<!-- footer end -->