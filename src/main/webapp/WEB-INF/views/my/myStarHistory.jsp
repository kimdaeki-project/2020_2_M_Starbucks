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

   <title>별 히스토리</title>

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/myStarHistory.css" rel="stylesheet" type="text/css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	
</head>
<body>
	<!-- Header -->
   	<c:import url="../common/header.jsp"></c:import>
   	<!-- Header End -->
   	
	<!--subtitle-->
      <div class="ms_sb_tit_bg">
        <div class="ms_sub_tit_inner">
            <h4><img alt="My 음료/매장" src="${pageContext.request.contextPath}/resources/images/myPage/rshistory_ttl.png"></h4>
            <ul class="smap">
                <li><a href="/"><i class="xi-home-o"></i></a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My Starbucks</a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My 리워드</a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">별 히스토리</a></li>
            </ul>
        </div>
    </div>
    <!--subtitle end -->
	
	<!-- main body part -->
	 <div class="star_contents">
	 	<!-- side nav  -->
	 	<c:import url="./sideNav.jsp"></c:import>
	 	
	<div class="ms_star_wrap">
    	<div class="ms_star_cont">
            <!--starbucks 별 상세 정보-->
            <section class="star_info">
                <ul class="star_info_box">
                    <li class="box1">
                        <p class="t1">사용가능한 별</p>
                        <p class="t2" id="useStar">1개</p>
                    </li>
                    <li class="box2">
                    	<p class="t1">소멸될 별</p>
                    	<span class="star_limit">(1개월 이내)</span>
                    	<p class="t2" id="outStar">0개</p>
                    </li>
                    <li class="box3">
                    	<p class="t1">스타벅스 현대카드 별</p>
                    	<p>0개</p>
                    </li>
                    <li class="box4"></li>
                </ul>
             </section>
            <!--starbucks 별 상세 정보 end-->

            <!--기간 선택-->
            <section class="card_pick_period">
                <div class="pickperiod">
                    <label for="pickperiod">기간별:</label>
                    <input type="radio" id="month" name="month" >
                    <label>1개월</label>
                    <input type="radio" id="month" name="month" >
                    <label>1년</label>
                </div>
                <div class="pickdate">
                <label for="pickdate">일자별:</label>
                <input type="date" id="pickdate" name="pickdate">
                <span>~</span>
                <input type="date" id="pickdate2" name="pickdate2">
            	</div>
            </section>
            <!--기간 선택 end-->
            <p class="card_refer">최대 조회 기간은 5년 입니다</p>
            
            <!--my 별 히스토리 목록-->
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>카드번호</th>
                        <th>적립별</th>
                        <th>구분</th>
                        <th>매장명</th>
                        <th>적립일</th>
                        <th>유효기간</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>dsaf</td>
                        <td>adsf</td>
                        <td>ad</td>
                        <td>df</td>
                        <td>d</td>
                        <td>daf</td>
                    </tr>
                </tbody>
            </table>
            <!--my 별 히스토리 목록 end-->
	 		
            <!--my 별 히스토리 페이징-->
            <div class="tbl_paging">
                1
            </div>
            <!-- 페이징 end-->
        </div>
	 </div>	
	</div>
	
	
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>