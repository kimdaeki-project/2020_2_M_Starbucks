<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <meta name="format-detection" content="telphone=no">   

   <title>My Starbucks</title>

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link href="${pageContext.request.contextPath}/resources/css/myPage/myIndex.css" rel="stylesheet" type="text/css">

	<!-- swiper -->
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<!-- icon bar -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
 <!-- Header -->
   <c:import url="../common/header.jsp"></c:import>
   <!-- Header End -->

	 <!--subtitle-->
      <div class="ms_sb_tit_bg">
        <div class="ms_sub_tit_inner">
            <h4><img alt="My 음료/매장" src="${pageContext.request.contextPath}/resources/images/myPage/ms_ttl.png"></h4>
            <ul class="smap">
                <li><a href="/"><i class="xi-home-o"></i></a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My Starbucks</a></li>
            </ul>
        </div>
    </div>
    <!--subtitle end -->
    
     <!--body 내부의 section-->
    	<div id="container">
    		 <c:import url="./sideNav.jsp"></c:import>
    		 
    	<section class="ms_user_info">
			<article class="ms_user_info_left">
				<h5><span class="en">My</span> 리워드</h5>
				
				<figure class="en ms_user_starbg"><span class="totalStar">${star.useStar}</span></figure>
        	
		        <div><p class="ms_user_stat_notice"> <strong>${num}</strong>개의 별이 더 모이면<br><strong class="en t_715d39">Gold Level</strong>만의 특별한 혜택이! </p></div>	 
        	 </article>
        	  <article class="ms_user_info_right">
        	  <p class="ms_user_stat"><span><strong class="userName">${star.nickName}<!-- 홍길동 --></strong> 님은</span> <span>현재 <strong class="en userGrade">${grade}<!-- Green Level --></strong>이십니다.</span></p>
       			<div class="ms_user_stat_btns">
                    <ul>
						<li><a href="https://www.starbucks.co.kr/msr/msreward/about.do">리워드 및 혜택</a></li>
						<li><a href="./myStarHistory">별 히스토리</a></li>
						<li class="btn_black"><a href="./updateMyInfo">개인정보 수정</a></li>
						<li class="btn_gray"><a class="gray" href="./modifyPW">비밀번호 변경</a></li>
                   </ul>
                  </div>
              </article>
        </section>

        <section class="my_ms_card">
			<div class="my_ms_card_inner">
				<header>
					<h5><span class="en">My</span> 스타벅스 카드</h5>
					<p class="recent_card">총 보유카드 : 0장</p>
					<aside>
			 		 <span><strong class="curSlideNo">1</strong>/<span class="totalCnt">5</span></span>
       				<p>
             		<a class="back" href="#">이전카드 보기</a><!-- 접근성_20171201 수정 -->
             		<a class="forward" href="#">다음카드 보기</a><!-- 접근성_20171201 수정 -->
              	  </p>
           		  </aside>
           	
        	 	</header>
        		
        		<div class="my_ms_card_cont">
                <!-- Slider main container -->
					<div class="swiper-container">
					    <!-- Additional required wrapper -->
					    <div class="swiper-wrapper">
					        <!-- Slides -->
					        <div class="swiper-slide">
					        	<figure>
					        		<img alt="#" src="${star.menuimage}">
					        	</figure>
					        	<div class="my_card_info">
					        		<p class="my_card_id"> 
					        			<span>${star.korName}</span></p>
					        		<p class="my_card_price">
					        			<span> <strong> ${star.balance} </strong>원</span></p>
					       		 
					       		 	<div class="my_card_btns">
						        	<p class="my_card_btn1"><a>카드 관리</a></p>
						        	<p class="my_card_btn2"><a>충전 하기</a></p>
						        </div>
					       		 </div>
						        
					        	
					        </div>
					        <div class="swiper-slide">Slide 2</div>
					        <div class="swiper-slide">Slide 3</div>
					        ...
					    </div>
					    <!-- If we need pagination -->
					    <div class="swiper-pagination"></div>
					
					    <!-- If we need navigation buttons -->
					    <div class="swiper-button-prev"></div>
					    <div class="swiper-button-next"></div>
					
					    <!-- If we need scrollbar -->
					    <div class="swiper-scrollbar"></div>
					</div>
          
         
           		 </div>
           </div>
        </section>

        <section class="my_ms_icon">
			<div class="icon-bar">
			  <a class="active" href="#"><span class="icon inboxNoCnt inbox"><strong>N</strong></span><span class="txt">인박스</span></a>
			  <a href="#"><span class="icon calendar"></span><span class="txt">캘린더</span></a>
			  <a href="#"><span class="icon coupon"><strong>N</strong></span><span class="txt">e-쿠폰</span></a>
			  <a href="#"><span class="icon charge"></span><span class="txt">카드충전</span></a>
			  <a href="#"><span class="icon regicard"></span><span class="txt">카드등록</span></a>
			</div>
        </section>
    		
    	</div>
    <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   	<script type="text/javascript">
   	var mySwiper = new Swiper('.swiper-container', {
			  // Optional parameters
			  
			
			  // If we need pagination
			  pagination: {
			    el: '.swiper-pagination',
			  },
			
			  // Navigation arrows
			  navigation: {
			    nextEl: '.swiper-button-next',
			    prevEl: '.swiper-button-prev',
			  },
			
			  // And if we need scrollbar
			  scrollbar: {
			    el: '.swiper-scrollbar',
			  },
			})
   
   	</script>
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js"></script>
</body>
</html>