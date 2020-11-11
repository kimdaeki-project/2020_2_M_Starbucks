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
			
			#table-area{
				margin-top: 2em;
				background-color: white;	
			}
			
			.breadcrumb {
			    background-color: #f1f2f4;
			}
			
			.mt-4{
				padding-top: 1.3rem;
				margin-bottom: 1.1rem;
			}
			
			.mb-4{
    			color: #5D5D5D;
    			font-size: 0.83rem;
			}
			
			table{
				text-align: center;
				font-size: 0.9rem;
			}
			
			#table-num-size{
				width: 5rem;
			}
			
			#table-title-size{
				width: 45rem;
				padding-left: 1.5rem;
				text-align: left;
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
						<h1 class="mt-4">직원 공지사항</h1>
						<div class="breadcrumb mb-4">
							스타벅스 전 매장 스태프 및 매니저 공지사항입니다.
						</div>
					</div>
					
					<div class="container-fluid" id="table-area">
					
						<table class="table table-bordered"  width="100%">
							<thead>
								<tr>
									<th id="table-num-size">num</th>
									<th>title</th>
									<th>writer</th>
									<th>date</th>
									<th>hit</th>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${noticeList}" var="list">
									<tr>
										<td>${list.noticeNum}</td>
										<td id="table-title-size">
											<a href="./noticeSelect?noticeNum=${list.noticeNum}">${list.title}</a>
										</td>
										<td>${list.writer}</td>
										<td>${list.regDate}</td>
										<td>${list.hit}</td>
									</tr>
								</c:forEach>
							</tbody>
							
						</table>
						
					</div>
					
				</main>
	
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>		
		
		</div>
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
		
	</body>
	
</html>