<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div>
	<h4 class="modal-title" id="myModalLabel">직원 출퇴근 정보</h4>
	<form id="update-form" action="#">
		<div id="staff-info-area">
			<input type="hidden" title="${staff.num}" id="staff-info-num">
			<input type="hidden" title="${staff.adminNum}" id="staff-info-admin-num">
			<table id="staff-info-table" class="table table-bordered">
				<tr>
					<td id="staff-info-column1">이름</td>
					<td class="info-width" id="staff-name">${staff.name}</td>
					<td id="staff-info-column1">직급</td>
					<td class="info-width" id="staff-type">
						<c:choose>
							<c:when test="${staff.type eq 2}">Staff</c:when>
							<c:when test="${staff.type eq 3}">Manager</c:when>
							<c:when test="${staff.type eq 4}">Admin</c:when>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td id="staff-info-column1">이메일</td>
					<td id="staff-email">${staff.email}</td>
					<td id="staff-info-column1">전화번호</td>
					<td id="staff-phone">${staff.phone}</td>
				</tr>
			</table>
		</div>
		<div id="ttmp">
			<div id="staff-work-time-area">
				<div class="staff-work-info-area" id="staff-info-left">
					<table class="table table-bordered">
						<tr>
							<td id="staff-info-column1">입사일</td>
							<td class="staff-info-row" id="staff-regDate">${staff.regDate}</td>
						</tr>
						<tr>
							<td id="staff-info-column1">근무매장</td>
							<td class="staff-info-row">
								<input type="text" id="work-store-txt" name="storeCode" title="${staff.storeDTO.storeCode}" value="${staff.storeDTO.storeName}" readonly="readonly">
								<span id="store-search">매장 검색</span>
							</td>
						</tr>
					</table>
				</div>
				<div class="staff-work-info-area" id="staff-info-right">
					<table class="table table-bordered">
						<tr>
							<td id="staff-info-column">월</td>
							<td>
								<input class="work-time" type="text" value="${workTime.monStart}" id="monStart">&nbsp;~&nbsp;<input value="${workTime.monEnd}" class="work-time" type="text" id="monEnd">
							</td>
							<td></td>
							<td id="staff-info-column">토</td>
							<td>
								<input class="work-time" type="text" value="${workTime.satStart}" id="satStart">&nbsp;~&nbsp;<input value="${workTime.satEnd}" class="work-time" type="text" id="satEnd">
							</td>
						</tr>
						<tr>
							<td id="staff-info-column">화</td>
							<td>
								<input class="work-time" type="text" value="${workTime.tueStart}" id="tueStart">&nbsp;~&nbsp;<input value="${workTime.tueEnd}" class="work-time" type="text" id="tueEnd">
							</td>
							<td></td>
							<td id="staff-info-column">일</td>
							<td>
								<input class="work-time" type="text" value="${workTime.sunStart}" id="sunStart">&nbsp;~&nbsp;<input value="${workTime.sunEnd}" class="work-time" type="text" id="sunEnd">
							</td>
						</tr>
						<tr>
							<td id="staff-info-column">수</td>
							<td>
								<input class="work-time" type="text" value="${workTime.wedStart}" id="wedStart">&nbsp;~&nbsp;<input value="${workTime.wedEnd}" class="work-time" type="text" id="wedEnd">
							</td>
							<td></td>
							<td id="staff-info-column"></td>
							<td></td>
						</tr>
						<tr>
							<td id="staff-info-column">목</td>
							<td>
								<input class="work-time" type="text" value="${workTime.thuStart}" id="thuStart">&nbsp;~&nbsp;<input value="${workTime.thuEnd}" class="work-time" type="text" id="thuEnd">
							</td>
							<td></td>
							<td id="staff-info-column"></td>
							<td></td>
						</tr>
						<tr>
							<td id="staff-info-column">금</td>
							<td>
								<input class="work-time" type="text" value="${workTime.friStart}" id="friStart">&nbsp;~&nbsp;<input value="${workTime.friEnd}" class="work-time" type="text" id="friEnd">
							</td>
							<td></td>
							<td id="staff-info-column"></td>
							<td></td>
						</tr>
					</table>
				</div>

				<div id="popup-btn-area">
					<span class="popup-btn" id="pop-cancle-btn">취소</span>
					<span class="popup-btn" id="pop-update-btn">수정하기</span>
				</div>
			</div>
		</div>
	</form>
</div>