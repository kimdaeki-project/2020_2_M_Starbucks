<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 매장 직원현황</title>
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
				padding-top: 1rem;
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
				width: 4rem;
			}
			#table-info-size{
				width: 30rem;
			}
			#table-title-size{
				padding-left: 1.5rem;
				text-align: left;
			}
			
			#table-writer-size{
				width: 10rem;
			}
			
			#table-hit-size{
				width: 8rem;
			}
			
			#table-date-size{
				width: 8rem;
			}

			#page-area{
				text-align: center;
				font-size: 0.9rem;
			}
			
			#page-area-center{
				width: 64rem;
				text-align: center;
			}
			
			#write-area{
				float: right;
			}
			
			#write_btn{
				font-weight: bold;
				font-size: 0.8rem;
				border: 1px solid #E7E7E7;
				border-radius: 5px;
				padding: 0.5rem 0.9rem;
				background-color: white;
			}
			
			#write-btn-area{
				width: 15rem;
			}
			
			#login-staff-info{
				color: #006633;
				font-weight: bold;
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
						<h1 class="mt-4">매장 직원 리스트</h1>
						<div class="breadcrumb mb-4">
							<span id="login-staff-info">${login.name}</span>님이 근무하시는&nbsp;<span id="login-staff-info">${login.storeName}</span>&nbsp;매장 근로자 리스트 입니다. 개인정보 보호를 위해 STAFF의 상세 정보는 제한됩니다.
						</div>
					</div>
					
					<div class="container-fluid" id="table-area">
					
						<table class="table"  width="100%">
							<thead>
								<tr>
									<th id="table-num-size">번호</th>
									<th id="table-info-size" colspan="2">직원 요약 정보</th>
									<th id="table-writer-size" >직급</th>
									<th id="table-date-size">입사일</th>
									<th id="table-hit-size">성별</th>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${noticeList}" var="list">
									<tr>
										<td>${list.r}</td>
										<td id="table-title-size">
											<a href="./memberSelect?num=${list.num}">
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
								
							</tbody>
							
						</table>
						
					</div>
					
					<div class="container-fluid">
						<table width="100%">
							<tr>
								<td></td>
								<td id="page-area-center">
									<div id="page-area">
										<c:if test="${page.beforeChk}">
											<a href="./memberList?curPage=${page.startNum-1}"> ᗏ </a>
										</c:if>
										<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
											<a href="./memberList?curPage=${i}">${i}</a>
											&nbsp;&nbsp;
										</c:forEach>
										<c:if test="${page.nextChk}">
											<a href="./memberList?curPage=${page.lastNum+1}">ᗌ</a>
										</c:if>
									</div>
								</td>
								<td id="write-btn-area"></td>
							</tr>
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