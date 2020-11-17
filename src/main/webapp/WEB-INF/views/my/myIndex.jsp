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
				
				<figure class="en ms_user_starbg"><span class="totalStar"><!-- 3 --></span></figure>
        	
		        <div><p class="ms_user_stat_notice"> <strong>27</strong>개의 별이 더 모이면<br><strong class="en t_715d39">Gold Level</strong>만의 특별한 혜택이! </p></div>	 
        	 </article>
        	  <article class="ms_user_info_right">
        	  <p class="ms_user_stat"><span><strong class="userName"><!-- 홍길동 --></strong> 님은</span> <span>현재 <strong class="en userGrade"><!-- Green Level --></strong>이십니다.</span></p>
       			<div class="ms_user_stat_btns">
                    <ul>
						<li><a href="./reward.do">리워드 및 혜택</a></li>
						<li><a href="./reward_star_history.do">별 히스토리</a></li>
						<li class="btn_black"><a href="./myinfo_modify_login.do">개인정보 수정</a></li>
						<li class="btn_gray"><a class="gray" href="./myinfo_modify_pwd.do">비밀번호 변경</a></li>
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
             		<a class="back" href="javascript:void(0);">이전카드 보기</a><!-- 접근성_20171201 수정 -->
             		<a class="forward" href="javascript:void(0);">다음카드 보기</a><!-- 접근성_20171201 수정 -->
              	  </p>
           		  </aside>
           	  <i class="card_list_btn1"><a href="/my/mycard_list.do"><img src="//image.istarbucks.co.kr/common/img/util/card_list_btn1.png" alt="보유카드 상세정보" />
        	 </header>
        	<div class="my_ms_card_cont">
                <ul class="slider">
               </ul>
          
         
                                    </div>
                                </div>
        </section>

        <section class="my_ms_icon">

        </section>
    		
    	</div>
    <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>