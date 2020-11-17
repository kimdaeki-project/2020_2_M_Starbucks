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
				<p class="ms_user_stat mo_block">
					<span><strong class="userName"><!-- 홍길동 --></strong> 님은</span><br />
					<span>현재 <strong class="en userGrade"><!-- Green Level --></strong>이십니다.</span>
				</p>
			<figure class="en ms_user_starbg"><span class="totalStar"><!-- 3 --></span></figure>
        	 <p class="ms_user_stat_notice"><!-- <strong>27</strong>개의 별이 더 모이면<br><strong class="en t_715d39">Gold Level</strong>만의 특별한 혜택이! --></p>
        	 </article>
        </section>

        <section class="my_ms_card">

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