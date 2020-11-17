<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${reply}" var="list">
	<div id="reply-div">
		<span id="replyMember">${list.writer}</span>
		<div id="replyContents">${list.contents}</div>
		<span id="replyDate">${list.regDate}</span>
	</div>
</c:forEach>
    