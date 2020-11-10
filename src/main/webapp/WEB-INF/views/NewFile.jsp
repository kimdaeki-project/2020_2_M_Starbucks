<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta property="og:type"		content="website">
	<meta property="og:title"		content="Starbucks">
	<meta property="og:url"			content="https://www.starbucks.co.kr/">
	<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
	<meta property="og:description" content="Starbucks">
<title id="titleJoin">Starbucks Coffee Korea</title>
	<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
	<link href="/common/css/reset.css" rel="stylesheet">
	<link href="/common/css/style.css?v=200130" rel="stylesheet">
	<link href="/common/css/jquery.bxslider.css" rel="stylesheet">
	<link href="/common/css/idangerous.swiper.css" rel="stylesheet">
	<link href="/common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
	<link href="/common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
	<link href="/common/css/jquery.scrollbar.css" rel="stylesheet">
	<link href="/common/css/jquery-ui.css" rel="stylesheet">
	<link href="/common/css/ezmark.css" rel="stylesheet">
	<link href="/common/css/style_dt.css?v=20191211" rel="stylesheet"> <!-- 20191211 수정 -->

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="/common/css_ie/style.css" rel="stylesheet">
	<script>
		document.createElement('header');
		document.createElement('nav');
		document.createElement('section');
		document.createElement('figure');
		document.createElement('article');
		document.createElement('aside');
		document.createElement('footer');
	</script>
<![endif]-->


<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-66158138-1', 'auto');
	ga('send', 'pageview');
</script>


<script type="text/javascript">
	var eFrequencyYn = 'Y';
	var eFrequencySeq = '163';
</script>
	
	<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
	<link href="/common/css/style_main.css?v=200819" rel="stylesheet" />		
	<link href="/common/css/style_main_newProm.css?v=20201028" rel="stylesheet" /> <!-- 20201023 수정 -->
	<!--[if lt IE 9]>
	<link href="/common/css_ie/style_main.css?v=161130" rel="stylesheet" />
	<![endif]-->
</head>



<body>
<div id="wrap">

<script>
	//appId      : '1012019678818238',
	window.fbAsyncInit = function() {
		FB.init({
			appId      : '179159949450639',
			xfbml      : true,
			version    : 'v2.4'
		});
	};
	
	(function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/ko_KR/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
</script>

<!-- 접근성_20171106 건너뛰기 링크  추가 -->
	<div id="skip-menu">
	  <a href="#gnb">메뉴바로가기</a>
	  <a href="#container">콘텐츠 바로가기</a>
	</div>
<!-- 접근성_20171106 건너뛰기 링크  추가 끝 -->

	
<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 -->

<!-- 로그인 팝업 위치 이슈로 인해 위치 변경 -->

<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 end -->

<!-- MSR 영역 -->



	<!-- MSR 영역 -->
	<div id="top_MSR" class="eFreqTop"><!-- 20170510 수정 : 클래스 eFreqTop 추가 -->
		<div class="top_msr_wrap" style="display:none;">

		<!-- 유저인포 -->
			<div class="user_greet">
				<div class="user_pic_area">
					<img alt="사용자 아이디" src="//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg">
					<p class="msr_user_mask msr_user_mask01"></p>
					<p class="msr_user_mask msr_user_mask02"></p>
					<p class="msr_user_mask msr_user_mask03"></p>
					<p class="msr_user_mask msr_user_mask04"></p>
				</div>

				<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
				<p class="msr_btn_setting"><a href="/my/myinfo_modify_login.do">개인정보 수정</a></p>
			</div>

			<!-- 유저인포 end -->
			<span class="msr_sep_line"></span>

			<!-- 유저레벨 -->

			<!-- MSR 회원 -->
			<div class="user_level" style="display:none;">
				<a href="/my/reward.do">
					<p class="level_star_bg en">0</p>
					<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
				</a>
			</div>
			<!-- MSR 회원 end -->

				<!-- 일반회원 -->
				<div class="msr_lead">
					<a href="/msr/msreward/level_benefit.do">
						<p class="icon_msr_cup"></p>
						<p class="msr_lead_txt"><strong>스타벅스 리워드</strong><br>혜택에 편리함까지 더한<br>스타벅스 리워드를<br>즐겨보세요.</p> <!-- 스타벅스 리워드 수정 -->
					</a>
				</div>
				<!-- 일반회원 end -->

			<!-- 유저레벨 end -->
				<span class="msr_sep_line"></span>

				<!-- 카드인포 -->
				<!-- MSR 회원 -->
				<!-- 150805 DOM 수정 -->

				<div class="msr_card_info w_card_pic">
					<p class="msr_card_area" onclick="location.href = '/my/mycard_index.do';" style="cursor:pointer;"><img alt="" /></p>
					<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>

					<!-- 150924 - 다른카드보기버튼 추가 -->
					<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
					<!-- 150924 - 다른카드보기버튼 추가 ebd -->
				</div>

				<div class="msr_card_zone m_card_pic">
					<div class="mycard_area1">
						<img alt="카드이름">
					</div>
					<div class="mycard_area2">
						<img alt="카드이름" src="//image.istarbucks.co.kr/common/img/common/mycard2.png">
						<p class="num"><!-- 1234-1234-1234-1234 --></p>
						<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
					</div>

					<div class="mycard_one">
					<!-- <div class="front"> -->
						<img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="">
					<!-- </div> -->

					<!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
					</div>

					<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>

					<!-- 150924 - 다른카드보기버튼 추가 -->
					<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
					<!-- 150924 - 다른카드보기버튼 추가 ebd -->

				</div>

				<!-- 150805 DOM 수정 -->
				<!-- MSR 회원 end -->

				<!-- 일반회원 -->
				<div class="sb_card_regi">
					<a href="javascript:void(0);">
						<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input.do';"><img alt="카드등록 아이콘" src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>

							<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>카드를 등록하시고<br>다양한 리워드를<br>만나보세요.</p>

						</a>

					</div>
				<!-- 일반회원 end -->
			<!-- 카드인포 end -->

			<!-- 일반 회원 -->
			<!-- 일반 회원 end -->

					<span class="msr_sep_line"></span>

					<!-- 알림아이콘 -->
					<div class="notice_icons">
						<div class="notice_icon1">
							<a href="/my/inbox.do" title="마이 인박스"><!-- 접근성_20171106 title 추가 -->
						
								<!-- 150715 DOM 수정 - 인박스가 있을 때 -->
								<!-- <p>
										<span class="inboxNoCnt">N</span>
									</p> -->
								<!-- 150715 DOM 수정 - 인박스가 있을 때 end -->

								<!-- 150715 DOM 수정 - 인박스가 없을 때 -->
								<p class="inbox_no">
									<span class="inboxNoCnt">N</span>
								</p>
								<!-- 150715 DOM 수정 - 인박스가 없을 때 end -->
								
								<span>인박스</span>
							</a>
						</div>

					<div class="notice_icon2">
						<a href="/my/calendar.do">
							<p></p>
							<span>캘린더</span>
						</a>
					</div>

					<div class="notice_icon3">
						<a href="/my/ecoupon.do">
							<p>
								<span class="validCoupontCnt">0</span>
							</p>
							<span>e-쿠폰</span>	
						</a>
					</div>
						
					<!-- 20170510 추가 : 아이콘추가 -->
					<div class="notice_icon4">
						<a href="/eFreq/status.do?TYPE=BARCODE">
							<p></p>
							<span>e-프리퀀시<br/>바코드</span>
						</a>
					</div>

					<!--// 20170510 추가 : 아이콘추가 -->
					</div>

					<!-- 알림아이콘 end -->
				</div>

				<div class="top_msr_nologin">
					<div class="top_msr_nologin_l">
						<i class="icon_before_login"></i>
						<p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수 있습니다.</p>

						<div class="msr_nologin_btns">
							<ul>
								<li><a href="javascript:$.loginLib.showLayerLogin();">로그인</a></li>
								<li><a href="/mem/join.do">회원가입</a></li>
							</ul>
						</div>
					</div>
					
					<span class="msr_sep_line"></span>
					<div class="top_msr_nologin_r">
						<i class="icon_sbcard_lead"></i>
						<p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한 혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
						<p class="btn_sbcard_regi">
							<a href="/my/mycard_info_input.do">카드 등록</a>
						</p>
					</div>
					<!-- 160628 수정 -->
					<div class="top_msr_nologin_b">
						<p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스 앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
						<p class="btn_egift_regi">
							<a href="/msr/sceGift/gift_step1.do">e-Gift 선물하기</a>
						</p>
					</div>
					<!-- 160628 수정 end -->
				</div>
			</div>
			

	<!-- MSR 영역 end -->

	<!-- 부가설명 : 화면의 크기가 작아져서 모바일 버전으로 보일때 width=960인경우 (성민) -->
	<!-- GNB 영역 -->

			<!-- 960 gnb -->
			<div class="tablet_gnb_wrap">
				<h1 class="logo"><a href="/">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="/my/index.do" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="/store/store_map.do"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb04"><a href="javascript:void(0);"><span class="a11y" role="button">메뉴열기</span></a><!-- 접근성_20171106 span추가 --></li>
					</ul>
				</nav>
			</div>
			<!-- 960 gnb end -->
			
			
			<!-- 부가설명 : 화면크기 960이하일 때 메뉴버튼 누르면 나오는 화면 (성민) -->
			<!-- 640 gnb -->
			<!-- 메뉴버튼을 눌렀을 때 -->
			<div class="mob_gnb_dimm"></div>
			<div class="mob_gnb_wrap">
				<div class="mob_gnb_wrap_inner">
					<aside class="btn_gnb_close"><a href="javascript:void(0);" title="메뉴닫기" role="button">닫기</a><!-- 접근성_20171106 title 추가 --></aside>
					<div class="mob_gnb_search">
						<div class="mob_gnb_search_inner">
						<label for="search_text" class="a11y">검색어</label><!-- 접근성_20171106 검색어 추가 -->
							<input type="text" id="search_text" name="search_text">
							<a href="javascript:void(0);" class="mob_gnb_search_btn" titie="검색">Search</a><!-- 접근성_20171106 title 추가 -->
						</div>
					</div>
					<nav class="mob_gnb_menus">
						<ul>
							<li class="mob_gnb_ttl1"><a role="button" class="en" href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/my/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/reward.do" required="login">리워드 및 혜택</a></li>
									<li><a href="/my/reward_star_history.do" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/mycard_index.do" required="login">보유 카드</a></li>
									<li><a href="/my/mycard_info_input.do" required="login">카드 등록</a></li>
									<li><a href="/my/mycard_charge.do" required="login">카드 충전</a></li>
									<li><a href="/my/mycard_lost.do" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/sceGift/gift_step1.do" required="login">선물하기</a></li>
									<li><a href="/my/egiftCard.do" required="login">선물 내역</a></li>
									<li><a href="/my/egiftCard_shopping_bag.do" required="login">장바구니 내역</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/ecoupon.do?t=REG" required="login">등록하기</a></li>
									<li><a href="/my/ecoupon.do?t=GIFT" required="login">선물하기</a></li>
									<li><a href="/my/ecoupon.do?t=USE" required="login">사용하기</a></li>
								</ul>
							</li>
							<li><a href="/my/calendar.do" required="login">My 캘린더</a></li>
							<!-- <li><a href="/my/drink_shop.do" required="login">My 음료/매장</a></li> -->
							<li><a href="/my/my_menu.do" required="login">My 메뉴</a></li>
							<li><a href="/my/my_store.do" required="login">My 매장</a></li>
							
							<li>
								<a role="button" href="javascript:void(0);">My e-프리퀀시<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/eFreq/guide.do?promoSeq=163">이용안내</a></li>
									<li><a href="/eFreq/status.do?promoSeq=163" required="login">이용현황</a></li>
								</ul>
							</li>
  							<li><a href="/my/vocList.do" required="login">My 고객의 소리</a></li>
							<li><a href="/my/eReceiptList.do" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
  							<li><a href="/edt/expressDtList.do" required="login">My DT Pass</a></li>
 							<li><a href="/my/inbox.do" required="login">인박스</a></li>
							<li>
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/myinfo_modify_login.do" required="login">개인정보확인 및 수정</a></li>
									<li><a href="/my/myinfo_out.do" required="login">회원 탈퇴</a></li>
									<li><a href="/my/myinfo_modify_pwd.do" required="login">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/coffee/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/coffee/product_list.do">스타벅스 원두</a></li>
									<li><a href="/coffee/product_list.do?PACKAGE=01">스타벅스 비아</a></li>
									<li><a href="/coffee/product_list.do?PACKAGE=02">스타벅스 오리가미</a></li>
								</ul>
							</li>
							<li><a href="/coffee/productFinder.do">나와 어울리는 커피</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></a>
								<ul>
									<li><a href="/coffee/reserve_info.do">ABOUT</a></li>
									<li><a href="/coffee/reserve_magazine_list.do">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="/coffee/doppio.do">도피오</a></li>
									<li><a href="/coffee/espresso_macchiato.do">에스프레소 마키아또</a></li>
									<li><a href="/coffee/americano.do">아메리카노</a></li>
									<li><a href="/coffee/caramel_macchato.do">마키아또</a></li>
									<li><a href="/coffee/cappuccino.do">카푸치노</a></li>
									<li><a href="/coffee/latte.do">라떼</a></li>
									<li><a href="/coffee/mocha.do">모카</a></li>
									<!-- <li><a href="javascript:void(0);">더블샷</a></li> -->
									<li><a href="/coffee/flat_white.do">리스트레또 비안코</a></li>
									<!-- <li class="mgnb_gold"><a href="javascript:void(0);">·에스프레소 초이스</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·프로모션 상품</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·브런치 유어 웨이</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="/coffee/higher_enjoy.do">커피 프레스</a></li>
									<li><a href="/coffee/higher_enjoy.do?PACKAGE=01">푸어 오버</a></li>
									<li><a href="/coffee/higher_enjoy.do?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="/coffee/higher_enjoy.do?PACKAGE=03">커피 메이커</a></li>
									<li><a href="/coffee/higher_enjoy.do?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/coffee/story.do">스타벅스 로스트 스팩트럼</a></li>
									<!-- <li><a href="/coffee/story.do?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="/coffee/story.do?PACKAGE=02">최상의 아라비카 원두</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="/coffee/story.do?PACKAGE=03">한 잔의 커피가 완성되기까지</a></li>
									<li><a href="/coffee/story.do?PACKAGE=04">클로버® 커피 추출 시스템</a></li>
									<li><a href="/coffee/story.do?PACKAGE=05">스타벅스 디카페인</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/menu/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/drink_list.do">전체보기</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_brood">브루드 커피</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/food_list.do">전체보기</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_cake">케이크</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="/menu/food_list.do?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/product_list.do">전체보기</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_mug">머그</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_glass">글라스</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_planner">스타벅스 플래너</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/card_list.do">전체보기</a></li>
									<li><a href="/menu/card_list.do?CATE_CD=product_offline">실물카드</a></li>
									<li><a href="/menu/card_list.do?CATE_CD=product_egift">e-Gift 카드</a></li>
								</ul>
							</li>
							<!-- <li>
								<a href="/wholecake/reserve_cake01.do">온라인 케익 예약 span class="mob_gnb_arrow_down"></span</a>
								<ul>
									<li><a href="javascript:void(0);">케익선택</a></li>
									<li><a href="javascript:void(0);">예약정보입력</a></li>
									<li><a href="javascript:void(0);">예약완료</a></li>
								</ul>
							</li> -->
							<li>
								<a role="button" href="javascript:void(0);">메뉴 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_nitro_coldbrew.do">나이트로 콜드브루</a></li>
									<li><a href="/store/store_coldbrew.do">콜드 브루</a></li>
									<li><a href="/menuStory/teavana.do">스타벅스 티바나</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/store/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_map.do?disp=quick">빠른 검색</a></li>
									<li><a href="/store/store_map.do?disp=locale">지역 검색</a></li>
									<li><a href="/store/store_map.do?disp=my" required="login">나만의 매장</a></li>
								</ul>
							</li>
							<li><a href="/store/store_drive.do">드라이브 스루 매장</a></li>
							<li><a href="/store/store_reserve.do">스타벅스 리저브™ 매장</a></li>
							<li><a href="/store/store_community.do">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_cheongdam.do">청담스타</a></li>
									<li><a href="/store/store_star_field.do">티바나 바 매장</a></li>
									<li><a href="/store/store_park.do">파미에파크</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">RESPONSIBILITY<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/responsibility/index.do">한눈에 보기</a></li>
							<li><a href="/responsibility/starbucks_shared_planet.do">사회 공헌 캠페인 소개</a></li>
							<li>
								<a role="button" href="javascript:void(0);">지역 사회 참여 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/hope_delivery.do">희망배달 캠페인</a></li>
									<li><a href="/responsibility/talent_donation.do">재능기부 카페 소식</a></li>
									<li><a href="/responsibility/community_store.do">커뮤니티 스토어</a></li>
									<li><a href="/responsibility/youth_resource.do">청년인재 양성</a></li>
									<li><a href="/responsibility/our_agriculture.do">우리 농산물 사랑 캠페인</a></li>
									<li><a href="/responsibility/our_culture_defend.do">우리 문화 지키기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">환경보호 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/environment.do">환경 발자국 줄이기</a></li>
									<li><a href="/responsibility/no_disposable_cup.do">일회용 컵 없는 매장</a></li>
									<li><a href="/responsibility/bean_recycling.do">커피 원두 재활용</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">윤리 구매<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/ethically_sourcing.do">윤리적 원두 구매</a></li>
									<li><a href="/responsibility/fair_trade.do">공정무역 인증</a></li>
									<li><a href="/responsibility/farmer_support.do">커피 농가 지원 활동</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">글로벌 사회 공헌<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/sp_ethical_management.do">윤리경영 보고서</a></li>
									<li><a href="/responsibility/starbucks_foundation.do">스타벅스 재단</a></li>
									<li><a href="/responsibility/sp_global_month.do">지구촌 봉사의 달</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li><a href="/msr/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li><a href="/msr/msreward/about.do">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/msr/msreward/level_benefit.do">등급 및 혜택</a></li>
									<li><a href="/msr/msreward/star.do">스타벅스 별</a></li>
									<li><a href="/community/faq.do?menu_cd=STB2703&cate=F17">자주하는 질문</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/scard/about.do">스타벅스 카드 소개</a></li>
									<li><a href="/msr/scard/scard_gallery.do">스타벅스 카드 갤러리</a></li>
									<li><a href="/msr/scard/register_inquiry.do">등록 및 조회</a></li>
									<li><a href="/msr/scard/charge_information.do">충전 및 이용안내</a></li>
									<li><a href="/msr/scard/lost_report.do">분실신고/환불신청</a></li>
									<li><a href="/community/faq.do?menu_cd=STB2703&cate=F05">자주하는 질문</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/sceGift/egift_information.do">스타벅스 e-Gift Card 소개</a></li>
									<li><a href="/msr/sceGift/msr_useguide.do">이용안내</a></li>
									<li><a href="/msr/sceGift/gift_step1.do" required="login">선물하기</a></li>
									<li><a href="/community/faq.do?menu_cd=STB2703&cate=F22">자주하는 질문</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/whats_new/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">프로모션&amp;이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/whats_new/campaign_list.do">전체</a></li>
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2814">온라인</a></li>
									<!--2019.12.31 2019 겨울 e-프리퀀시 이벤트 관련 사항 20/1/1/(수)이후 앱/웹 비노출 요청-->
									<li><a href="/whats_new/2021planner.do">크리스마스 e-프리퀀시 증정품</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">새소식<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/whats_new/news_list.do">전체</a></li>
									<li><a href="/whats_new/news_list.do?cate=N01">상품 출시</a></li>
									<li><a href="/whats_new/news_list.do?cate=N02">스타벅스와 문화</a></li>
									<li><a href="/whats_new/news_list.do?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="/whats_new/news_list.do?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/whats_new/store_event_list.do">일반 매장</a></li>
									<li><a href="/whats_new/store_event_list.do?search_date=1&tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li><a href="/whats_new/notice_list.do">공지사항</a></li>
							<li><a href="/whats_new/wallpaper.do">월페이퍼</a></li>
						</ul>
					</nav>
				</div>
			</div>
		<!-- 640 gnb end -->

<!-- GNB 영역 end -->


			<div id="mstopWrap">
				<div id="gnb">
					<!-- 서브 gnb -->
					<div class="sub_gnb_wrap">
						<div class="sub_gnb_wrap_inner">
							<h1 class="logo"><a href="/" title="스타벅스 메인페이지" >스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
							<nav class="util_nav">
								<ul>
									<li class="util_nav01 sign_out" style="display:none;"><a href="javascript:void(0);">Sign out</a></li>
									<li class="util_nav01 sign_in"><a href="javascript:void(0);">Sign In</a></li>
									<li class="util_nav02"><a href="/my/index.do" required="login">My Starbucks</a></li>
									<li class="util_nav03"><a href="/util/index.do">Customer Service & Ideas</a></li>
									<li class="util_nav04"><a href="/store/store_map.do">Find a Store</a></li>
								</ul>
							</nav>
							<p class="btn_search">
								<a href="javascript:void(0);"><img alt="통합검색" src="//image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png"></a>
							</p>
							<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
						</div>
						<nav class="sub_gnb_nav">
							<div class="sub_gnb_nav_inner">
							</div>
						</nav>
			 		</div>
					<!-- 서브 gnb end -->
				</div>
			</div>			
			
 			
			<!-- main visual  /  -->
			<div id="container"><!-- 접근성_20171201 container 추가 -->
			<!--20171227 삭제 -->
			<!--div class="winterTopTxt">
				<img src="common/img/main/17winter2/m/m_17_winter_txt.png" alt="">
			</div-->
			<!--// 20171227 삭제 -->
			
			<div id="topWrap">
				<!-- 20201023 수정 -->
				<div class="main-visual_wrap">
					<div class="main-visual_inner">
						<div class="main-visual_slogan">
							<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_slogan_1.png" alt="CARRY the MERRY" class="pc-slogan" />
							<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_slogan_1.png" alt="CARRY the MERRY" class="m-slogan" />
						</div>
						<div class="main-visual_set">
							<div class="set_common set_01">
								<a href="/menu/drink_view.do?product_cd=128198">
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_latte.png" alt="토피 넛 라떼" class="pc-drink" />
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_latte_1.png" alt="토피 넛 라떼" class="m-drink" />
								</a>
							</div>
							<div class="set_common set_02">
								<a href="/menu/drink_view.do?product_cd=9200000003200">
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_popcorn_1.png" alt="토피 넛 팝콘 트리 프라푸치노" class="pc-drink" />
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_popcorn_1.png" alt="토피 넛 팝콘 트리 프라푸치노" class="m-drink" />
								</a>
							</div>
							<div class="set_common set_03">
								<a href="/menu/drink_view.do?product_cd=9200000003212">
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_relaxer_1.png" alt="캐모마일 릴렉서" class="pc-drink" />
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_relaxer_1.png" alt="캐모마일 릴렉서" class="m-drink" />
								</a>
							</div>
							<div class="set_common set_04">
								<a href="/menu/drink_view.do?product_cd=9200000003209">
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_blended.png" alt="다크 초콜릿 블렌디드" class="pc-drink" />
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_blended_1.png" alt="다크 초콜릿 블렌디드" class="m-drink" />
								</a>
							</div>
							<div class="set_common set_05">
								<a href="/menu/drink_view.do?product_cd=9200000003203">
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_chocolate.png" alt="다크 초콜릿" class="pc-drink" />
									<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_chocolate_1.png" alt="다크 초콜릿" class="m-drink" />
								</a>
							</div>
						</div>
						<div class="btn_slogan">
							<a href="/whats_new/campaign_view.do?pro_seq=1760">
								자세히 보기
							</a>
						</div>
					</div>
					<!-- //20201023 수정 -->
					
					<!-- 플로팅 뱃지 안내 -->
					<div class="layer_floating">
						<div class="xams-freq">
							<a href="/whats_new/campaign_view.do?pro_seq=1761" title="자세히 보기">
								<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/badge_efreq_pc_2020winter.png" alt="" class="pc-badge">
								<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/badge_efreq_m_2020winter.png" alt="" class="mobile-badge">
							</a>
						</div>
						
						<!-- 20201007 PLCC 추가 -->
						<div class="plcc">
							<a href="/plcc/promotionView.do?eventCode=STH02" title="hyundai card + starbucks">
								<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/plcc_badge_pc.png" alt="" class="pc-badge">
								<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/plcc_badge_mobile.png" alt="" class="mobile-badge">
							</a>
						</div>
						<!-- //20201007 추가 -->
					</div>
					<!-- //플로팅 뱃지 안내 -->
				</div>
			</div>

			
			<!-- 151109 메인 이프리퀀시 추가 - 문진욱 -->
			<!-- <section class="main_efreq_bar">
				<div class="main_efreq_bar_bg">
					<p class="efreq_main_link">
						<a href="/eFreq/status.do">"My e-프리퀀시" 현황을 확인해 보세요!</a>
						<i class="efreq_main_plus"></i>
					</p>
					<i class="efreq_main_icon"></i>
				</div>
			</section> -->
			<!-- 151109 메인 이프리퀀시 추가 - 문진욱 end -->
			<!-- notice -->
			<section class="line_notice">
				<div class="line_notice_left"></div>
				<div class="line_notice_right"></div>
				<div class="line_notice_bg">
					<div class="line_notice_bgl">
						<div class="line_notice_inner">
							<dl class="line_notice_inner_l">
								<dt class="notice_ttl">
									<img src="https://image.istarbucks.co.kr/common/img/common/notice_ttl.png" alt="공지사항">
								</dt>
								<dd>
									<ul class="news_result">
									</ul>
								</dd>
							</dl>
							<p class="line_notice_inner_r">
								<span><a href="javascript:void(0);" title="공지사항 더보기">더보기</a><!-- 접근성_20171201 title 추가 --></span>
							</p>
						</div>
					</div>
					<div class="line_notice_bgr">
						<a href="javascript:void(0);">
							<p class="prom_ttl">스타벅스 프로모션</p>
							<span class="btn_prom"><img src="https://image.istarbucks.co.kr/common/img/common/btn_prom_down.png" alt="스타벅스 프로모션 펼쳐보기" role="button" /><!-- 접근성_20171201 alt, role 추가 --></span><!-- 150818 성연욱 수정 -->
						</a>
					</div>
				</div>
			</section>
			<!-- notice end -->
			<!-- 프로모션 배너 -->
			<section class="main_prom_bnr">
				<div class="main_prom_bnr_swiper slider">
					<ul class="main_prom_bxslider">
					</ul>
					<div class="main_slider_controller">
						<div class="main_slider_controls"></div>
						<div class="main_slider_pagers"></div>
					</div>
					<p class="main_prevBtn"><a href="javascript:void(0)"><span class="a11y">이전 프로모션</span></a></p>
					<p class="main_nextBtn"><a href="javascript:void(0)"><span class="a11y">다음 프로모션</span></a></p>
				</div>
			</section>
			<!-- 프로모션 배너 end -->
			
			<!-- 메인 스타벅스 리워드 리뉴얼 -->
			<section class="new-rewards_wrap" style="display:none;">
				<div class="new-rewards_inner">
					<div class="new-rewards_logo">
						<img src="https://image.istarbucks.co.kr/common/img/main/rewards-logo.png" alt="Starbucks Rewards" /> <!-- 20200821 수정 -->
					</div>
					
					<div class="new-rewards_conts">
						<div class="info-cont">
							<div class="info-cont_txt">
								<h2>
									스타벅스만의 특별한 혜택, <br class="mobile-br"> <br class="pc-br"><strong>스타벅스 리워드</strong>
								</h2>
								<p>
									<strong>스타벅스 회원이세요?</strong> <br class="mobile-br"> 로그인을 통해 <br class="pc-br">나만의 리워드를 확인해보세요.
									<br>
									<strong>스타벅스 회원이 아니세요?</strong> <br class="mobile-br"> <br class="pc-br">가입을 통해 리워드 혜택을 즐기세요.
								</p>
							</div>
							<div class="btn-signin_group">
								<a href="/mem/join.do" class="btn-signin_join">회원가입</a>
								<a href="javascript:$.loginLib.showLayerLogin();" class="btn-signin_login">로그인</a>
							</div>
						</div>
						
						<div class="gift-cont">
							<div class="gift-cont_txt">
								<p>
									회원 가입 후, 스타벅스 e-Gift Card를 <br class="pc-br"><br class="mobile-br"><strong>"나에게 선물하기"로 구매하시고, <br class="mobile-br">편리하게 등록하세요!</strong>
									<br>
									카드를 등록하여 스타벅스 리워드 회원이 되신 후, <br class="pc-br"><br class="mobile-br">첫 구매를 하시면 무료 음료쿠폰을 드립니다!
								</p>
							</div>
							<div class="btn_egift">
								<a href="/msr/sceGift/gift_step1.do">e-Gift Card 선물하기</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- //메인 스타벅스 리워드 리뉴얼 -->
			
			<div class="line_msr" style="display:none;">
				<div class="line_msr_wrap msr_new"><!-- 20200120 class="msr_new" 추가 -->
					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<p class="level_star_bg en">0</p>
						<div class="msr_info_area">
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en">Gold Level</strong><br><strong>무료음료</strong> 획득 별까지<br><strong>3개</strong> 남았습니다. --></p>
							<p class="btn_reward_level"><a href="/my/reward.do" title="마이 리워드" class="btn_reward">리워드 및 혜택</a></p>
						</div>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- MSR 회원 end -->
					<!-- 일반회원 -->
					<div class="msr_lead" style="display:none;">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="msr/msreward/level_benefit.do" title="회원 등급별 혜택">
						<p class="icon_msr_cup"></p>
						<div class="msr_info_area">
							<p class="msr_lead_txt">
								<span class="user_greet_txt"><strong><!-- 스벅매니아 --></strong>님, 안녕하세요!</span>
								<span class="userNextStarTxt"><em>혜택에 편리함까지 더한</em> 스타벅스 리워드를 즐겨보세요.</span>
							</p>
						</div>
						</a>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line" aria-hidden="true"></span><!-- 접근성_20171106 aria 추가 -->

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<div class="msr_card_info w_card_pic">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index.do';" style="cursor:pointer;" tabindex="0"><!-- 접근성_20171106 tabindex 추가 -->
							<img alt="카드이름">
						</p><!-- 접근성_20171106 tabindex 추가 -->
						<div class="msr_info_area msr_card_txt_area">
							<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
							<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						</div>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';" />
						</div>
						<div class="mycard_area2">
							<img alt="카드이름" src="https://image.istarbucks.co.kr/common/img/common/mycard2.png" />
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="https://image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one">
							<img src="https://image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="결제하기"><!-- 접근성_20171106 alt 추가 -->
						</div>						
						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
					</div>
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="/my/mycard_info_input.do"><!-- 접근성_20171106 링크 href 변경 -->
						<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input.do';"><img alt="카드등록 아이콘" src="https://image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
						<!-- 등록된 카드가 없는 경우 -->
						<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>등록된 카드가 없습니다.<br>새로운 카드를 등록하세요.</p>
						</a>
						<a class="btn_main_card_regi" href="/my/mycard_info_input.do" required="login">카드등록</a>
						<!-- 등록된 카드가 없는 경우 end -->
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->
				</div>
			</div>
			
			<!-- 20201023 main_Bean 수정-->
			 <section id="main-bean_wrap">
                <div class="main-bean_inner">
					<div class="bean_img_box">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_bean.png" alt="크리스마스 블렌드" class="pc-bean" />
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_bean.png" alt="크리스마스 블렌드" class="m-bean" />
					</div>
					
					<div class="bean_txt_box">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/2020_xmas_bean_txt.png" alt="크리스마스를 더욱 특별하게 만들어 줄 커피 크리스마스 블렌드" class="pc-bean-txt" />
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_2020_xmas_bean_txt.png" alt="크리스마스를 더욱 특별하게 만들어 줄 커피 크리스마스 블렌드" class="m-bean-txt" />
						<div class="btn_bean_detail">
							<a href="/coffee/product_view.do?PRODUCT_CD=250041">
								자세히 보기
							</a>
						</div> 		
					</div>
                </div>
            </section>
			<!-- //20201023 main_Bean 수정-->
			
			<!-- s::20201015 리저브 수정 -->
			<section class="reserve_wrap">
				<div class="reserve_inner">
					<div class="reserve_title">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_xmas_title.png" alt="RESERVE THE MERRY" class="reserve_visual-pc" />
					</div>
					
					<div class="reserve_visual">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_xmas_beans.png" alt="" class="reserve_visual-pc" />
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/m_reserve_xmas_beans.jpg" alt="" class="reserve_visual-m" />
					</div>
					
					<div class="reserve_detail-btn">
						<a href="https://www.starbucks.co.kr/whats_new/newsView.do?seq=3948">자세히 보기</a>
					</div>
				</div>
			</section>
			
			<!-- e::20201015 리저브 수정 -->

			<!-- s::20190207 favorite -->
			<section id="favWrap" class="winter_fav_bg">
				<div class="wrap_inner">
					<div class="fav_prod_txt01">PICK YOUR FAVORITE</div>
					<div class="fav_prod_txt02">다양한 메뉴를 스타벅스에서 즐겨보세요. 스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료, 스타벅스 커피와 완벽한 어울림을 자랑하는 푸드, 다양한 시도와 디자인으로 가치를 더하는 상품, 소중한 사람에게 마음을 전하는 가장 좋은 방법 스타벅스 카드</div>
					<div class="fav_img"></div><!-- 20200831 수정 -->
					<div class="btn_fav_prod"><a href="/menu/index.do">자세히 보기</a></div>
				</div>
			</section>
			<!-- e::20190207 favorite -->

			<!-- 메뉴 -->
			<section id="menuWrap">
				<div class="wrap_inner">
					<div class="menu_txt01"></div>
					<div class="menu_txt02"></div>
					<div class="menu_btn"><a href="/menu/index.do">자세히 보기</a></div>
					<div class="menu_img01"></div>
				</div>
			</section>
			<!-- 메뉴 end -->
			<!-- 리저브매장 -->
			<!--section id="reserveWrap">
				<div id="reserve_medal">
					<div class="reserve_medal01 front"></div>
					<div class="reserve_medal02 back">
						<a href="javascript:void(0);">매장보기</a>
					</div>
				</div>
			</section-->
			
			<!-- <section id="reserve2Wrap">
				<div id="reserve2_medal">
					<div class="reserve2_medal01 front"></div>
					<div class="reserve2_medal02 back">
						<p>스타벅스 리저브 매장 - 스타벅스 리저브 커피 및 관련 제품을 판매하는 매장을 확인하려면 매장보기를 눌러주세요.</p>
						<a href="/store/store_reserve.do">매장보기</a>
					</div>
				</div>
			</section> -->
			
			<!-- 20200619 수정 -->
			<section class="reserve3Wrap">
				<div class="reserve3_pc">
					<div class="reserve_left">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_pc.png" alt="" />
					</div>
					<div class="reserve_right">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_pc.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="reserve3_mobile">
					<div class="reserve_top">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_mobile.png" alt="" />
					</div>
					<div class="reserve_bottom">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_mobile.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="look-detail_btn">
					<a href="/coffee/reserve_magazine_list.do">EXPLORE OUR STORY</a>
				</div>
			</section>
			<!-- //20200619 수정 -->
			<!-- 리저브매장 end -->

			<!-- 드라이브 김민호 추가  160614에적용 -->
			 <!--section id="driveWrap">
				<div id="drive_medal">
					<div class="drive_medal01 front"></div>
					<div class="drive_medal02 back">
						<a href="/store/store_drive.do">매장보기</a>
					</div>
				</div>
			</section--> 
			<!-- 드라이브 김민호 추가 end -->
			<!-- 매장 -->
			<section id="storeWrap">
				<div class="wrap_inner">
					<div class="store_exp_img01"></div>
					<div class="store_exp_img02"></div>
					<div class="store_exp_img03"></div>
					<div class="store_exp_img04"></div>
					<div class="store_txt01">스타벅스를 가까이에서 경험해보세요. 고객님과 가장 가까이 있는 매장을 찾아보세요!</div>
					<div class="store_txt02">차별화된 커피 경험을 누릴 수 있는 리저브 매장, 다양한 방법으로 편리하게 즐길 수 있는 드라이브 스루 매장, 함께해서 더 따뜻할수 있는 지역사회 소통 공간 커뮤니티 매장</div>
					<div class="store_btn"><a href="/store/store_map.do">매장 찾기</a></div>
				</div>
			</section>
			<!-- 매장 end -->
			<!-- 청담매장 -->
			<!-- <section id="chungdamWrap">
				<div class="wrap_inner">
					<i class="chungdam_circle chungdam_circle03"></i>
					<i class="chungdam_circle chungdam_circle02"></i>
					<i class="chungdam_circle chungdam_circle01"></i>
					<p class="chungdam_txt">STARBUCKS 1000호점 청담스타점 - 스타벅스 1,000호점인 청담스타점에서 홈메이드 스타일의 전용 푸드와 스타벅스 리저브 커피를 만나보세요</p>
					161223 버튼 추가
					<p class="btn_detail_chungdam"><a href="/store/store_cheongdam.do">자세히 보기</a></p>
					161223 버튼 추가 end
				</div>
			</section> -->
			<!-- 청담매장 end -->
			</div><!-- // 접근성_20171201 container 추가 -->
			<!-- footer -->
			

		

			<!-- footer -->
			<footer id="footer">
				<div class="footer_wrap">
					<div class="footer_menus">
						<ul class="footer_first_menu">
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">CUSTOMER SERVICE &amp; IDEAS<span class="footer_arrow_down"></span></a></li>
							<li><a href="/util/faq.do">자주하는 질문</a></li>
							<li><a href="/customer/suggestionWrite.do">고객의 소리</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 이용 팁<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="/util/web_tip.do">홈페이지 이용 팁</a></li>
									<li><a href="/util/app_tip.do">애플리케이션 이용 팁</a></li>
									<li><a href="/util/partnership_card.do">제휴카드 안내</a></li>
								</ul>
							</li>
							<li><a href="/util/online_survey.do">고객경험 설문조사</a></li>
							<li><a href="/util/guest_eReceipt.do">비회원 전자영수증 조회</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/company/index.do">한눈에 보기</a></li>
							<li><a href="/footer/company/mission.do">스타벅스 사명</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="/footer/company/starbucks_information.do">스타벅스커피 코리아</a></li>
									<li><a href="/footer/company/starbucks_history.do">연혁 및 외부 수상 내역</a></li>
									<li><a href="/footer/company/starbucks_story.do">스타벅스 이야기</a></li>
								</ul>
							</li>
							<li><a href="/footer/company/news_list.do">국내 뉴스룸</a></li>
							<li><a href="/footer/company/global_starbucks.do">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/co_sales/index.do">단체 및 기업 구매 안내</a></li>
							<!-- <li><a href="/footer/co_sales/sbcard_egift.do">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
							<!-- <li><a href="/footer/co_sales/sbcard.do">스타벅스 카드</a></li> -->
							<!-- <li><a href="/footer/co_sales/co-branded.do"><span class="en">Co-branded</span> 카드</a></li> -->
							<!-- <li><a href="/footer/co_sales/sb_product.do">스타벅스 상품</a></li> -->
							<!-- <li><a href="/footer/co_sales/sbgift_certificate.do">스타벅스 상품권</a></li> -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/partnership/new_partner.do">신규 입점 제의</a></li>
							<!-- <li><a href="/footer/partnership/portal_systems.do">협력사 포털 시스템</a></li> -->
							<li><a href="/srm/login.do">협력 고객사 등록신청</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">ONLINE COMMUNITY<span class="footer_arrow_down"></span></a></li>
							<li><a href="https://www.facebook.com/starbuckskorea" target="_blank">페이스북</a></li>
							<li><a href="https://twitter.com/StarbucksKorea" target="_blank">트위터</a></li>
							<li><a href="https://www.youtube.com/user/starbuckskorea" target="_blank">유튜브</a></li>
							<li><a href="http://www.istarbucksblog.co.kr/" target="_blank">블로그</a></li>
							<li><a href="https://instagram.com/starbuckskorea/" target="_blank">인스타그램</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">RECRUIT<span class="footer_arrow_down"></span></a></li>
							<li><a href="/footer/recruit/index.do">채용 소개</a></li>
							<li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=2895" target="_blank">채용 지원하기</a></li>
						</ul>
					</div>
				</div>
				<div class="footer_util_btn">
					<ul>
						<li><a href="/">HOME</a></li>
						<li>
							<a href="javascript:$.loginLib.showLayerLogin();" class="sign_in">Sign In</a>
							<a href="javascript:$.loginLib.logout();" class="sign_out" style="display:none;">Sign Out</a>
						</li>
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
				<div class="dtPop ecoPop" id="msrCheckPop" style="display:none">
					<div class="head">
						<p class="tt"></p>
						<p id="dtPopCommonCloseBtn" class="close dtPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
					</div>  
					<div id="Msr" class="dtPopInner left" style="display:none">
						<p>[My DT Pass]는 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?
						</p>
						<br>
						<input type="hidden" id="dtsPwdchk2" />
						<input type="hidden" id="dtsPwdchk" />
					</div>
					<div class="dtPopBtn">
						<a id="dtPopPwdCheckBtnMsr" class="dtPopBtn1 confirm pwdCheckBtn" >확인</a>
						<a id="dtPopCancelBtnMsr" class="dtPopBtn2 cancel">취소</a>
						<a id="dtPopCommonBtnMsr" class="dtPopBtn2 commonBtnMsr" style="display:none">확인</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup s-->
				<div class="dtPop ecoPop" id="msrCheckPop_rewardTumbler" style="display:none">
					<div class="head">
						<p class="tt">스타벅스 리워드 등록 안내</p>  <!-- 스타벅스 리워드 수정  -->
						<p id="tumblerPopCommonCloseBtn" class="close ecoPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
				</div>  
					<div id="msrCheckPop_rewardTumblerContents" class="dtPopInner ecoPopDs left" style="display:none">
						<p>[개인컵 리워드 설정]은 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?</p>
						<br>
					</div>
					<div class="dtPopBtn">
						<a id="tumblerPopConfirmBtn" class="dtPopBtn1 confirm pwdCheckBtn" >확인</a>
						<a id="tumblerPopCancelBtn" class="dtPopBtn2 cancel">취소</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup e-->
				<div class="dt_pop_up_dimm" style="display:none"></div>
				
				<!-- 150517 추가 - 문진욱 -->
				<aside class="copyright">
					<a class="c_00b050" href="/footer/etc/privacy.do">개인정보처리방침</a>
					<a href="/footer/etc/rules_vod.do" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="/footer/etc/rules.do">홈페이지 이용약관</a>
					<a href="/footer/etc/rules_loc.do" class="mbn">위치정보 이용약관</a>
					<a href="/footer/etc/rules_msr.do" class="mbn">스타벅스 카드 이용약관</a>
					<a href="/footer/etc/rules_non.do" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="/footer/etc/rules_mdp.do">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="/footer/etc/hotline.do" class="last">윤리경영 핫라인</a></span>
					<br>
					<a class="btned_link" href="/footer/etc/coming_route.do">찾아오시는 길</a>
					<a class="btned_link" href="/footer/partnership/new_partner.do">신규입점제의</a>
					<a class="btned_link" href="/footer/etc/sitemap.do">사이트 맵</a><br>
					<ul class="copy_menu">
						<li>사업자등록번호 : 201-81-21515</li>
						<li>(주)스타벅스커피 코리아 대표이사 : 송 데이비드 호섭</li>
						<li>TEL : 1522-3232</li>
						<li>개인정보 책임자 : 장석현</li><!-- 20200220 수정 -->
					</ul>
					<span class="en">ⓒ 2020 Starbucks Coffee Company. All Rights Reserved.</span>
				</aside>
				<!-- 150517 추가 - 문진욱 end -->
			</footer>
			<!-- footer end -->
			

			<script src="//image.istarbucks.co.kr/common/js/jquery-1.10.2.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/@common.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery-ui.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper-2.1.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper.scrollbar-2.1.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.bxslider.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/skdslider.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.drive.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.easing-1.3.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.elevatezoom.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.flip.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.jsmovie.1.4.4.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.mCustomScrollbar.concat.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.number.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.rotate.2.3.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.scrollbar.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.scrollTo-1.4.2-min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.superscrollorama.js"></script>						
			<script src="//image.istarbucks.co.kr/common/js/jquery.transform2d.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.transform3d.js"></script>			
			<script src="//image.istarbucks.co.kr/common/js/greensock/TweenMax.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/masonry.pkgd.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/common.js"></script>

			<script src="/common/js/gnb.js?v=201028"></script>
			<script src="/common/js/header.js?v=200915"></script>

			<script src="//image.istarbucks.co.kr/common/js/footer.js"></script>			
			<script src="//image.istarbucks.co.kr/common/js/jquery.tmpl.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.tmplPlus.min.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/jquery.ezmark.min.js"></script>
			<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->

			<!--
			<script src="/common/js/swiper.jquery.min.js"></script>
			<script src="/common/js/swiper.min.js"></script>
			<script src="/common/js/util.js"></script>
			-->

			<script src="//image.istarbucks.co.kr/common/js/openevent/openevent.js"></script>
			<script src="//image.istarbucks.co.kr/common/js/open_event_control.js"></script>
			<script type="text/javascript">
				var mrSlider;

				$(document).ready(function(){
					/* 20171204 kbs 페이지별 head 내 title 변경 */
					if( $('.smap li').last().text() == "" )
					{
						$('#titleJoin').text("Starbucks Coffee Korea");
					}
					else
					{
						$('#titleJoin').text( $('.smap li').last().text() + " | Starbucks Coffee Korea" );	
					}
					
					$('#pickDate1, #pickDate2').datepicker({
						 "dateFormat"      : "yy-mm-dd"
						/* ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토'] */
						,"maxDate"         : "+0m +0w"
						/* ,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] */
					});
			
// 					var sbox = $('.my_ms_select select');
// 					sbox.change(function(){
// 						접근성_20171123 삭제
// 						var sbox_name = $(this).children('option:selected').text();
// 						$(this).siblings('label').text(sbox_name);
// 					});접근성_20171201 삭제

					/* 170201 수정 - 황기흠 */
					if ((myWindow > 640) && (myWindow <= 1134)) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:3,
							maxSlides:3,
							slideWidth:210,
							slideMargin:0,
							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:2000,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					} else if (myWindow <= 640) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:1,
							maxSlides:1,
							slideWidth:300,
							slideMargin:0,

							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:2000,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					}

					/* 170201 수정 - 황기흠 end */

		
					/* 구명준 추가 시작 탭 */			
					/* 20171127 중복 스크립트 삭제 coffee.js 내 존재 */
// 					$(".content_tabmenu > .tab").bind("click focusin", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
// 					$(".content_tabmenu > .tab").bind("click focusout", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
					/* 구명준 끝 */


					/* 150714 추가 - 박종현 */
					var itvChangeLink = setInterval(function() {
						if (m_jsonRewardSummary != null) {
							// 등록된 카드가 없으면 링크 변경
							if (m_jsonRewardSummary.cardInfo.cardNumber == "") {
								if (location.href.indexOf("/my/") > -1) {
									var url = "/my/mycard_none.do";
									
									$('a[data-href="/my/mycard_index.do"]').attr("data-href", url);
									$('a[data-href="/my/mycard.do"]').attr("data-href", url);
									$('a[data-href="/my/mycard_charge.do"]').attr("data-href", url);
									$('a[data-href="/my/mycard_lost.do"]').attr("data-href", url);
								}
							}
								
							// 로그인 상태에 따라 등록 및 조회 페이지 링크 변경
							if (m_jsonRewardSummary.msrMemberYn == "Y") {
								$('a[href="/msr/scard/register_inquiry.do"]').attr("href", "/my/mycard_info_input.do");
							} else {
								$('a[href="/msr/scard/register_inquiry.do"]').attr("href", "/my/reward.do");
							}
							
							clearInterval(itvChangeLink);
						}
					}, 150);
					/* 150714 추가 - 박종현 end */
					$('#goPage').bind('click', function(){
						if (myWindow > 640) {
							location.href="/footer/co_sales/index.do";
						}
					});
					
                    /*kbs Express DT 접근 시 MSR 회원 체크, 비밀번호 체크*/
                    var dtPopHt = $('.dtPop').height() * -0.5;
                    $('.dtPop').css('margin-top',dtPopHt);
                    
                    $('#dtPopCancelBtn, #dtPopCommonCloseBtn, #dtPopCancelBtnMsr, #dtPopCommonCloseBtnMsr, .commonBtn, .commonBtnMsr').click(function(){
                        $('#msrCheckPop').fadeOut();
                        $('#commonPop').fadeOut();
                        $('.dt_pop_up_dimm').fadeOut();
                    });
                    
                    $('#dtClauseCloseBtn').click(function(){
                        $('#privatePop').fadeOut();
                    });
                    
					$('#dtClauseCloseXBtn').click(function(){
						$('#privatePop').fadeOut();
					});
                });
                
                /* 개인컵 리워드 s */
                function fn_rewardTumblerMsrCheck(){
                	fn_hideGnbMenu();
					var url = document.location.pathname;
					fn_showrewardTumblerMsrCheckLayer(url);
                }
                function fn_showrewardTumblerMsrCheckLayer(url){
                	/* 로그인 체크  */
                	$.ajax({
                    	type: 'post',
                    	url : '/edt/edtCheckLogin.do',
                    	data : {},
                    	dataType : 'json',
                    	jsonp : 'callback',
                    	success : function(_response){
                    		
                    		if(_response.result_code != "SUCCESS"){
                    			
                            	if(url.length == 0){
                            		url = location.href;
                            	}  
                            	location.href = "/login/login.do?redirect_url=" + encodeURIComponent(url);
                    			
                    		}else{
                    			//MSR 회원 여부 체크
                    			if (m_jsonRewardSummary == null) {
                    				 $.ajax({
                                     	type: 'post',
                                     	url : '/interface/getMsrRewardSummary.do',
                                     	data : {},
                                     	dataType : 'json',
                                     	jsonp : 'callback',
                                     	async : false,
                                     	success : function(_response){
                                     		if (_response.result_code == "SUCCESS") {
												m_jsonRewardSummary = jQuery.parseJSON(_response.data);
												fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
											}
                                     	}
                                   	});
								}else{
									
									fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
								}
                    		}
                    	}
                    });
                }
                
                function fn_showrewardTumblerMsrCheckPopup(obj){
                	if( obj.msrMemberYn == "Y"){ /*msr 회원일 경우 페이지 이동*/
                		location.href = "/my/reward_tumbler.do";
                    }else{/* msr 비회원일 경우 팝업창 노출 */
                        $('#msrCheckPop_rewardTumbler').fadeIn();
                        $('.dt_pop_up_dimm').fadeIn();
                        $('#msrCheckPop_rewardTumblerContents').show();
                        $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').show();
                        $('#tumblerPopConfirmBtn').on('click', function(){
                        	// msr 비회원일 경우 카드 등록 페이지로 이동
                        	location.href = "/my/mycard_info_input.do";
                        });
                    }
                }
                $('#tumblerPopCommonCloseBtn, #tumblerPopCancelBtn').click(function(){
                    $('#msrCheckPop_rewardTumbler').fadeOut();
                    $('.dt_pop_up_dimm').fadeOut();
                    $('#msrCheckPop_rewardTumblerContents').hide();
                    $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').hide();
                });
                /* 개인컵 리워드 e */
			</script>

			<script src="//image.istarbucks.co.kr/common/js/jquery.transit.min.js"></script>
			<script>
				// 150805 DOM 수정
				$('div.msr_card_zone').bind('click', function(){
					if($('div.mycard_area2').css("display")=="none"){
						$('div.mycard_area1').hide();
						$('div.mycard_area2').fadeIn();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon2.png').attr('alt','결제하기'); // 접근성_20171106 alt 추가
					}else{
						$('div.mycard_area1').fadeIn();
						$('div.mycard_area2').hide();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon1.png').attr('alt', '결제완료');// 접근성_20171106 alt 추가
					}
				});
				// 150805 DOM 수정 end
			
				(function($) {
					$.fn.seqfx = function() {
						var elements = this,
							l = elements.length,
							i = 0;
		
						function execute() {
							var current = $(elements[i]);
							i = (i + 1) % l;
		
							current
								.animate({ rotateY: '360deg' }, 2000)
								.animate({ rotateY: '-360deg' }, 2000, execute);
						}
						execute();
						return this;
					};
				}(jQuery));
				$('.mycard_one').seqfx();
			</script>
						
			<script src='//image.istarbucks.co.kr/common/js/makePCookie.js'></script>

			<script>
				$(document).ready(function () {
					$('a[href*="card_list.do"] , a[href*="drink_list.do"] , a[href*="food_list.do"] , a[href*="product_list.do"]').on("click", function () {
						Cookies.deleteCookie("MENU_TAB");
						Cookies.deleteCookie("MENU_CATE");
						Cookies.deleteCookie("MENU_OPT");
					});
				});
			</script>
		
			<script src="/common/js/main_ani.js?v=200616"></script>
			<script src="/common/js/main_prom.js?v=200826"></script>
			<!--script src="/common/js/main_prom3.js"></script--> <!-- 20170831 삭제 -->
			<script src="/common/js/main_teavana.js?v=20201023"></script>
			<script src="/common/js/jquery.animateSprite.min.js"></script>
			<script src="/common/js/jquery.cycle.all.js"></script>
			<!-- footer end -->
		</div>

		<script>
			// 160902 박종현 추가 - 랜덤 노출 영역 선택
			if ((new Date()).getTime() % 2 == 0) {
				$("#autumn1_img1, .autumn1_bean1_wrap").show();
				$("#autumn1_img2, .autumn1_bean2_wrap").hide();
			} else {
				$("#autumn1_img1, .autumn1_bean1_wrap").hide();
				$("#autumn1_img2, .autumn1_bean2_wrap").show();
			}

			var $roll_max = 5;
			var $roll_type = "STB2701";
			
			$(document).ready(function(){
				
				__ajaxCall("/interface/checkLogin.do", {}, true, "json", "post"
						,function (_response) {
							if (_response.result_code == "SUCCESS") {
								$(".top_msr_wrap").show();
								$(".top_msr_nologin").hide();
								$(".sign_out").show();
								$(".sign_in").hide();
								$(".footer_util_btn .last").hide();	//[150826 추가] 모바일 Join Us 버튼 숨김
								
								// MSR 영역 셋팅
								$.loginLib.getMsrRewardSummary();
								$.loginLib.showInboxNoCnt();
							} else {
								$(".top_msr_wrap").hide();
								$(".top_msr_nologin").show();
							}
						}
						,function (_error) {
						}
					);
				
				/**
	 	 		$('.line_notice_inner_l dd ul').inewsticker({
					speed       : 2500,
					effect      : 'slide',
					dir         : 'ltr',
					font_size   : 13,
					color       : '#fff',
					// font_family : 'arial',
					delay_after : 1000
				}); 
				**/

                var option = {
                        'MENU_CD' : "STB3120"
                };
                __ajaxCall('/banner/getBannerList.do', option , true, "JSON", "POST", 
                function(data) {
                    if(data.list.length > 0) {
                    	
                    	$.each( data.list, function(x, y) {
                            tmpStr = "";
                            tmpTarget = "";

                            if(y.banner_GBN == "I") {
	                            tmpStr += '<li>';
	                            tmpStr += '    <img alt="'+y.alt_MSG+'" src="https://image.istarbucks.co.kr/upload/banner/'+y.img_NM+'">';
	                            if(y.links != "") {
	                                if(y.banner_TARGET == "Y") {
	                                    tmpTarget = "target='_blank'";
	                                }
	                                tmpStr += '    <a href="'+y.links+'" '+tmpTarget+'>자세히 보기</a>';
	                            }
	                            tmpStr += '</li>';
                            }
                            
                            $('.main_prom_bxslider').append(tmpStr);
                    	});
                        
                        /* 150709 수정 -구명준 */
                        var mpSlider = $('.main_prom_bxslider').bxSlider({
                            onSlideAfter:function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
                                $('.active_slide').removeClass('active_slide');
                                $('.main_prom_bxslider > li').eq(currentSlideHtmlObject + 1).addClass('active_slide')
                            },
                            onSliderLoad: function () {
                                $('.main_prom_bxslider > li').eq(1).addClass('active_slide')
                            },
                            infiniteLoop:true,
                            controls:true,
                            auto:true,
                            autoControls:true,
                            autoControlsCombine:true,
                            pause:2000,
                            autoHover:true,
                            pagerSelector: '.main_slider_pagers',
                            autoControlsSelector: '.main_slider_controls'
                        });

                        $(".main_prevBtn a").on("click",function(e){
                            mpSlider.goToPrevSlide();
                            e.preventDefault();
                        });

                        $(".main_nextBtn a").on("click",function(e){
                            mpSlider.goToNextSlide();
                            e.preventDefault();
                        });

                        $('.main_prom_bnr_swiper div.bx-viewport').append('<p class="bnr_swiper_left_mask"></p><p class="bnr_swiper_right_mask"></p>');
                            
                        /* 150709 수정 -구명준  end */


                        $('.line_notice_bgr').click(function(){
                            mpSlider.reloadSlider();
                        });
                    }
                },
                function() {
                });

				$('#reserve_medal').flip({
					axis: 'y',
					reverse: true,
					trigger: 'hover'
				});
				
				   // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩
			      $('#reserve2_medal').flip({
			        axis: 'y',
			        reverse: true,
			        trigger: 'manual'
			      }).bind('mouseenter focusin',function(){
			        $(this).flip(true);
			      }).bind('mouseleave focusout', function () {
			        $(this).flip(false);
			      });
			       // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩 end
				
				/*
				$('.reserve_medal02').bind('click', function() {
					location.href = "/store/store_drive.do";
				});
				*/
				
			});


			/*
			var player;

			function onYouTubePlayerAPIReady() {
				player = new YT.Player('teaseYt', {
					events: {
						'onReady': onPlayerReady
					}
				});
			}

			function onPlayerReady(event){
				$(".bnr_teaching a").click(function() {
					event.target.playVideo();
				});
			}

			var tag = document.createElement('script');
			tag.src = '//www.youtube.com/player_api';
			var firstScriptTag = document.getElementsByTagName('script')[0];
			firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
			*/

			$(document).ready(function () {
				
				//20171227 삭제
				//20171123 추가 : 모바일 메인 퀵메뉴 높이값 제어
				/*$(window).scroll(function(){  
					if($(window).scrollTop() > 150){ //20171207 수정
						$(".layer_nitro2").removeClass('layer_nitro2Position');
					}else{
						$(".layer_nitro2").addClass('layer_nitro2Position');
					}
				});*/
			
				/* 레드컵 유튜브 */
				$('.btn_redcup_teasing a, .m_btn_red_movie a').click(function(){
					$('.redcup_dimm, .redcup_yt_layer').fadeIn();
				});
				$('.redcup_yt_close a').click(function(){
					$('.redcup_dimm, .redcup_yt_layer').fadeOut();
					var yt = $('#ddayYt').attr('src');
					$('#ddayYt').attr('src', '');
					$('#ddayYt').attr('src', yt);
				});
				/* 레드컵 유튜브 end */

				/*김민호 수정*/
				$('#drive_medal').flip({
					axis: 'y',
					reverse: true,
					trigger: 'hover'
				});
				/*김민호 수정*/

				/* valentine ani */
				$('.valentine_layer_close a').bind('click', function(){
					$('.valentine_layer').fadeOut();
				});
				function rotate() {
					$('.ico_bird1').animate({
						'rotate':'-15deg'
					}, 2000).animate({
						'rotate':'0'
					}, 2000, rotate);
				}
				rotate();
				function rotate2() {
					$('.ico_bird2').animate({
						'rotate':'15deg'
					}, 2000).animate({
						'rotate':'0'
					}, 2000, rotate2);
				}
				rotate2();

				setTimeout(function(){
					heart();
				}, 6000);
				
				function heart() {
					if ((myWindow > 960)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else if ((myWindow > 640) && (myWindow <= 960)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else if ((myWindow > 480) && (myWindow <= 640)) {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					} else {
						$('.ico_heart').jsMovie({
							sequence:'##.png',
							from:1,
							to:22,
							folder:'common/img/main/valentine/ico_heart/',
							fps:10,
							height:129,
							width:155,
							playOnLoad:true,
							performStop:false,
							repeat:false
						});
					}
				}
				/* valentine ani end */
				
				
				$("#NoMore").on("click", function () {
					Cookies.setCookie("notTodayColdBrew", "Y", 1);
					$(".layer_coldbrew").fadeOut();
				});
				if (Cookies.getCookie("notTodayColdBrew") != "Y") {
					$(".layer_coldbrew").fadeIn();
				}
				
				/* $(".NoMoreToday_20161021").on("click", function () {
					Cookies.setCookie("notToday20161021", "Y", 1);
					$(".hologram_dimm, .hologram_layer_wrap").fadeOut();
				});
				if (Cookies.getCookie("notToday20161021") != "Y") {
					$(".hologram_dimm, .hologram_layer_wrap").fadeIn();
				}
				$(".hologram_close").on("click", function () {
					$(".hologram_dimm, .hologram_layer_wrap").fadeOut();
				}); */
				
				/* 161020 스크립트 추가 */
				$('input[type=checkbox]').ezMark();
				function lightning(){
					$('.lightning').animate({
						'opacity':'1'
					}, 2000).animate({
						'opacity':'0'
					}, 2000, lightning);
				}
				lightning();

				$('.hologram_close a').click(function(){
					$('.hologram_layer_wrap, .hologram_dimm').fadeOut();
				});
				
				// popup 오늘 하루 보지 않기
				function getCookie(name) {
					var nameOfCookie = name + "=";
					var x = 0;
					while ( x <= document.cookie.length ) {
						var y = (x+nameOfCookie.length);
						if ( document.cookie.substring( x, y ) == nameOfCookie ) {
							if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length;
							return unescape( document.cookie.substring( y, endOfCookie ) );
						}
						x = document.cookie.indexOf( " ", x ) + 1;
						if ( x == 0 ) break;
					}
					return "";
				}
				function setCookie(name, value, expiredays) {
					var todayDate = new Date();
					todayDate.setDate( todayDate.getDate() + expiredays );
					document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
				}

				var ckNameNoPop1Day = "NO_POP_AUTUMN_1_DAY";

				$("#ddayNo").on("click", function () {
					$('.hologram_layer_wrap, .hologram_dimm').fadeOut();
				});
				
				if (getCookie(ckNameNoPop1Day) != "Y") {
					$('.hologram_layer_wrap, .hologram_dimm').fadeIn();
				}
				/* 161020 스크립트 추가 end */
				
				
				
			});
		</script>
		<script src="/common/js/inewsticker.js"></script>
		
    	<script src="/common/js/bbs/main_rolling.js"></script>
    	<script src="/common/js/main/index.js?v=200907"></script>
		
	</body>
</html>