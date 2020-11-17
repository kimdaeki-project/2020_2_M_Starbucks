<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 임직원 관리 페이지</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
	</head>
	
	<body class="sb-nav-fixed">
		
		<c:import url="../template/navigation.jsp"></c:import>
		
		<div id="layoutSidenav">
		
			<c:import url="../template/sidebar.jsp"></c:import>
			
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid">
						<h1 class="mt-4">Main page</h1>
					</div>
				</main>
				<c:import url="../template/footer.jsp"></c:import>
			</div>
		</div>
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
		
	</body>
	
</html>