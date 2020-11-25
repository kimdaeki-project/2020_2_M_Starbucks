<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div>
	<h4 class="modal-title" id="myModalLabel">매장 선택</h4>
	<div id="store-select-info">
		직원의 근무매장을 수정할 수 있습니다. 해당 권한은 관리자에게만 존재합니다.
	</div>
	<div id="store-search-area">
        <div class="input-group">
        	<div>
	       		<div id="sido-select-area">
					<ul class="navbar-nav ml-auto ml-md-0" id="sido-drop" role="type">
						<a class="nav-link dropdown-toggle" id="sidoDropdown"
							href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span id="select-type" class="sido-type">시/도</span>
						</a>
						<div class="dropdown-menu dropdown-menu-righ">
							<span class="dropdown-item sido" title="" id="">전체</span>
							<span class="dropdown-item sido" title="서울" id="">서울</span>
			                <span class="dropdown-item sido" title="경기" id="">경기</span>
			                <span class="dropdown-item sido" title="광주" id="">광주</span>
			                <span class="dropdown-item sido" title="대구" id="">대구</span>
			                <span class="dropdown-item sido" title="대전" id="">대전</span>
			                <span class="dropdown-item sido" title="부산" id="">부산</span>
			                <span class="dropdown-item sido" title="울산" id="">울산</span>
			                <span class="dropdown-item sido" title="인천" id="">인천</span>
			                <span class="dropdown-item sido" title="강원" id="">강원</span>
			                <span class="dropdown-item sido" title="경남" id="">경남</span>
			                <span class="dropdown-item sido" title="경북" id="">경북</span>
			                <span class="dropdown-item sido" title="전남" id="">전남</span>
			                <span class="dropdown-item sido" title="전북" id="">전북</span>
			                <span class="dropdown-item sido" title="충남" id="">충남</span>
			                <span class="dropdown-item sido" title="충북" id="">충북</span>
			                <span class="dropdown-item sido" title="제주" id="">제주</span>
			                <span class="dropdown-item sido" title="세종" id="">세종</span>
						</div>
					</ul>
				</div>
			</div>
            <input name="search" id="search-store-txt" class="form-control" type="text" placeholder="검색 매장 입력" aria-label="Search" aria-describedby="basic-addon2" />
            <div class="input-group-append">
                <button id="store-search-btn" class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
            </div>
        </div>
		
	</div>
	<div id="store-select-area">
		<div id="store-select-scroll">
			<c:forEach items="${storeList}" var="store">
				<div class="select-store" check="" title="${store.storeCode}" name="${store.storeName}">
					<span id="store-store-sido-name">${store.sidoName}</span>
					<span id="store-store-name">${store.storeName}</span>
				</div>
			</c:forEach>
		</div>
		<div>
			<div id="popup-btn-area">
				<span class="popup-btn store-cancle" id="pop-cancle-btn">취소</span>
				<span class="popup-btn store-choose" id="store-pop-update-btn">선택</span>
			</div>
		</div>
	</div>
</div>