<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">
	
<title id="titleJoin">Starbucks Coffee Korea</title>

	<link href="./common/css/reset.css" rel="stylesheet">
	
</head>
<body>
	<h1><spring:eval expression="@db['user']"></spring:eval> </h1>
	<c:import url="./common/header.jsp"></c:import>
	<section>
		<div id="container">
		
		</div>
	</section>
	<footer>
	
	</footer>
</body>
</html>
