<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		
		<style type="text/css">
		
			main{
				background-color: yellow;
				with: 100%;
			}
			
		</style>
		
	</head>
	
	<body class="sb-nav-fixed">
	
		<c:import url="../template/navigation.jsp"></c:import>
		<div id="layoutSidenav">
			
			<!-- template -->
			<c:import url="../template/sidebar.jsp"></c:import>
			
			<div id="layoutSidenav_content">
					
				<main>
					
					<div class="container-fluid">
						<h1 class="mt-4">Staff notice</h1>
					</div>
					<hr>
					
					
					
				</main>
	
			</div>
			
		</div>
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
		
	</body>
	
</html>