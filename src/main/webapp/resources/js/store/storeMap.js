$(document).ready(function() {
	getMap();
});



function init() {
	
}


/* 지도 영역 그리기 */
function getMap() {
	var container = document.getElementById('storeMap');
	var options = {
		center: new kakao.maps.LatLng(37.5601141, 126.982651),	//기본 위도,경도: 스타벅스 본사
		level: 3
	};
	var map = new kakao.maps.Map(container, options);
	
	
	/* 현재 위치 정보 */
	function getLocation() {
		if (navigator.geolocation) {	// GPS를 지원하면
			navigator.geolocation.getCurrentPosition(function(position) {
				var moveLatLon = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude);
				map.setCenter(moveLatLon);	//현재 위치정보를 기준으로 중심좌표 변경
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
	}
	/* 현재 위치 정보 end */
	
	
	
	kakao.maps.event.addListener(map, 'center_changed', function() {

    //지도의  레벨
    var level = map.getLevel();

    // 지도의 중심좌표
    var latlng = map.getCenter(); 
});
}
/* 지도 영역 그리기 end */
