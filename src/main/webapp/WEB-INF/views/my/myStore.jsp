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

   <title>My 매장 | Starbucks Coffee Korea</title>

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/commonCSS.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/myStore.css" rel="stylesheet" type="text/css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
   
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
   
   
</head>
<body>
	<!-- Header -->
   <c:import url="../common/header.jsp"></c:import>
   <!-- Header End -->
	
	<!--subtitle-->
      <div class="ms_sb_tit_bg">
        <div class="ms_sub_tit_inner">
            <h4><img alt="My 음료/매장" src="${pageContext.request.contextPath}/resources/images/myPage/my_store.png"></h4>
            <ul class="smap">
                <li><a href="/"><i class="xi-home-o"></i></a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My Starbucks</a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My 매장</a></li>
            </ul>
        </div>
    </div>
    <!--subtitle end -->
    
   <div class="ms_wrap">
   	<!-- side Nav -->
    	<c:import url="./sideNav.jsp"></c:import>
    <div class="ms_cont">
    	
    	
    	<section class="my_store_wrap">
    		<p class="store">
    			<strong>${ar.id}</strong>님은 가장 최근 2020-11-22에 <strong>홍대공항철도역점</strong>에서 <strong>바닐라 더블샷 마끼아또</strong>를 마셨습니다
    		</p>
    	
    	</section>
    	<section class="my_store_info">
    		<div class="storeInfo">
    			<dl class="tabmenu">
    				<dt class="stab01"><h5><a>나만의 매장</a></h5></dt>
    				<dd class="panel" style="display:block;">
    					<div class="bookmark_wrap">
    						<p class="ms_bookmark">나만의 매장을 설정하여 정보와  이벤트를 쉽고 간편하게 받으세요.</p>
    						<p class="btn_bookmark"><a href="#" target="_blank"><img src="https://image.istarbucks.co.kr/common/img/util/reward/dr_btn_shop01.png" alt="나만의매장"></a></p>
    					</div>
    					<form>
    						<fieldset>
    							<legend>매장 조회, 삭제 폼</legend>
    							<table class="myStore_tbl">
    								<colgroup>
    									<col width="52">
    									<col width="56">
    									<col width="104">
    									<col width="141">
    									<col width="200">
    									<col width="145">
    									<col width="132">
    								</colgroup>
    								<thead>
    								<tr>
    									<th scope="col">
    										<div class="ez-checkbox">
    										<input type="checkbox" name="checkAll" id="th_checkAll" title="전체 선택" class="ez-hide" onclick="checkAll();"></div></th>
  										<th scope="col">No</th>
								  		<th scope="col">매장이미지</th>
								  		<th scope="col">매장명</th>
								  		<th scope="col">매장 주소</th>
								  		<th scope="col">매장 연락처</th>
								  		<th scope="col">상세정보</th>
								  	</tr>
								  	</thead>
								  	<tbody>
    							 <c:forEach items="${list}" var="ar" varStatus="vs">
    								<tr>
    									<td>
    										<div class="ez-checkbox">
    										<input type="checkbox" name="checkRow" id="td_checkRow" title="전체 선택" class="ez-hide"></div></td>
									 	<td>${ar.r}</td>
									  	<td>
									  	 <img src="//image.istarbucks.co.kr/${ar.defaultfile}" alt=".">
									  	</td>
									  	<td>${ar.storeName}</td>
									    <td>${ar.addr }</td>
									  	<td>1522-3232</td>
									    <td>매장상세정보</td>
									  	</tr>
									  </c:forEach>
    								</tbody>
    							</table>
    							
    							<div class="btnzone">
    								<ul>
    									<li><a href="#" class="allset">전체선택</a></li>
    									<li><a href="#" class="delset">선택 삭제</a></li>
    								</ul>
    							
    							</div>
    						</fieldset>
    					
    					</form>
    				</dd>
    			</dl>
    		</div>
    	</section>
    </div>
   </div>
   
	
		
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script type="text/javascript">
   /* 체크박스 전체선택, 전체해제 */
   function checkAll(){
         if( $("#th_checkAll").is(':checked') ){
           $("input[name=checkRow]").prop("checked", true);
         }else{
           $("input[name=checkRow]").prop("checked", false);
         }
   }


   출처: https://aramk.tistory.com/21 [깨순이네]
   
   </script>
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</body>
</html>