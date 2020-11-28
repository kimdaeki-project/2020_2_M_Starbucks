<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telphone=no">	
	
		<title>Starbucks Korea :: 결제결과</title>
	
		<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/myPage/faqList.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/menu/menuList.css" rel="stylesheet" type="text/css">	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		
		<style type="text/css">
			.container{
				width: 78%;
				background-color: yellow;
			}
			#pay-result-contetns-area{
				margin-top: 2rem;
				padding: 1rem;
			}
			#contents-header{
				border-bottom: 1px solid #EAEAEA;
				justify-content: space-between;
			}
			
			#contents-header > div{
				display: inline-block;
			}
			
			#menu-table{
				float: right;
			}
			
			#menu-table-tr > td{
				font-size: 1.3rem;
				padding: 0.2rem 0.5rem;
			}

		</style>
			
	</head>
	
	<body>
	
		<c:import url="../../common/header.jsp"></c:import>
   		
   		<main>
   		
   			<div class="container" id="pay-result-contetns-area">
   			
   				<div>
 					<div id="contents-header">
						<div>주문/결제</div>
							<div id="menu-table">
								<table>
									<tr id="menu-table-tr">
										<td id="order-and-pay">주문결제</td>
										<td> ▷ </td>
										<td id="order-success">주문완료</td>
									</tr>
								</table>
							</div>
						</div>
	   				<div id="result-contents">
	   				
	   					<table>
	   						<tr>
	   							<td>주문번호</td>
	   							<td>[주문번호 출력되는 공간]</td>
	   						</tr>
	   						<tr>
	   							<td></td>
	   						</tr>
	   					</table>
	   				</div>
	   				
   				</div>
   			</div>
   		
   		</main>
		
		<script type="text/javascript">


		</script>
		
		<script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
		
	</body>
	
</html>