<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>공지글 :: ${notice.title}</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		
		<style type="text/css">

			textarea{
				width: 100%; height: 3rem;
				resize: none;
			}
			
			/* 이미지 크기 벗어남 조절 */
			img{
				width: 100%;
			}

			.url-copy{
				cursor: pointer;
			}

			#notice_contents{
				margin: 25px 2rem 0px;
				border: 1px solid #EAEAEA;
				padding-bottom: 1.3rem;
			}
			
			.info_css{
				font-size: 14px;
				display: inline-block;
				position: relative;
			}
			
			#writer{
				font-size: 14px;
				font-weight: bold;
			}
			
			#select_info{
				font-size: 11px;
				color: #8C8C8C;
			}
			
			#add_info{
				padding-top: 1rem;
				float: right;
			}
			
			#contents{
				padding: 2rem 0px;
				margin-bottom: 1.3rem;
			}
			
			#reply > span{
				font-size: 1.1rem;
				font-weight: bold;
			}
			
			#reply_area{
				margin-top: 0.3rem;
				border: 2px solid #EAEAEA;
				border-radius: 5px;
			}
			
			#reply_area > div{
				padding: 0.7rem 0.8rem;
			}
			
			#reply_area > div > span{
				color: #212121;
				font-size: 0.8rem;
				font-weight: bold;
				display: block;
				margin-bottom: 0.3rem;
			}
			
			#reply_text{
				width: 100%; height: 3rem;
				color: #212121;
				font-size: 0.8rem;;
				border: none;
				margin-bottom: 0.5rem;
				display: block;
			}
			
			textarea::placeholder{
				font-size: 0.8rem;
				color: #D5D5D5;
			}
			
			#reply_submit > a {
				float: right;
				color: #D8D8D8;
				font-weight: bold;
				font-size: 0.8rem;
			}
			
			.btn-area{
				font-weight:bold;
				font-size: 0.8rem;
				border-radius: 6px;
				padding: 0.7rem 0.8rem;
				background-color: #E7E7E7;
			}

			#btn_area{
				margin: 1rem 2rem 0px;
			}
			
			.left-btn{
				float: left;
				margin-right: 0.5rem;
			}

			#list-btn{
				float: right;
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
					
					<div id="notice_contents">
					
						<div class="container-fluid">
							<h2 class="mt-4">${notice.title}</h2>
							<!-- class="breadcrumb mb-4" -->
							<div id="notice_info">
								<div class="info_css">
									<div id="writer">${notice.writer}</div>
									<div id="select_info">
										${notice.regDate}
										조회 ${notice.hit}
									</div>
								</div>
								<div class="info_css" id="add_info">
									<span class="url-copy">URL 복사</span>
								</div>
							</div>
							<hr>
						</div>
						
						<div class="container-fluid" id="table-area">
							<div id="contents">
								${notice.contents}
							</div>
							<hr>
						</div>
						
						<div class="container-fluid" id="reply">
							<span>댓글</span>
							<div id="reply_area">
								<div>
									<span id="login_member">login member id</span>
									<!-- 
									<input type="text" id="reply_text" placeholder="댓글을 입력하세요." name="reply">
									 -->
									<textarea id="reply_text" placeholder="댓글을 입력하세요." name="reply"></textarea>
									<span id="reply_submit">
										<span>&nbsp;&nbsp;</span>
										<a href="#">등록</a>
									</span>
								</div>
							</div>
						</div>
						
					</div>
					
					<div id="btn_area">
						<div class="left-btn">
							<a href="./noticeUpdate?noticeNum=${notice.noticeNum}"><span class="btn-area">글 수정</span></a>
						</div>
						<div class="left-btn">
							<a href="./noticeDelete?noticeNum=${notice.noticeNum}"><span class="btn-area">삭제</span></a>
						</div>
						<div id="list-btn">
							<a href="./noticeList"><span class="btn-area">목록</span></a>
						</div>
					</div>
					
				</main>
	
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>		
		
		</div>
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
				
		<script type="text/javascript">

			// URL 복사
			$(".url-copy").click(function(){
				
				var tmp = document.createElement("textarea");
				document.body.appendChild(tmp);
				
				tmp.value = location.href;
				tmp.select();
				
				document.execCommand("copy");
				document.body.removeChild(tmp);
				
				alert("copied");
				
			})
		
		</script>

	</body>
	
</html>