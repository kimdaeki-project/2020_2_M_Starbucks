<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/*오른쪽 nav */
#msRnb{
    position: absolute;
    display: block;
    right: 0;
    top:0;
    width: 220px;
    height: 750px;
   
    margin-bottom: 90px;
    background: white;
    padding:0;
}

.ms_nav > ul {
    height:  100%;
    width: 100%;
    list-style: none;
}

.ms_nav > ul > li {
    line-height: 60px;
    border-bottom: 1px solid rgba(255,255,255,0.1);
}
.ms_nav > ul > li > a {
    position: relative;
    display: block; 
    padding: 20px 30px 20px 15px; 
    font-size: 14px; 
    color: #444; 
    text-decoration: none;
    width: 175px;
    font-weight: 500;
    line-height: 100%;
} 

.ms_nav ul li a:hover {
    text-decoration: underline;
}

.ms_nav > ul > li > ul {
    display:none; 
    position:static; 
    
}

.ms_nav ul .rew_show.show {
    display:block;
}
.ms_nav ul .card_show.show {
    display:block;
}

.ms_nav ul ul li {
    line-height: 1.1rem;
    border-bottom: none;
}

.ms_nav ul ul li a {
    font-size: 13px;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    padding-left: 60px;
    color: rgb(68,68,68);
    text-decoration: none;
    list-style-type: circle;
}

.ms_nav ul li a span i {
    position: absolute;
    top: 50%;
    right: 60px;
    transform: translateY(-50%);
    font-size: 22px;
}
.ms_nav ul li a span i.rotate{
    transform: translateY(-50%) rotate(-180deg);
} 

</style>
</head>
<body>
 <nav class="ms_nav" id="msRnb">
            <ul>
                <li>
                    <a href="#" class="menu_btn">My 리워드
                        <span class="icon"> <i class="xi-angle-down first"></i></span>
                    </a>
                    <ul class="menu_show"> 
                        <li><a href="#">리워드 및 혜택</a></li>
                        <li><a href="${pageContext.request.contextPath}/my/myStarHistory">별 히스토리</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="menu_btn">My 스타벅스 카드
                    <span class="icon"> <i class="xi-angle-down second"></i></span>
                </a>
                    <ul class="menu_show">
                        <li><a href="#">보유 카드</a></li>
                        <li><a href="${pageContext.request.contextPath}/my/cardTopup">카드 충전</a></li>
                        <li><a href="#">분실 신고</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="menu_btn">My 스타벅스 e-Gift Card
                	 <span class="icon"> <i class="xi-angle-down second"></i></span>
                </a>
                    <ul>
                        <li><a href="#" > 선물하기</a></li>
                        <li><a href="#" > 선물 내역</a></li>
                        
                    </ul>
                </li>
                <li> <a href="#" class="menu_btn">My 쿠폰
                	 <span class="icon"> <i class="xi-angle-down second"></i></span>
                </a>
                    <ul>
                        <li><a href="#"> 등록하기</a></li>
                        <li><a href="#"> 선물하기</a></li>
                    </ul>
                </li>
                <li> <a href="#">My 메뉴</a></li>
                <li> <a href="${pageContext.request.contextPath}/my/myStore">My 매장</a></li>
                <li> <a href="${pageContext.request.contextPath}/my/vocList">My 고객의 소리</a></li>
                <li> <a href="#">My DT Pass</a></li>
                <li> <a href="#" class="menu_btn">개인정보관리
                	 <span class="icon"> <i class="xi-angle-down second"></i></span>
                </a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/my/updateMyInfo"> 개인정보확인 및 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/my/myInfoOut" > 회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/my/modifyPW"> 비밀번호 변경</a></li>
                    </ul>
                    
                </li>
                
            </ul>


            </nav>
            <!-- nav bar end -->
            
            <script src="${pageContext.request.contextPath}/resources/js/myPage/sideNav.js"></script>
</body>
</html>