<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <meta name="format-detection" content="telphone=no">   

   <title>Starbucks Coffee Korea</title>

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css?v=1" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/myPage/modifyPW.css" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
	<!-- Header -->
   <c:import url="../common/header.jsp"></c:import>
   <!-- Header End -->

	<!-- 내용 -->
	<div class="container">
		<div class="modify_pw_wrap">
			<div class="modify_pw_inner">
				<strong class="modify_pw_ttl">비밀번호 변경</strong>
			<form action="./" method="post">
			<div class="modify_form">
			
				<figure class="modify_form_sally">
					<img src="${pageContext.request.contextPath}/resources/images/myPage/icon_find_sally.png" alt="비밀번호변경" >
				</figure>
				<div class="modify_form_txt">
					<p class="result_txt"><span class="result_txt_sub">
					새로운 비밀번호로 변경 하실 수 있습니다.</span></p>
				</div>
				<div class="input_box">
					<strong>아이디</strong>
					<p class="nofix_name">${myInfo.id} </p>
					<input type="hidden" name="user_id" id="user_id" value="id">
				</div>
				<div class="input_box">
					<strong>현재 비밀번호</strong>
					<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호를 입력해 주세요">
				</div>
				<div class="input_box bd_none">
					<strong>새 비밀번호</strong>
					<input type="password" name="user_pw1" id="user_pw_new" maxlength="20" placeholder="영문, 숫자 혼합하여 10~20자리 이내로 입력하세요.">
					<input type="password" name="user_pw2" id="user_pw_new_chk" maxlength="20" placeholder="비밀번호를 다시 한번 입력해 주세요." class="mt10">
				</div>
				
			</div>	
				<p class="btn_modify">
					<a class="btn_ok" href="#">확인 </a>
				</p>
			</form>
			</div>
		</div> 
	
	
	</div>
	<!-- 내용 끝 -->
   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->
   
   <script type="text/javascript">
   		//if pw1==pw2 일치하면 pw1을 파라미터로 db로 보내서 insert해주고 myIndex로 redirect해주면됨.
   		//비번 두개 같은지 체크, 3칸 중 하나라도 비어있으면 문구뜨는거 처리. 
   </script>
   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
</body>
</html>