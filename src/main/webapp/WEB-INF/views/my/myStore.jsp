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
   
   <c:import url="../admin/template/bootstrap.jsp"></c:import>
	<c:import url="../admin/template/commonCSS.jsp"></c:import>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/memberPage.css">
   
   <style type="text/css">
   #store-select-info {
			    background-color: #F6F6F6;
			    color: #5D5D5D;
			    font-size: 1.2rem;
			    padding: 0.5rem;
			}
			.h4, h4 {
			    font-size: 30px;
			}
			.input-group-prepend, .input-group-append {
			   display: flex;
			}
			#store-select-scroll {
			    width: 100%;
			    height: 240px;
			    overflow: auto;
			    padding-right: 0.2rem;
			}
			.popup-btn {
			    font-size: 1.4rem;
			    cursor: pointer;
			    padding: 0.5rem 1.2rem;
			    border: 1px solid red;
			    border-radius: 3px;
			    text-align: center;
			}
			.select-store{
				font-size: 1.6rem;
			}
			#select-type {
			    font-size: 1.5rem;
			    margin-right: 2.5rem;
			}
			#search-store-txt {
			    width: 82%;
			}
			#store-search-area{
				border: none;
			}
			.input-group-prepend, .input-group-append {
			    display: inline;
			    /* display: flex; */
			}
			#select-type {
			    margin-right: 0.5rem;
			}
			#sidoDropdown {
			    width: 7rem;
			}
			
		</style>	
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
    										<input type="checkbox" name="myStore_ck" id="ck2All" title="전체 선택" class="ez-hide"></div></th>
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
    										<input type="checkbox" name="myStore_ck" id="ck2All" title="전체 선택" class="ez-hide"></div></td>
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
    								<span id="findStore">검색</span>
    							</div>
    						</fieldset>
    					
    					</form>
    				</dd>
    			</dl>
    		</div>
    	</section>
    </div>
   </div>
   
	<div id="store-info-area" style="display:none" role="dialog" class="modal">
   </div>
		
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <c:import url="../admin/template/javascript.jsp"></c:import>
   <script src="/sw4/resources/admin/js/jquery-ui.min.js"></script>
   <script type="text/javascript">
   var sidoTxt = "";
	var storeSearchTxt = "";
	
/* 			var noWidth = window.screen.width;
	var noHeight = window.screen.height; */
	
	var beforeChk=0;
	var storeChk=0;
	var countChk=0;

	$("#findStore").click(function(){
		getDialogStore(sidoTxt, storeSearchTxt);	
	});
	
	// 종료: get store list function 분리 -----------------------------------
	// function 으로 분리 -------------------------------
	function getDialogStore(sidoTxt, storeSearchTxt){
		
/* 				x = noWidth/3.1; 
		y = noHeight/5; */
		
		getStoreList(sidoTxt,storeSearchTxt);
						
		beforeChk=0;
		storeChk=0;
		countChk=0;
										
		$("#store-info-area").dialog({
			modal:true,
			width:'50%',
			height:'500',
			resizable:false,
			open:function(){
				/* $(this).parent().offset ({top: y,left: x } ); */
			}
		});
	}
	// 종료: function 분리 --------------------------------------------------
	
	function getStoreSearch(sidoTxt){
		storeSearchTxt = $("#search-store-txt").val();
		getSidoList(sidoTxt, storeSearchTxt);
	}
	
	function getSidoList(sidoTxt, search){
		getStoreList(sidoTxt,search);
	}
	
	// function 분리하기 ---------------------------
	function getStoreList(sidoTxt, search){
		$.ajax({
			url:"../admin/store/storeList",
			type:"GET",
			data:{
				sidoName:sidoTxt,
				search:search
			},
			success: function(data){
				
				$("#store-info-area").empty();
				$("#store-info-area").append(data);
				$("#search-store-txt").val(search);
				
				$(".sido").click(function(){
					sidoTxt = $(this).attr("title");
					getSidoList(sidoTxt,search);
				})
				
				var showSido;
				if(sidoTxt == ''){
					showSido = '전체';
				} else {
					showSido = sidoTxt;
				}
				
				$(".sido-type").text(showSido);
				$(".select-store").click(function(){
					
					storeChk = $(this).index();
					
					if(countChk > 0){
						$(".select-store:eq("+beforeChk+")").css('background-color','white');
						$(".select-store:eq("+beforeChk+")").css('border','none');
						beforeChk = storeChk;
					} else {
						beforeChk = $(this).index();
					}
					
					$(this).attr("check", "Y");
					$(this).css("background-color","#F6F6F6");
					$(this).css("border","1px solid #006633");
					
					staffStoreCode = $(this).attr("title");
					staffStoreName = $(this).attr("name");
						
					countChk++;
	
				})
				
				$("#store-search-btn").click(function(){
					getStoreSearch(sidoTxt);
					/* storeSearchTxt = $("#search-store-txt").val();
					getSidoList(sidoTxt, search) */
				})
				
				$("#search-store-txt").keydown(function(key){
					if(key.keyCode == 13){
						getStoreSearch(sidoTxt);
						/* storeSearchTxt = $("#search-store-txt").val();
						getSidoList(sidoTxt, search) */
					}
				});
				
				$(".store-choose").click(function(){
					$("#work-store-txt").val(staffStoreName);
					$("#work-store-txt").attr("title",staffStoreCode);
					$("#pop-update-btn").text("수정");
					$(".work-time").attr("readonly",false);
					$("#pop-update-btn").attr("title","수정");
					$("#store-info-area").dialog('close');
				});
				
				$(".store-cancle").click(function(){
					$("#store-info-area").dialog('close');
				});
				
			}
		});
		
	}
   </script>
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</body>
</html>