<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>공지사항 작성</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		
		<!-- 위지위그 CDN -->
		<script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
		
		<style type="text/css">
		
			.breadcrumb {
				margin: 0.7rem 0px;
			    background-color: #f1f2f4;
			}
			
			.mb-4{
    			color: #5D5D5D;
    			font-size: 0.83rem;
			}
			
			#head-div{
				margin: 0.5rem 0px;
			}
		
			#head-div > span{
				display: inline-block;
				font-size: 1.8rem;
				font-weight: bold;
			}
			
			#title{
				width: 100%; height: 2.5rem;
				padding-left: 0.7rem;
			}
			
			.ck.ck-editor{
				
			}
			
			.ck-editor__editable{
				min-height: 500px;
			}
			
			.ck-editor__editable > p{
				padding-left: 0.2rem;
				margin: 2px 0px;
			}
			
			.ck-editor__editable > img{
				width: 20px;
			}
			
			#frm > div{
				width: 100%;
				padding: 0.5rem 0px;
			}
			
			#btn-area{
				margin: 0.2rem 0px 0px;
			}

			#write-cancle-btn{
				float: left;
				font-weight: bold;
				font-size: 0.8rem;
				border: 1px solid #D5D5D5;
				border-radius: 5px;
				padding: 0.55rem 0.6rem;
				background-color: white;
			}

			#write-btn{
				float: right;
				font-weight: bold;
				font-size: 0.8rem;
				border: 1px solid #f1f2f4;
				border-radius: 5px;
				padding: 0.5rem 1.2rem;
				background-color: #f1f2f4;
			}
			
			.kboard-content .content-view img{
				display: inline; margin: 0;
				width: auto;height: auto;
				vertical-align: middle;
				max-width: 100%;
			}
			
		</style>
		
	</head>
	
	<body class="sb-nav-fixed">
	
		<c:import url="../template/navigation.jsp"></c:import>
		<div id="layoutSidenav">
		
			<c:import url="../template/sidebar.jsp"></c:import>
			<div id="layoutSidenav_content">
			
				<main>
				
					<div id="head-div" class="container-fluid">
						<span>공지사항 작성</span>
						<div class="breadcrumb mb-4">
							전 매장 직원들에게 전달되는 공지사항입니다. 게시 전 내용 상 오류가 없는지 다시 한 번 더 체크해주십시오.
						</div>
						<hr>
					</div>
					
					<div class="container-fluid">
						<form id="frm" action="./noticeWrite" method="post">
							<input type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
							<textarea id="editor" name="contents"></textarea>
							<div id="btn-area">
								<a href="./noticeList"><span id="write-cancle-btn">글쓰기 취소</span></a>
								<div><input type="submit" value="글쓰기" id="write-btn"></div>
							</div>
						</form>
						
					</div>
					
				</main>
			
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>
		
		</div>

		<script type="text/javascript">
			
			ClassicEditor
				.create( document.querySelector( '#editor' ), {
					
					cloudServices: {
						tokenUrl:'https://76267.cke-cs.com/token/dev/6719375c5d104692f3e9cb1171b661604a20f095fb69b9b07bd5577daa53',
						uploadUrl:'https://76267.cke-cs.com/easyimage/upload/'
					}
			        
				} )
		        .catch( error => {
		            console.error( error );
		        } );

		</script>
		<c:import url="../template/javascript.jsp"></c:import>
		
	</body>
	
</html>