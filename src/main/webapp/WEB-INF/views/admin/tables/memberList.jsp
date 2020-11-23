<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 팝업창 띄우기 -->
<!-- onclick="window.open('./memberSelect?num=${list.num}','pop up','width: 50,height:20,top:200')" -->
<c:forEach items="${noticeList}" var="list">
	<tr title="${list.num}" onclick="show('${list.name}','${list.type}','${list.storeDTO.storeName}','${list.storeDTO.doro_addr}','${list.staffCount}')" class="staff-list">
		<td>${list.r}</td>
		<td id="table-title-size">
			이름: ${list.name} 
		</td>
		<td id="table-title-size">
			닉네임: ${list.nickName}
		</td>
		<td>
			<c:choose>
				<c:when test="${list.type eq 2}">Staff</c:when>
				<c:when test="${list.type eq 3}">Manager</c:when>
				<c:when test="${list.type eq 4}">Admin</c:when>
			</c:choose>
		</td>
		<td>${list.regDate}</td>
		<td>${list.gender}</td>
	</tr>
</c:forEach>
