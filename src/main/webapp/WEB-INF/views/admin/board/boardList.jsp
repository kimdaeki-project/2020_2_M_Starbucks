<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>직원 공지사항</title>
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
			
			#table-title-size{
				width: 43rem;
				padding-left: 1.5rem;
				text-align: left;
			}
			
			#table-writer-size{
				width: 6rem;
			}
			
			#table-hit-size{
				width: 4rem;
			}
			
			#table-date-size{
				width: 10rem;
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
				display: inline-block;
			}
			
			#write_btn{
				font-weight: bold;
				font-size: 0.8rem;
				border: 1px solid #E7E7E7;
				border-radius: 5px;
				padding: 0.5rem 0.9rem;
				background-color: white;
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
									<th id="table-num-size">글번호</th>
									<th>제목</th>
									<th id="table-writer-size">작성자</th>
									<th id="table-date-size">작성일</th>
									<th id="table-hit-size">조회수</th>
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
					
					<div class="container-fluid">
						<table width="100%">
							<tr>
								<td></td>
								<td id="page-area-center">
									<div id="page-area">
										<c:if test="${page.beforeChk}">
											<a href="./noticeList?curPage=${page.startNum-1}"> ᗏ </a>
										</c:if>
										<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
											<a href="./noticeList?curPage=${i}">${i}</a>
											&nbsp;&nbsp;
										</c:forEach>
										<c:if test="${page.nextChk}">
											<a href="./noticeList?curPage=${page.lastNum+1}">ᗌ</a>
										</c:if>
									</div>
								</td>
								<td>
									<div id="write-area">
										<a href="./noticeWrite"><span id="write_btn">글쓰기</span></a>
									</div>
								</td>
							</tr>
						</table>
					</div>
					
				</main>
	
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>		
		
		</div>		
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
		
		<script type="text/javascript">
		
			var path = location.pathname;
			var startIdx = path.indexOf("/",1);
			var endIdx = path.indexOf("/",startIdx+1);
			
			var tmpPath = path.substring(startIdx, endIdx);
			path = "." + tmpPath + "Search";
			
			$("#search-btn").click(function(){
				$.ajax({
					url:path,
					type:"GET",
					data:{
						
					}
				})
			})
		
		</script>

	</body>
	
</html>