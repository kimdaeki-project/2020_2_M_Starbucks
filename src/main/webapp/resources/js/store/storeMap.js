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
	
	//위치정보를 불러올 수 없는 경우
	//기본 위도, 경도 : 스타벅스 본사
	if(	latitude == null || longitude == null) {
		latitude = 37.5601141;
		longitude = 126.982651;
	}
	
	
	/* 지도 그려주기 */
	var container = document.getElementById('storeMap');
	var options = {
		center: new kakao.maps.LatLng(latitude, longitude),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);	//지도생성 및 객체 리턴
	
	/* 지도 그려주기 End */
	
	
	/* 마커 이미지 변경 */
	var imageSrc = '/sw4/resources/images/store/pin_general.png', 
    	imageSize = new kakao.maps.Size(38, 60); 
    	
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
	    markerPosition = new kakao.maps.LatLng(37.5601141, 126.982651); // 마커가 표시될 위치입니다
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	
	    position: markerPosition, 
	    image: markerImage // 마커이미지 설정 
	});
	
	marker.setMap(map);		// 마커가 지도 위에 표시되도록 설정합니다
	/* 마커 이미지 변경 */
	
	// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div style="padding:5px;">Hello World!</div>';
		
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

