<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 직원 정보 수정</title>
		
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/boardList.css">
		
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
						<h1 class="mt-4">매장 주문 현황</h1>
						<div class="breadcrumb mb-4">
							<span id="login-staff-info">${login.name}</span>님이 근무하시는&nbsp;<span id="login-staff-info">${login.storeDTO.storeName}</span>&nbsp;매장 주문 현황입니다.
						</div>
					</div>
					
				</main>
				
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>
				
		</div>

		<c:import url="../template/javascript.jsp"></c:import>
		
	</body>
	
</html>