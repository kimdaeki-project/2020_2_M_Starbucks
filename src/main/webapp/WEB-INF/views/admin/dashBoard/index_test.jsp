<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		
		<!-- 스타벅스 색상: #036635 -->
		<meta charset="UTF-8">
		<title>test page</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/totalCSS.jsp"></c:import>
		
		<style type="text/css">
			
		</style>
		
	</head>
	
	<body id="page-top">
	
		<!-- navigation template -->
		<c:import url="../template/navTemplate.jsp"></c:import>
		
		<div id="wrapper">
			<c:import url="../template/barTemplate.jsp"></c:import>
			
			<div id="content-wrapper">
				<div class="container-fluid">
					<h1>main page</h1>
				</div>
			</div>
			
		</div>

		<!-- template option -->
		<c:import url="../template/javascriptTemplate.jsp"></c:import>

	</body>
	
</html>