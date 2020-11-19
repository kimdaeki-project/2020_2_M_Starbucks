<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 직원 로그인</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/adminLogin.css">
	</head>
	
	<body>
		<div id="logo">
			<a href="${pageContext.request.contextPath}/"><img alt="" src="/sw4/resources/images/common/favicon.ico"></a>
		</div>
		<div class="login-area">
			<div class="wrapper">
				<div id="login-wrapper">
					<div id="login-wrapper-info">
						<span><span id="sb-text">스타벅스</span> 직원전용 로그인 페이지입니다.</span>
					</div>
					<hr>
					<div id="login-box">
						<div id="login-area">
							<div>
								<form id="login-frm" action="${pageContext.request.contextPath}/admin/adminLogin" method="POST">
									<div id="enter-area">
										<input class="text-area" id="id-txt" type="text" name="id" placeholder="아이디를 입력하세요.">
										<input class="text-area" id="pw-txt" type="password" name="pw" placeholder="비밀번호를 입력하세요.">
										<input class="login-btn" type="submit" name="login-btn" id="login-btn" value="로그인">
									</div>
								</form>
							</div>
							
							<div class="remember-info">
								<div>
									<div id="rememberChkFun">
										<input type="checkbox" name="remember" id="remember">
										<span>아이디 기억하기</span>
									</div>
									<div class="find">
										<div class="remember-info find" id="find-pw">
											<span>비밀번호 찾기</span>
										</div>
										<div class="remember-info find" id="find-id">
											<span>아이디 찾기</span>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	  
		<c:import url="../template/javascript.jsp"></c:import>
		<script type="text/javascript">
			var chk = false;
			$("#rememberChkFun").click(function(){
				if(chk == false){
					chk = true;
				} else {
					chk = false;
				}
				$("#remember").attr("checked",chk);
			})
			$("#find-id").click(function(){
				alert("아이디 찾기 준비 중입니다.")
			})
			$("#find-pw").click(function(){
				alert("비밀번호 찾기 준비 중입니다.")
			})
		</script>
		
	</body>

</html>
</html>