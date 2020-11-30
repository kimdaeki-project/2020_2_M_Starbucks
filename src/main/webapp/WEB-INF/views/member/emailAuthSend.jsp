<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">
	
	<title>Starbucks Coffee Korea</title>
	
	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/member/emailAuth.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
	
</head>
<body>
	<div id="wrap">

	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->

	<!-- 내용 -->
	<div id="container">
		<div class="find_mem_wrap mem_wrap2">
			<div class="find_mem_inner">
				<form id="frmJoin" action="./emailAuthSend" method="post">
					<fieldset>
						<legend class="hid">회원가입 이메일 인증 폼</legend>
						<strong class="find_mem_ttl">이메일인증</strong>

						<section class="joinform">
							<div class="find_mem_sally"></div>
							<p class="find_form_txt">인증가능한 이메일을 입력해 주세요.</p>
							<div class="form_input_box email_chk">
								<label for="email" class ="hid">아이디</label>
								<input type="email" name="email" id="email" placeholder="이메일" />
							</div>
							<input type="hidden" name="authState" id="authState" value="0" />
						</section>
						<p class="btn_email_auth">
							<button type="submit" class="auth_send" name="submit">이메일 인증 발송</button>
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
	</div>

	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
	<script type="text/javascript">
		$(".auth_send").click(function() {
			var email = $("#email").val();
			if(email == '') {
				alert('인증할 이메일을 입력해주세요.');
				return false;
			} else {
				$.post("./memberEmailCheck", {email:email}, function(data) {
					data = data.trim();
					console.log(data);
					if(data > 0) {
						alert("이미 가입된 회원의 이메일입니다. 로그인 후 이용이 가능합니다.");
						location.href="./memberLogin";
					} else {

						result = "이메일이 발송되었습니다. 인증번호를 확인 후 입력해주세요.";
						alert(result);

						alert("이메일이 발송되었습니다. 인증번호를 확인 후 입력해주세요.");

						//location.href="./emailAuth";
					}
				});
			}
		});
	</script>
</body>
</html>