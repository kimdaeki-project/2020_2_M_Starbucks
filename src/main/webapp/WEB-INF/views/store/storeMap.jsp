<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">	

	<title>Starbucks Coffee Korea</title>

	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/store/storeMap.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	
</head>
<body>
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->

	
	<!-- container -->
	<!-- 스토어 맵 -->
	<div class="store_height_wrap">
		<form method="post">
			<fieldset>
				<legend></legend>
				<div class="store_map_layer">
					<section class="find_store_wrap">
						<header class="find_store_header">
							<h2 class="btn_find_store">
								<a href="javascript:void(0);">매장찾기</a>
							</h2>
						</header>
						<article class="find_store_cont">
							<header class="find_store_cont_header">
								<p class="btn_opt_chk">
									<a href="javascript:void(0);">옵션 선택</a>
								</p>
								<span class="map_layer_toggle"><a
									href="javascript:void(0);">열기</a></span>
							</header>
							<article class="store_map_layer_cont">
								<header class="quick_search">
									<h3 class="on">
										<a href="javascript:void(0);">퀵 검색</a>
									</h3>
								</header>
								<article>
									<div class="quick_search_input">
										<div class="quick_search_inner">
											<input placeholder="매장명 또는 주소" title="퀵 검색" type="text"
												name="quickSearchText" id="quickSearchText"> <a
												href="javascript:void(0);" class="quickSearchBtn">검색</a>
										</div>
									</div>
									<div class="result_num_wrap myStoreInfo">
										<!-- 검색결과 없는 경우 -->
										<!--strong>검색 결과</strong>(<span class="en t_006633">0</span>개)-->
										<!-- 검색결과 있는 경우 -->
										<strong class="quickSearchResultCtn"></strong> (검색 결과 <span
											class="en t_006633 resultCtnNumberTab1">0</span>개)<br> <span
											class="store_pop_info"><img alt=""
											src="/common/img//store/icon_fav_off.png"> 클릭하여 나만의 매장을
											등록하세요.</span>
									</div>
									<div class="result_list_wrap">
										<!-- 검색결과 없는 경우 -->
										<!--p class="no_result">검색 결과가 없습니다.</p-->
										<!-- 검색결과 있는 경우 -->
										<div class="result_list scrollbar-inner quickScrollWrap">
											<ul class="quickSearchResultBox">
											</ul>
										</div>
									</div>
								</article>
								<header class="loca_search">
									<h3>
										<a href="javascript:void(0);">지역 검색</a>
									</h3>
								</header>
								<article>
									<div class="loca_step1">
										<div class="loca_step1_ttl">STEP 1 : 시/도를 선택해 주세요.</div>
										<div class="loca_step1_cont">
											<ul class="sido_arae_box">
											</ul>
										</div>
									</div>
									<div class="loca_step2">
										<div class="loca_step2_ttl">STEP 2 : 구/군을 선택해 주세요.</div>
										<div class="result_num_wrap3">
											<a class="btn_prev" href="javascript:void(0);">앞으로</a><strong
												class="sidoSelectName">서울</strong>
										</div>
										<div class="loca_step2_cont">
											<div class="loca_step2_frame scrollbar-inner">
												<ul class="gugun_arae_box">
												</ul>
											</div>
										</div>
									</div>
									<div class="loca_step3">
										<div class="result_num_wrap">
											<!-- 검색결과 없는 경우 -->
											<!--strong>검색 결과</strong>(<span class="en t_006633">0</span>개)-->
											<!-- 검색결과 있는 경우 -->
											<strong class="gugunSelectName"></strong> (검색 결과 <span
												class="en t_006633 sidoSetResult">0</span>개)
										</div>
										<div class="result_list_wrap">
											<!-- 검색결과 없는 경우 -->
											<!--p class="no_result">검색 결과가 없습니다.</p-->
											<!-- 검색결과 있는 경우 -->
											<div class="result_list scrollbar-inner">
												<ul class="quickSearchResultBoxSidoGugun">
												</ul>
											</div>
										</div>
									</div>
								</article>
								<header class="my_store">
									<h3>
										<a href="javascript:void(0);">My 매장</a>
									</h3>
								</header>
								<article>
									<!-- 로그인 전 -->

									<div class="before_login">
										<p class="login_guide">
											로그인을 하시면<br>My 매장의 특화된 정보를 받으실 수 있습니다.
										</p>
										<a href="javascript:$.loginLib.showLayerLogin();">로그인하기</a>
									</div>

									<!-- 로그인 전 end -->
									<!-- 로그인 후 -->


								</article>
							</article>
						</article>
						<header class="find_road_header">
							<h2 class="btn_find_road">
								<a href="javascript:void(0);">길찾기</a>
							</h2>
						</header>
						<article class="find_road_cont">
							<header class="find_road_cont_header">
								<p class="btn_daum_map">
									<a href="javascript:void(0);" class="daumGoBtn" target="_blank">카카오맵</a>
								</p>
								<span class="road_layer_toggle"><a
									href="javascript:void(0);" class="daumFindParentToggle">열기</a></span>
							</header>
							<article class="road_map_layer_cont">

								<!-- 모바일 검색 들어갔을때 -->
								<div class="after_search_input afterMobileSearchWrap"
									style="display: none">
									<ul class="btn_after_search">
										<li class="btn_after_search1 iv_sub_target" pId="car"><a
											class="on" href="javascript:void(0);"> <span class="a11y">자동차</span></a>
										</li>
										<li class="btn_after_search2 iv_sub_target" pId="trasfer">
											<a href="javascript:void(0);"><span class="a11y">대중교통</span></a>
										</li>
										<li class="btn_after_search3 iv_sub_target" pId="walk">
											<a href="javascript:void(0);"> <span class="a11y">도보</span></a>
										</li>
									</ul>
									<div class="after_search_input1">
										<input id="initStartTxt" type="text" class="initViewerClass"
											readonly title="길찾기 출발지" />
										<p class="initViewerClass"></p>
									</div>
									<div class="after_search_input2">
										<input id="initEndTxt" type="text" readonly title="길찾기 도착지" />
										<p class="initViewerClass"></p>
									</div>
								</div>
								<!-- 모바일 검색 들어갔을때 end -->


								<div class="road_map_layer_inner">
									<div class="start_desti_input">
										<dl>
											<dt>
												<label for="start">출발</label>
											</dt>
											<dd>
												<span class="btn_my_loca"><a
													href="javascript:void(0);" class="road_find_current">현재위치</a></span>
												<div class="road_map_input_wrap rmiw1">
													<input id="start" placeholder="출발지 입력" type="text">
													<p>
														<a href="javascript:void(0);" id="start1">검색</a>
													</p>
												</div>
												<div class="natural_lang_result_layer">
													<ul>
														<li><a href="javascript:void(0);"><span>시청</span></a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 1호선</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 2호선</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>자미디어센터</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 맛집</a></li>
													</ul>
												</div>

											</dd>
										</dl>
										<dl>
											<dt>
												<label for="destination">도착</label>
											</dt>
											<dd>
												<div class="road_map_input_wrap rmiw2">
													<input id="destination" placeholder="매장명 또는 주소" type="text">
													<p>
														<a href="javascript:void(0);" id="destination1">검색</a>
													</p>
												</div>

												<div class="natural_lang_result_layer">
													<ul>
														<li><a href="javascript:void(0);"><span>시청</span></a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 1호선</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 2호선</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>자미디어센터</a></li>
														<li><a href="javascript:void(0);"><span>시청</span>역 맛집</a></li>
													</ul>
												</div>
											</dd>
										</dl>
									</div>
									<section class="transfer_method_wrap">
										<header class="transfer_method_tab1">
											<h3>
												<a class="road_find_btn roadFindStartBtn" data-target="car" href="javascript:void(0);">자동차</a>
											</h3>
										</header>
										<article class="transfer_method_cont1">

											<span class="store_pop_info2 carFindRoad" style="display: none">
											<img alt="" src="/common/img/store/icon_fav_off.png"> 클릭하여 나만의 매장을 등록하세요.</span>
											<div class="desti_top_wrap carFindRoad" style="display: none">
												<strong class="desti_top_ttl car_find_endName">스타벅스 영풍문고점</strong>
												<img alt="" src="/common/img/store/icon_fav_off.png" class="roadFav setStoreFavBtn" data-store="0" data-yn="N" data-name="">
												<p class="desti_top_dist">
													<span class="car_find_min"></span>&nbsp;&nbsp;
													<strong class="car_find_lengtn"></strong>
													km
												</p>
											</div>

											<div class="desti_top_wrap carFindRoadErr"
												style="display: none">
												<p class="icon_exclam">
													직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.
												</p>
											</div>


											<dl class="bg_start_desti carFindRoad" style="display: none">
												<dt>출발</dt>
												<dd>
													<p class="car_find_startName"></p>
												</dd>
											</dl>
											<ul class="road_found_list">

											</ul>
											<dl class="bg_start_desti carFindRoad" style="display: none">
												<dt>도착</dt>
												<dd>
													<p class="car_find_endName"></p>
												</dd>
											</dl>
										</article>
										<header class="transfer_method_tab2">
											<h3>
												<a class="road_find_btn roadFindStartBtn" data-target="transport" href="javascript:void(0);">대중교통</a>
											</h3>
										</header>
										<article class="transfer_method_cont2" style="display: none">
											<span class="store_pop_info2 carFindRoad" style="display: none">
												<img alt="" src="/common/img/store/icon_fav_off.png" class="roadFav">
												클릭하여 나만의 매장을 등록하세요.
											</span>

											<div class="desti_top_wrap 	carFindRoad"
												style="display: none">
												<strong class="desti_top_ttl car_find_endName">스타벅스
													영풍문고점</strong> <img alt="" src="/common/img/store/icon_fav_off.png"
													class="roadFav setStoreFavBtn" data-store="0" data-yn="N"
													data-name="">
												<p class="desti_top_dist trafficViewInfo">전체:00 | 버스:00
													| 지하철:00 | 버스+지하철:00</p>
												<!--p class="desti_top_dist"><strong>8</strong>분&nbsp;&nbsp;<strong>1.7</strong>km</p-->
											</div>

											<div class="desti_top_wrap carFindRoadErr"
												style="display: none">
												<p class="icon_exclam">
													직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.
												</p>
											</div>

											<div class="trafficSummery"></div>



										</article>


										<header class="transfer_method_tab3">
											<h3>
												<a class="road_find_btn roadFindStartBtn" data-target="foot"
													href="javascript:void(0);">도보</a>
											</h3>
										</header>
										<article class="transfer_method_cont3" style="display: none">
											<span class="store_pop_info2 carFindRoad"
												style="display: none"><img alt=""
												src="/common/img/store/icon_fav_off.png"> 클릭하여 나만의 매장을 등록하세요.</span>
											<div class="desti_top_wrap carFindRoad" style="display: none">
												<strong class="desti_top_ttl foot_find_endName">스타벅스
													영풍문고점</strong> <img alt="" src="/common/img/store/icon_fav_off.png"
													class="roadFav setStoreFavBtn" data-store="0" data-yn="N"
													data-name="">
												<p class="desti_top_dist">
													<span class="foot_find_min"></span>&nbsp;&nbsp;<strong
														class="foot_find_lengtn"></strong>km
												</p>
											</div>
											<div class="desti_top_wrap carFindRoadErr"
												style="display: none">
												<p class="icon_exclam">
													직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.
												</p>
											</div>

											<dl class="bg_start_desti carFindRoad" style="display: none">
												<dt>출발</dt>
												<dd>
													<p class="foot_find_startName"></p>
												</dd>
											</dl>
											<ul class="road_found_list">

											</ul>
											<dl class="bg_start_desti carFindRoad" style="display: none">
												<dt>도착</dt>
												<dd>
													<p class="foot_find_endName"></p>
												</dd>
											</dl>
										</article>
									</section>
								</div>
							</article>
						</article>
					</section>
					<!-- 길찾기 수정 - 160422 end -->


				</div>
			</fieldset>
		</form>
	</div>

	<!-- storeMap Wrap -->
		<section class="store_map_wrap" id="storeMap">
			
		</section>
	
	<form name="promotionListForm" method="post">
		<input type="hidden" name="pro_seq" /> <input type="hidden" id="menu_cd" name="menu_cd" />
	</form>

	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb0ff91f0ad80f843c34f48e32746703&libraries=services,clusterer,drawing"></script>	
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/store/storeMap.js?v=2"></script> --%>	
	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>


<script type="text/javascript">
	$(document).ready(function() {
		init();
	});

	/* 지도 영역 그리기 */
	function init() {
		/* 현재 위치 정보 */
		var latitude = null;
		var longitude = null;
		if (navigator.geolocation) {	// GPS를 지원하면
			navigator.geolocation.getCurrentPosition(function(position) {
				latitude = position.coords.latitude;
				longitude = position.coords.longitude;
				//var moveLatLon = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude);
				//map.setCenter(moveLatLon);	//현재 위치정보를 기준으로 중심좌표 변경
			}, function(error) {
				console.error(error);
			}, {
				enableHighAccuracy: false,
				maximumAge: 0,
				timeout: Infinity
			});
		} else {
			alert('GPS를 지원하지 않습니다');
		}
		/* 현재 위치 정보 end */
		
		//위치정보를 불러올 수 없는 경우  >> 기본 위도, 경도 : 스타벅스 본사
		if(	latitude == null || longitude == null) {
			latitude = 37.5601141;
			longitude = 126.982651;
		}
		
		var container = document.getElementById('storeMap');
		var options = {
			center: new kakao.maps.LatLng(latitude, longitude),
			level: 3
		};
		var map = new kakao.maps.Map(container, options);	//지도생성 및 객체 리턴
		
		/* $.ajax
		var storeList = "${storeList}";
		var size = ${storeList.size()};
		
		var positions = [];
		for(var i=0; i<size; i++) {
			var storeName = "";
			console.log(storeName);
			if(i > 10) break;
		} */
		
		
		var imageSrc = '/sw4/resources/images/store/pin_general.png', 
	    	imageSize = new kakao.maps.Size(38, 60); 
	    	
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		var markerPosition = new kakao.maps.LatLng(37.5601141, 126.982651); // 마커가 표시될 위치입니다
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition, 
		    image: markerImage // 마커이미지 설정 
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		
		// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="font-size:12px; padding:5px;">Hello World!</div>';
			
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});
		
		// 마커에 마우스오버 이벤트를 등록합니다
		// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		kakao.maps.event.addListener(marker, 'mouseover', function() { infowindow.open(map, marker); });
		
		// 마커에 마우스아웃 이벤트를 등록합니다
		// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		kakao.maps.event.addListener(marker, 'mouseout', function() { infowindow.close(); });
		
		
	}
	/* 지도 영역 그리기 end */

	/* 중심좌표 변경 */
	function setCenter() {            
	    // 이동할 위도 경도 위치를 생성합니다 
	    var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);	    
	    // 지도 중심을 이동 시킵니다
	    map.setCenter(moveLatLon);
	}
	/* End 중심좌표 변경 */
	
	
	</script>
</body>
</html>