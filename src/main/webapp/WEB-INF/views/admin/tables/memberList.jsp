<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:forEach items="${noticeList}" var="list">
	<tr>
		<td>${list.r}</td>
		<td id="table-title-size">
			<a href="#">
				이름: ${list.name} 
			</a>
		</td>
		<td id="table-title-size">닉네임: ${list.nickName}</td>
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
